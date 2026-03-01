import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_args.dart';
import 'job_copy.dart';
import 'job_extract.dart';
import 'job_load.dart';
import 'job_query.dart';
import 'job_status.dart';

/// Jobs are actions that BigQuery runs on your behalf to load data, export data, query data, or copy data.
/// Once a BigQuery job is created, it cannot be changed or deleted.
///
///
/// To get more information about Job, see:
///
/// * [API documentation](https://cloud.google.com/bigquery/docs/reference/rest/v2/jobs)
/// * How-to Guides
/// * [BigQuery Jobs Intro](https://cloud.google.com/bigquery/docs/jobs-overview)
///
/// ## Example Usage
///
/// ### Bigquery Job Query
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const bar = new gcp.bigquery.Dataset("bar", {
///     datasetId: "job_query_dataset",
///     friendlyName: "test",
///     description: "This is a test description",
///     location: "US",
/// });
/// const foo = new gcp.bigquery.Table("foo", {
///     deletionProtection: false,
///     datasetId: bar.datasetId,
///     tableId: "job_query_table",
/// });
/// const job = new gcp.bigquery.Job("job", {
///     jobId: "job_query",
///     labels: {
///         "example-label": "example-value",
///     },
///     query: {
///         query: "SELECT state FROM [lookerdata:cdc.project_tycho_reports]",
///         destinationTable: {
///             projectId: foo.project,
///             datasetId: foo.datasetId,
///             tableId: foo.tableId,
///         },
///         allowLargeResults: true,
///         flattenResults: true,
///         scriptOptions: {
///             keyResultStatement: "LAST",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// bar = gcp.bigquery.Dataset("bar",
///     dataset_id="job_query_dataset",
///     friendly_name="test",
///     description="This is a test description",
///     location="US")
/// foo = gcp.bigquery.Table("foo",
///     deletion_protection=False,
///     dataset_id=bar.dataset_id,
///     table_id="job_query_table")
/// job = gcp.bigquery.Job("job",
///     job_id="job_query",
///     labels={
///         "example-label": "example-value",
///     },
///     query={
///         "query": "SELECT state FROM [lookerdata:cdc.project_tycho_reports]",
///         "destination_table": {
///             "project_id": foo.project,
///             "dataset_id": foo.dataset_id,
///             "table_id": foo.table_id,
///         },
///         "allow_large_results": True,
///         "flatten_results": True,
///         "script_options": {
///             "key_result_statement": "LAST",
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var bar = new Gcp.BigQuery.Dataset("bar", new()
///     {
///         DatasetId = "job_query_dataset",
///         FriendlyName = "test",
///         Description = "This is a test description",
///         Location = "US",
///     });
///
///     var foo = new Gcp.BigQuery.Table("foo", new()
///     {
///         DeletionProtection = false,
///         DatasetId = bar.DatasetId,
///         TableId = "job_query_table",
///     });
///
///     var job = new Gcp.BigQuery.Job("job", new()
///     {
///         JobId = "job_query",
///         Labels =
///         {
///             { "example-label", "example-value" },
///         },
///         Query = new Gcp.BigQuery.Inputs.JobQueryArgs
///         {
///             Query = "SELECT state FROM [lookerdata:cdc.project_tycho_reports]",
///             DestinationTable = new Gcp.BigQuery.Inputs.JobQueryDestinationTableArgs
///             {
///                 ProjectId = foo.Project,
///                 DatasetId = foo.DatasetId,
///                 TableId = foo.TableId,
///             },
///             AllowLargeResults = true,
///             FlattenResults = true,
///             ScriptOptions = new Gcp.BigQuery.Inputs.JobQueryScriptOptionsArgs
///             {
///                 KeyResultStatement = "LAST",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		bar, err := bigquery.NewDataset(ctx, "bar", &bigquery.DatasetArgs{
/// 			DatasetId:    pulumi.String("job_query_dataset"),
/// 			FriendlyName: pulumi.String("test"),
/// 			Description:  pulumi.String("This is a test description"),
/// 			Location:     pulumi.String("US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		foo, err := bigquery.NewTable(ctx, "foo", &bigquery.TableArgs{
/// 			DeletionProtection: pulumi.Bool(false),
/// 			DatasetId:          bar.DatasetId,
/// 			TableId:            pulumi.String("job_query_table"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigquery.NewJob(ctx, "job", &bigquery.JobArgs{
/// 			JobId: pulumi.String("job_query"),
/// 			Labels: pulumi.StringMap{
/// 				"example-label": pulumi.String("example-value"),
/// 			},
/// 			Query: &bigquery.JobQueryArgs{
/// 				Query: pulumi.String("SELECT state FROM [lookerdata:cdc.project_tycho_reports]"),
/// 				DestinationTable: &bigquery.JobQueryDestinationTableArgs{
/// 					ProjectId: foo.Project,
/// 					DatasetId: foo.DatasetId,
/// 					TableId:   foo.TableId,
/// 				},
/// 				AllowLargeResults: pulumi.Bool(true),
/// 				FlattenResults:    pulumi.Bool(true),
/// 				ScriptOptions: &bigquery.JobQueryScriptOptionsArgs{
/// 					KeyResultStatement: pulumi.String("LAST"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.bigquery.Table;
/// import com.pulumi.gcp.bigquery.TableArgs;
/// import com.pulumi.gcp.bigquery.Job;
/// import com.pulumi.gcp.bigquery.JobArgs;
/// import com.pulumi.gcp.bigquery.inputs.JobQueryArgs;
/// import com.pulumi.gcp.bigquery.inputs.JobQueryDestinationTableArgs;
/// import com.pulumi.gcp.bigquery.inputs.JobQueryScriptOptionsArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var bar = new Dataset("bar", DatasetArgs.builder()
///             .datasetId("job_query_dataset")
///             .friendlyName("test")
///             .description("This is a test description")
///             .location("US")
///             .build());
///
///         var foo = new Table("foo", TableArgs.builder()
///             .deletionProtection(false)
///             .datasetId(bar.datasetId())
///             .tableId("job_query_table")
///             .build());
///
///         var job = new Job("job", JobArgs.builder()
///             .jobId("job_query")
///             .labels(Map.of("example-label", "example-value"))
///             .query(JobQueryArgs.builder()
///                 .query("SELECT state FROM [lookerdata:cdc.project_tycho_reports]")
///                 .destinationTable(JobQueryDestinationTableArgs.builder()
///                     .projectId(foo.project())
///                     .datasetId(foo.datasetId())
///                     .tableId(foo.tableId())
///                     .build())
///                 .allowLargeResults(true)
///                 .flattenResults(true)
///                 .scriptOptions(JobQueryScriptOptionsArgs.builder()
///                     .keyResultStatement("LAST")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: gcp:bigquery:Table
///     properties:
///       deletionProtection: false
///       datasetId: ${bar.datasetId}
///       tableId: job_query_table
///   bar:
///     type: gcp:bigquery:Dataset
///     properties:
///       datasetId: job_query_dataset
///       friendlyName: test
///       description: This is a test description
///       location: US
///   job:
///     type: gcp:bigquery:Job
///     properties:
///       jobId: job_query
///       labels:
///         example-label: example-value
///       query:
///         query: SELECT state FROM [lookerdata:cdc.project_tycho_reports]
///         destinationTable:
///           projectId: ${foo.project}
///           datasetId: ${foo.datasetId}
///           tableId: ${foo.tableId}
///         allowLargeResults: true
///         flattenResults: true
///         scriptOptions:
///           keyResultStatement: LAST
/// ```
///
/// ### Bigquery Job Query Table Reference
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const bar = new gcp.bigquery.Dataset("bar", {
///     datasetId: "job_query_dataset",
///     friendlyName: "test",
///     description: "This is a test description",
///     location: "US",
/// });
/// const foo = new gcp.bigquery.Table("foo", {
///     deletionProtection: false,
///     datasetId: bar.datasetId,
///     tableId: "job_query_table",
/// });
/// const job = new gcp.bigquery.Job("job", {
///     jobId: "job_query",
///     labels: {
///         "example-label": "example-value",
///     },
///     query: {
///         query: "SELECT state FROM [lookerdata:cdc.project_tycho_reports]",
///         destinationTable: {
///             tableId: foo.id,
///         },
///         defaultDataset: {
///             datasetId: bar.id,
///         },
///         allowLargeResults: true,
///         flattenResults: true,
///         scriptOptions: {
///             keyResultStatement: "LAST",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// bar = gcp.bigquery.Dataset("bar",
///     dataset_id="job_query_dataset",
///     friendly_name="test",
///     description="This is a test description",
///     location="US")
/// foo = gcp.bigquery.Table("foo",
///     deletion_protection=False,
///     dataset_id=bar.dataset_id,
///     table_id="job_query_table")
/// job = gcp.bigquery.Job("job",
///     job_id="job_query",
///     labels={
///         "example-label": "example-value",
///     },
///     query={
///         "query": "SELECT state FROM [lookerdata:cdc.project_tycho_reports]",
///         "destination_table": {
///             "table_id": foo.id,
///         },
///         "default_dataset": {
///             "dataset_id": bar.id,
///         },
///         "allow_large_results": True,
///         "flatten_results": True,
///         "script_options": {
///             "key_result_statement": "LAST",
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var bar = new Gcp.BigQuery.Dataset("bar", new()
///     {
///         DatasetId = "job_query_dataset",
///         FriendlyName = "test",
///         Description = "This is a test description",
///         Location = "US",
///     });
///
///     var foo = new Gcp.BigQuery.Table("foo", new()
///     {
///         DeletionProtection = false,
///         DatasetId = bar.DatasetId,
///         TableId = "job_query_table",
///     });
///
///     var job = new Gcp.BigQuery.Job("job", new()
///     {
///         JobId = "job_query",
///         Labels =
///         {
///             { "example-label", "example-value" },
///         },
///         Query = new Gcp.BigQuery.Inputs.JobQueryArgs
///         {
///             Query = "SELECT state FROM [lookerdata:cdc.project_tycho_reports]",
///             DestinationTable = new Gcp.BigQuery.Inputs.JobQueryDestinationTableArgs
///             {
///                 TableId = foo.Id,
///             },
///             DefaultDataset = new Gcp.BigQuery.Inputs.JobQueryDefaultDatasetArgs
///             {
///                 DatasetId = bar.Id,
///             },
///             AllowLargeResults = true,
///             FlattenResults = true,
///             ScriptOptions = new Gcp.BigQuery.Inputs.JobQueryScriptOptionsArgs
///             {
///                 KeyResultStatement = "LAST",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		bar, err := bigquery.NewDataset(ctx, "bar", &bigquery.DatasetArgs{
/// 			DatasetId:    pulumi.String("job_query_dataset"),
/// 			FriendlyName: pulumi.String("test"),
/// 			Description:  pulumi.String("This is a test description"),
/// 			Location:     pulumi.String("US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		foo, err := bigquery.NewTable(ctx, "foo", &bigquery.TableArgs{
/// 			DeletionProtection: pulumi.Bool(false),
/// 			DatasetId:          bar.DatasetId,
/// 			TableId:            pulumi.String("job_query_table"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigquery.NewJob(ctx, "job", &bigquery.JobArgs{
/// 			JobId: pulumi.String("job_query"),
/// 			Labels: pulumi.StringMap{
/// 				"example-label": pulumi.String("example-value"),
/// 			},
/// 			Query: &bigquery.JobQueryArgs{
/// 				Query: pulumi.String("SELECT state FROM [lookerdata:cdc.project_tycho_reports]"),
/// 				DestinationTable: &bigquery.JobQueryDestinationTableArgs{
/// 					TableId: foo.ID(),
/// 				},
/// 				DefaultDataset: &bigquery.JobQueryDefaultDatasetArgs{
/// 					DatasetId: bar.ID(),
/// 				},
/// 				AllowLargeResults: pulumi.Bool(true),
/// 				FlattenResults:    pulumi.Bool(true),
/// 				ScriptOptions: &bigquery.JobQueryScriptOptionsArgs{
/// 					KeyResultStatement: pulumi.String("LAST"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.bigquery.Table;
/// import com.pulumi.gcp.bigquery.TableArgs;
/// import com.pulumi.gcp.bigquery.Job;
/// import com.pulumi.gcp.bigquery.JobArgs;
/// import com.pulumi.gcp.bigquery.inputs.JobQueryArgs;
/// import com.pulumi.gcp.bigquery.inputs.JobQueryDestinationTableArgs;
/// import com.pulumi.gcp.bigquery.inputs.JobQueryDefaultDatasetArgs;
/// import com.pulumi.gcp.bigquery.inputs.JobQueryScriptOptionsArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var bar = new Dataset("bar", DatasetArgs.builder()
///             .datasetId("job_query_dataset")
///             .friendlyName("test")
///             .description("This is a test description")
///             .location("US")
///             .build());
///
///         var foo = new Table("foo", TableArgs.builder()
///             .deletionProtection(false)
///             .datasetId(bar.datasetId())
///             .tableId("job_query_table")
///             .build());
///
///         var job = new Job("job", JobArgs.builder()
///             .jobId("job_query")
///             .labels(Map.of("example-label", "example-value"))
///             .query(JobQueryArgs.builder()
///                 .query("SELECT state FROM [lookerdata:cdc.project_tycho_reports]")
///                 .destinationTable(JobQueryDestinationTableArgs.builder()
///                     .tableId(foo.id())
///                     .build())
///                 .defaultDataset(JobQueryDefaultDatasetArgs.builder()
///                     .datasetId(bar.id())
///                     .build())
///                 .allowLargeResults(true)
///                 .flattenResults(true)
///                 .scriptOptions(JobQueryScriptOptionsArgs.builder()
///                     .keyResultStatement("LAST")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: gcp:bigquery:Table
///     properties:
///       deletionProtection: false
///       datasetId: ${bar.datasetId}
///       tableId: job_query_table
///   bar:
///     type: gcp:bigquery:Dataset
///     properties:
///       datasetId: job_query_dataset
///       friendlyName: test
///       description: This is a test description
///       location: US
///   job:
///     type: gcp:bigquery:Job
///     properties:
///       jobId: job_query
///       labels:
///         example-label: example-value
///       query:
///         query: SELECT state FROM [lookerdata:cdc.project_tycho_reports]
///         destinationTable:
///           tableId: ${foo.id}
///         defaultDataset:
///           datasetId: ${bar.id}
///         allowLargeResults: true
///         flattenResults: true
///         scriptOptions:
///           keyResultStatement: LAST
/// ```
///
/// ### Bigquery Job Load
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const bar = new gcp.bigquery.Dataset("bar", {
///     datasetId: "job_load_dataset",
///     friendlyName: "test",
///     description: "This is a test description",
///     location: "US",
/// });
/// const foo = new gcp.bigquery.Table("foo", {
///     deletionProtection: false,
///     datasetId: bar.datasetId,
///     tableId: "job_load_table",
/// });
/// const job = new gcp.bigquery.Job("job", {
///     jobId: "job_load",
///     labels: {
///         my_job: "load",
///     },
///     load: {
///         sourceUris: ["gs://cloud-samples-data/bigquery/us-states/us-states-by-date.csv"],
///         destinationTable: {
///             projectId: foo.project,
///             datasetId: foo.datasetId,
///             tableId: foo.tableId,
///         },
///         skipLeadingRows: 1,
///         schemaUpdateOptions: [
///             "ALLOW_FIELD_RELAXATION",
///             "ALLOW_FIELD_ADDITION",
///         ],
///         writeDisposition: "WRITE_APPEND",
///         autodetect: true,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// bar = gcp.bigquery.Dataset("bar",
///     dataset_id="job_load_dataset",
///     friendly_name="test",
///     description="This is a test description",
///     location="US")
/// foo = gcp.bigquery.Table("foo",
///     deletion_protection=False,
///     dataset_id=bar.dataset_id,
///     table_id="job_load_table")
/// job = gcp.bigquery.Job("job",
///     job_id="job_load",
///     labels={
///         "my_job": "load",
///     },
///     load={
///         "source_uris": ["gs://cloud-samples-data/bigquery/us-states/us-states-by-date.csv"],
///         "destination_table": {
///             "project_id": foo.project,
///             "dataset_id": foo.dataset_id,
///             "table_id": foo.table_id,
///         },
///         "skip_leading_rows": 1,
///         "schema_update_options": [
///             "ALLOW_FIELD_RELAXATION",
///             "ALLOW_FIELD_ADDITION",
///         ],
///         "write_disposition": "WRITE_APPEND",
///         "autodetect": True,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var bar = new Gcp.BigQuery.Dataset("bar", new()
///     {
///         DatasetId = "job_load_dataset",
///         FriendlyName = "test",
///         Description = "This is a test description",
///         Location = "US",
///     });
///
///     var foo = new Gcp.BigQuery.Table("foo", new()
///     {
///         DeletionProtection = false,
///         DatasetId = bar.DatasetId,
///         TableId = "job_load_table",
///     });
///
///     var job = new Gcp.BigQuery.Job("job", new()
///     {
///         JobId = "job_load",
///         Labels =
///         {
///             { "my_job", "load" },
///         },
///         Load = new Gcp.BigQuery.Inputs.JobLoadArgs
///         {
///             SourceUris = new[]
///             {
///                 "gs://cloud-samples-data/bigquery/us-states/us-states-by-date.csv",
///             },
///             DestinationTable = new Gcp.BigQuery.Inputs.JobLoadDestinationTableArgs
///             {
///                 ProjectId = foo.Project,
///                 DatasetId = foo.DatasetId,
///                 TableId = foo.TableId,
///             },
///             SkipLeadingRows = 1,
///             SchemaUpdateOptions = new[]
///             {
///                 "ALLOW_FIELD_RELAXATION",
///                 "ALLOW_FIELD_ADDITION",
///             },
///             WriteDisposition = "WRITE_APPEND",
///             Autodetect = true,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		bar, err := bigquery.NewDataset(ctx, "bar", &bigquery.DatasetArgs{
/// 			DatasetId:    pulumi.String("job_load_dataset"),
/// 			FriendlyName: pulumi.String("test"),
/// 			Description:  pulumi.String("This is a test description"),
/// 			Location:     pulumi.String("US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		foo, err := bigquery.NewTable(ctx, "foo", &bigquery.TableArgs{
/// 			DeletionProtection: pulumi.Bool(false),
/// 			DatasetId:          bar.DatasetId,
/// 			TableId:            pulumi.String("job_load_table"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigquery.NewJob(ctx, "job", &bigquery.JobArgs{
/// 			JobId: pulumi.String("job_load"),
/// 			Labels: pulumi.StringMap{
/// 				"my_job": pulumi.String("load"),
/// 			},
/// 			Load: &bigquery.JobLoadArgs{
/// 				SourceUris: pulumi.StringArray{
/// 					pulumi.String("gs://cloud-samples-data/bigquery/us-states/us-states-by-date.csv"),
/// 				},
/// 				DestinationTable: &bigquery.JobLoadDestinationTableArgs{
/// 					ProjectId: foo.Project,
/// 					DatasetId: foo.DatasetId,
/// 					TableId:   foo.TableId,
/// 				},
/// 				SkipLeadingRows: pulumi.Int(1),
/// 				SchemaUpdateOptions: pulumi.StringArray{
/// 					pulumi.String("ALLOW_FIELD_RELAXATION"),
/// 					pulumi.String("ALLOW_FIELD_ADDITION"),
/// 				},
/// 				WriteDisposition: pulumi.String("WRITE_APPEND"),
/// 				Autodetect:       pulumi.Bool(true),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.bigquery.Table;
/// import com.pulumi.gcp.bigquery.TableArgs;
/// import com.pulumi.gcp.bigquery.Job;
/// import com.pulumi.gcp.bigquery.JobArgs;
/// import com.pulumi.gcp.bigquery.inputs.JobLoadArgs;
/// import com.pulumi.gcp.bigquery.inputs.JobLoadDestinationTableArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var bar = new Dataset("bar", DatasetArgs.builder()
///             .datasetId("job_load_dataset")
///             .friendlyName("test")
///             .description("This is a test description")
///             .location("US")
///             .build());
///
///         var foo = new Table("foo", TableArgs.builder()
///             .deletionProtection(false)
///             .datasetId(bar.datasetId())
///             .tableId("job_load_table")
///             .build());
///
///         var job = new Job("job", JobArgs.builder()
///             .jobId("job_load")
///             .labels(Map.of("my_job", "load"))
///             .load(JobLoadArgs.builder()
///                 .sourceUris("gs://cloud-samples-data/bigquery/us-states/us-states-by-date.csv")
///                 .destinationTable(JobLoadDestinationTableArgs.builder()
///                     .projectId(foo.project())
///                     .datasetId(foo.datasetId())
///                     .tableId(foo.tableId())
///                     .build())
///                 .skipLeadingRows(1)
///                 .schemaUpdateOptions(
///                     "ALLOW_FIELD_RELAXATION",
///                     "ALLOW_FIELD_ADDITION")
///                 .writeDisposition("WRITE_APPEND")
///                 .autodetect(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: gcp:bigquery:Table
///     properties:
///       deletionProtection: false
///       datasetId: ${bar.datasetId}
///       tableId: job_load_table
///   bar:
///     type: gcp:bigquery:Dataset
///     properties:
///       datasetId: job_load_dataset
///       friendlyName: test
///       description: This is a test description
///       location: US
///   job:
///     type: gcp:bigquery:Job
///     properties:
///       jobId: job_load
///       labels:
///         my_job: load
///       load:
///         sourceUris:
///           - gs://cloud-samples-data/bigquery/us-states/us-states-by-date.csv
///         destinationTable:
///           projectId: ${foo.project}
///           datasetId: ${foo.datasetId}
///           tableId: ${foo.tableId}
///         skipLeadingRows: 1
///         schemaUpdateOptions:
///           - ALLOW_FIELD_RELAXATION
///           - ALLOW_FIELD_ADDITION
///         writeDisposition: WRITE_APPEND
///         autodetect: true
/// ```
///
/// ### Bigquery Job Load Geojson
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = "my-project-name";
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: `${project}-bq-geojson`,
///     location: "US",
///     uniformBucketLevelAccess: true,
/// });
/// const object = new gcp.storage.BucketObject("object", {
///     name: "geojson-data.jsonl",
///     bucket: bucket.name,
///     content: `{\\"type\\":\\"Feature\\",\\"properties\\":{\\"continent\\":\\"Europe\\",\\"region\\":\\"Scandinavia\\"},\\"geometry\\":{\\"type\\":\\"Polygon\\",\\"coordinates\\":[[[-30.94,53.33],[33.05,53.33],[33.05,71.86],[-30.94,71.86],[-30.94,53.33]]]}}
/// {\\"type\\":\\"Feature\\",\\"properties\\":{\\"continent\\":\\"Africa\\",\\"region\\":\\"West Africa\\"},\\"geometry\\":{\\"type\\":\\"Polygon\\",\\"coordinates\\":[[[-23.91,0],[11.95,0],[11.95,18.98],[-23.91,18.98],[-23.91,0]]]}}
/// `,
/// });
/// const bar = new gcp.bigquery.Dataset("bar", {
///     datasetId: "job_load_dataset",
///     friendlyName: "test",
///     description: "This is a test description",
///     location: "US",
/// });
/// const foo = new gcp.bigquery.Table("foo", {
///     deletionProtection: false,
///     datasetId: bar.datasetId,
///     tableId: "job_load_table",
/// });
/// const job = new gcp.bigquery.Job("job", {
///     jobId: "job_load",
///     labels: {
///         my_job: "load",
///     },
///     load: {
///         sourceUris: [pulumi.interpolate`gs://${object.bucket}/${object.name}`],
///         destinationTable: {
///             projectId: foo.project,
///             datasetId: foo.datasetId,
///             tableId: foo.tableId,
///         },
///         writeDisposition: "WRITE_TRUNCATE",
///         autodetect: true,
///         sourceFormat: "NEWLINE_DELIMITED_JSON",
///         jsonExtension: "GEOJSON",
///     },
/// }, {
///     dependsOn: [object],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = "my-project-name"
/// bucket = gcp.storage.Bucket("bucket",
///     name=f"{project}-bq-geojson",
///     location="US",
///     uniform_bucket_level_access=True)
/// object = gcp.storage.BucketObject("object",
///     name="geojson-data.jsonl",
///     bucket=bucket.name,
///     content="""{\"type\":\"Feature\",\"properties\":{\"continent\":\"Europe\",\"region\":\"Scandinavia\"},\"geometry\":{\"type\":\"Polygon\",\"coordinates\":[[[-30.94,53.33],[33.05,53.33],[33.05,71.86],[-30.94,71.86],[-30.94,53.33]]]}}
/// {\"type\":\"Feature\",\"properties\":{\"continent\":\"Africa\",\"region\":\"West Africa\"},\"geometry\":{\"type\":\"Polygon\",\"coordinates\":[[[-23.91,0],[11.95,0],[11.95,18.98],[-23.91,18.98],[-23.91,0]]]}}
/// """)
/// bar = gcp.bigquery.Dataset("bar",
///     dataset_id="job_load_dataset",
///     friendly_name="test",
///     description="This is a test description",
///     location="US")
/// foo = gcp.bigquery.Table("foo",
///     deletion_protection=False,
///     dataset_id=bar.dataset_id,
///     table_id="job_load_table")
/// job = gcp.bigquery.Job("job",
///     job_id="job_load",
///     labels={
///         "my_job": "load",
///     },
///     load={
///         "source_uris": [pulumi.Output.all(
///             bucket=object.bucket,
///             name=object.name
/// ).apply(lambda resolved_outputs: f"gs://{resolved_outputs['bucket']}/{resolved_outputs['name']}")
/// ],
///         "destination_table": {
///             "project_id": foo.project,
///             "dataset_id": foo.dataset_id,
///             "table_id": foo.table_id,
///         },
///         "write_disposition": "WRITE_TRUNCATE",
///         "autodetect": True,
///         "source_format": "NEWLINE_DELIMITED_JSON",
///         "json_extension": "GEOJSON",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[object]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = "my-project-name";
///
///     var bucket = new Gcp.Storage.Bucket("bucket", new()
///     {
///         Name = $"{project}-bq-geojson",
///         Location = "US",
///         UniformBucketLevelAccess = true,
///     });
///
///     var @object = new Gcp.Storage.BucketObject("object", new()
///     {
///         Name = "geojson-data.jsonl",
///         Bucket = bucket.Name,
///         Content = @"{\""type\"":\""Feature\"",\""properties\"":{\""continent\"":\""Europe\"",\""region\"":\""Scandinavia\""},\""geometry\"":{\""type\"":\""Polygon\"",\""coordinates\"":[[[-30.94,53.33],[33.05,53.33],[33.05,71.86],[-30.94,71.86],[-30.94,53.33]]]}}
/// {\""type\"":\""Feature\"",\""properties\"":{\""continent\"":\""Africa\"",\""region\"":\""West Africa\""},\""geometry\"":{\""type\"":\""Polygon\"",\""coordinates\"":[[[-23.91,0],[11.95,0],[11.95,18.98],[-23.91,18.98],[-23.91,0]]]}}
/// ",
///     });
///
///     var bar = new Gcp.BigQuery.Dataset("bar", new()
///     {
///         DatasetId = "job_load_dataset",
///         FriendlyName = "test",
///         Description = "This is a test description",
///         Location = "US",
///     });
///
///     var foo = new Gcp.BigQuery.Table("foo", new()
///     {
///         DeletionProtection = false,
///         DatasetId = bar.DatasetId,
///         TableId = "job_load_table",
///     });
///
///     var job = new Gcp.BigQuery.Job("job", new()
///     {
///         JobId = "job_load",
///         Labels =
///         {
///             { "my_job", "load" },
///         },
///         Load = new Gcp.BigQuery.Inputs.JobLoadArgs
///         {
///             SourceUris = new[]
///             {
///                 Output.Tuple(@object.Bucket, @object.Name).Apply(values =>
///                 {
///                     var bucket = values.Item1;
///                     var name = values.Item2;
///                     return $"gs://{bucket}/{name}";
///                 }),
///             },
///             DestinationTable = new Gcp.BigQuery.Inputs.JobLoadDestinationTableArgs
///             {
///                 ProjectId = foo.Project,
///                 DatasetId = foo.DatasetId,
///                 TableId = foo.TableId,
///             },
///             WriteDisposition = "WRITE_TRUNCATE",
///             Autodetect = true,
///             SourceFormat = "NEWLINE_DELIMITED_JSON",
///             JsonExtension = "GEOJSON",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             @object,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project := "my-project-name"
/// 		bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// 			Name:                     pulumi.Sprintf("%v-bq-geojson", project),
/// 			Location:                 pulumi.String("US"),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		object, err := storage.NewBucketObject(ctx, "object", &storage.BucketObjectArgs{
/// 			Name:    pulumi.String("geojson-data.jsonl"),
/// 			Bucket:  bucket.Name,
/// 			Content: pulumi.String("{\\\"type\\\":\\\"Feature\\\",\\\"properties\\\":{\\\"continent\\\":\\\"Europe\\\",\\\"region\\\":\\\"Scandinavia\\\"},\\\"geometry\\\":{\\\"type\\\":\\\"Polygon\\\",\\\"coordinates\\\":[[[-30.94,53.33],[33.05,53.33],[33.05,71.86],[-30.94,71.86],[-30.94,53.33]]]}}\n{\\\"type\\\":\\\"Feature\\\",\\\"properties\\\":{\\\"continent\\\":\\\"Africa\\\",\\\"region\\\":\\\"West Africa\\\"},\\\"geometry\\\":{\\\"type\\\":\\\"Polygon\\\",\\\"coordinates\\\":[[[-23.91,0],[11.95,0],[11.95,18.98],[-23.91,18.98],[-23.91,0]]]}}\n"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bar, err := bigquery.NewDataset(ctx, "bar", &bigquery.DatasetArgs{
/// 			DatasetId:    pulumi.String("job_load_dataset"),
/// 			FriendlyName: pulumi.String("test"),
/// 			Description:  pulumi.String("This is a test description"),
/// 			Location:     pulumi.String("US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		foo, err := bigquery.NewTable(ctx, "foo", &bigquery.TableArgs{
/// 			DeletionProtection: pulumi.Bool(false),
/// 			DatasetId:          bar.DatasetId,
/// 			TableId:            pulumi.String("job_load_table"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigquery.NewJob(ctx, "job", &bigquery.JobArgs{
/// 			JobId: pulumi.String("job_load"),
/// 			Labels: pulumi.StringMap{
/// 				"my_job": pulumi.String("load"),
/// 			},
/// 			Load: &bigquery.JobLoadArgs{
/// 				SourceUris: pulumi.StringArray{
/// 					pulumi.All(object.Bucket, object.Name).ApplyT(func(_args []interface{}) (string, error) {
/// 						bucket := _args[0].(string)
/// 						name := _args[1].(string)
/// 						return fmt.Sprintf("gs://%v/%v", bucket, name), nil
/// 					}).(pulumi.StringOutput),
/// 				},
/// 				DestinationTable: &bigquery.JobLoadDestinationTableArgs{
/// 					ProjectId: foo.Project,
/// 					DatasetId: foo.DatasetId,
/// 					TableId:   foo.TableId,
/// 				},
/// 				WriteDisposition: pulumi.String("WRITE_TRUNCATE"),
/// 				Autodetect:       pulumi.Bool(true),
/// 				SourceFormat:     pulumi.String("NEWLINE_DELIMITED_JSON"),
/// 				JsonExtension:    pulumi.String("GEOJSON"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			object,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.bigquery.Table;
/// import com.pulumi.gcp.bigquery.TableArgs;
/// import com.pulumi.gcp.bigquery.Job;
/// import com.pulumi.gcp.bigquery.JobArgs;
/// import com.pulumi.gcp.bigquery.inputs.JobLoadArgs;
/// import com.pulumi.gcp.bigquery.inputs.JobLoadDestinationTableArgs;
/// import com.pulumi.resources.CustomResourceOptions;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var project = "my-project-name";
///
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .name(String.format("%s-bq-geojson", project))
///             .location("US")
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         var object = new BucketObject("object", BucketObjectArgs.builder()
///             .name("geojson-data.jsonl")
///             .bucket(bucket.name())
///             .content("""
/// {\"type\":\"Feature\",\"properties\":{\"continent\":\"Europe\",\"region\":\"Scandinavia\"},\"geometry\":{\"type\":\"Polygon\",\"coordinates\":[[[-30.94,53.33],[33.05,53.33],[33.05,71.86],[-30.94,71.86],[-30.94,53.33]]]}}
/// {\"type\":\"Feature\",\"properties\":{\"continent\":\"Africa\",\"region\":\"West Africa\"},\"geometry\":{\"type\":\"Polygon\",\"coordinates\":[[[-23.91,0],[11.95,0],[11.95,18.98],[-23.91,18.98],[-23.91,0]]]}}
///             """)
///             .build());
///
///         var bar = new Dataset("bar", DatasetArgs.builder()
///             .datasetId("job_load_dataset")
///             .friendlyName("test")
///             .description("This is a test description")
///             .location("US")
///             .build());
///
///         var foo = new Table("foo", TableArgs.builder()
///             .deletionProtection(false)
///             .datasetId(bar.datasetId())
///             .tableId("job_load_table")
///             .build());
///
///         var job = new Job("job", JobArgs.builder()
///             .jobId("job_load")
///             .labels(Map.of("my_job", "load"))
///             .load(JobLoadArgs.builder()
///                 .sourceUris(Output.tuple(object.bucket(), object.name()).applyValue(values -> {
///                     var bucket = values.t1;
///                     var name = values.t2;
///                     return String.format("gs://%s/%s", bucket,name);
///                 }))
///                 .destinationTable(JobLoadDestinationTableArgs.builder()
///                     .projectId(foo.project())
///                     .datasetId(foo.datasetId())
///                     .tableId(foo.tableId())
///                     .build())
///                 .writeDisposition("WRITE_TRUNCATE")
///                 .autodetect(true)
///                 .sourceFormat("NEWLINE_DELIMITED_JSON")
///                 .jsonExtension("GEOJSON")
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(object)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: ${project}-bq-geojson
///       location: US
///       uniformBucketLevelAccess: true
///   object:
///     type: gcp:storage:BucketObject
///     properties:
///       name: geojson-data.jsonl
///       bucket: ${bucket.name}
///       content: |
///         {\"type\":\"Feature\",\"properties\":{\"continent\":\"Europe\",\"region\":\"Scandinavia\"},\"geometry\":{\"type\":\"Polygon\",\"coordinates\":[[[-30.94,53.33],[33.05,53.33],[33.05,71.86],[-30.94,71.86],[-30.94,53.33]]]}}
///         {\"type\":\"Feature\",\"properties\":{\"continent\":\"Africa\",\"region\":\"West Africa\"},\"geometry\":{\"type\":\"Polygon\",\"coordinates\":[[[-23.91,0],[11.95,0],[11.95,18.98],[-23.91,18.98],[-23.91,0]]]}}
///   foo:
///     type: gcp:bigquery:Table
///     properties:
///       deletionProtection: false
///       datasetId: ${bar.datasetId}
///       tableId: job_load_table
///   bar:
///     type: gcp:bigquery:Dataset
///     properties:
///       datasetId: job_load_dataset
///       friendlyName: test
///       description: This is a test description
///       location: US
///   job:
///     type: gcp:bigquery:Job
///     properties:
///       jobId: job_load
///       labels:
///         my_job: load
///       load:
///         sourceUris:
///           - gs://${object.bucket}/${object.name}
///         destinationTable:
///           projectId: ${foo.project}
///           datasetId: ${foo.datasetId}
///           tableId: ${foo.tableId}
///         writeDisposition: WRITE_TRUNCATE
///         autodetect: true
///         sourceFormat: NEWLINE_DELIMITED_JSON
///         jsonExtension: GEOJSON
///     options:
///       dependsOn:
///         - ${object}
/// variables:
///   project: my-project-name
/// ```
///
/// ### Bigquery Job Load Parquet
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const test = new gcp.storage.Bucket("test", {
///     name: "job_load_bucket",
///     location: "US",
///     uniformBucketLevelAccess: true,
/// });
/// const testBucketObject = new gcp.storage.BucketObject("test", {
///     name: "job_load_bucket_object",
///     source: new pulumi.asset.FileAsset("./test-fixtures/test.parquet.gzip"),
///     bucket: test.name,
/// });
/// const testDataset = new gcp.bigquery.Dataset("test", {
///     datasetId: "job_load_dataset",
///     friendlyName: "test",
///     description: "This is a test description",
///     location: "US",
/// });
/// const testTable = new gcp.bigquery.Table("test", {
///     deletionProtection: false,
///     tableId: "job_load_table",
///     datasetId: testDataset.datasetId,
/// });
/// const job = new gcp.bigquery.Job("job", {
///     jobId: "job_load",
///     labels: {
///         my_job: "load",
///     },
///     load: {
///         sourceUris: [pulumi.interpolate`gs://${testBucketObject.bucket}/${testBucketObject.name}`],
///         destinationTable: {
///             projectId: testTable.project,
///             datasetId: testTable.datasetId,
///             tableId: testTable.tableId,
///         },
///         schemaUpdateOptions: [
///             "ALLOW_FIELD_RELAXATION",
///             "ALLOW_FIELD_ADDITION",
///         ],
///         writeDisposition: "WRITE_APPEND",
///         sourceFormat: "PARQUET",
///         autodetect: true,
///         parquetOptions: {
///             enumAsString: true,
///             enableListInference: true,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// test = gcp.storage.Bucket("test",
///     name="job_load_bucket",
///     location="US",
///     uniform_bucket_level_access=True)
/// test_bucket_object = gcp.storage.BucketObject("test",
///     name="job_load_bucket_object",
///     source=pulumi.FileAsset("./test-fixtures/test.parquet.gzip"),
///     bucket=test.name)
/// test_dataset = gcp.bigquery.Dataset("test",
///     dataset_id="job_load_dataset",
///     friendly_name="test",
///     description="This is a test description",
///     location="US")
/// test_table = gcp.bigquery.Table("test",
///     deletion_protection=False,
///     table_id="job_load_table",
///     dataset_id=test_dataset.dataset_id)
/// job = gcp.bigquery.Job("job",
///     job_id="job_load",
///     labels={
///         "my_job": "load",
///     },
///     load={
///         "source_uris": [pulumi.Output.all(
///             bucket=test_bucket_object.bucket,
///             name=test_bucket_object.name
/// ).apply(lambda resolved_outputs: f"gs://{resolved_outputs['bucket']}/{resolved_outputs['name']}")
/// ],
///         "destination_table": {
///             "project_id": test_table.project,
///             "dataset_id": test_table.dataset_id,
///             "table_id": test_table.table_id,
///         },
///         "schema_update_options": [
///             "ALLOW_FIELD_RELAXATION",
///             "ALLOW_FIELD_ADDITION",
///         ],
///         "write_disposition": "WRITE_APPEND",
///         "source_format": "PARQUET",
///         "autodetect": True,
///         "parquet_options": {
///             "enum_as_string": True,
///             "enable_list_inference": True,
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Gcp.Storage.Bucket("test", new()
///     {
///         Name = "job_load_bucket",
///         Location = "US",
///         UniformBucketLevelAccess = true,
///     });
///
///     var testBucketObject = new Gcp.Storage.BucketObject("test", new()
///     {
///         Name = "job_load_bucket_object",
///         Source = new FileAsset("./test-fixtures/test.parquet.gzip"),
///         Bucket = test.Name,
///     });
///
///     var testDataset = new Gcp.BigQuery.Dataset("test", new()
///     {
///         DatasetId = "job_load_dataset",
///         FriendlyName = "test",
///         Description = "This is a test description",
///         Location = "US",
///     });
///
///     var testTable = new Gcp.BigQuery.Table("test", new()
///     {
///         DeletionProtection = false,
///         TableId = "job_load_table",
///         DatasetId = testDataset.DatasetId,
///     });
///
///     var job = new Gcp.BigQuery.Job("job", new()
///     {
///         JobId = "job_load",
///         Labels =
///         {
///             { "my_job", "load" },
///         },
///         Load = new Gcp.BigQuery.Inputs.JobLoadArgs
///         {
///             SourceUris = new[]
///             {
///                 Output.Tuple(testBucketObject.Bucket, testBucketObject.Name).Apply(values =>
///                 {
///                     var bucket = values.Item1;
///                     var name = values.Item2;
///                     return $"gs://{bucket}/{name}";
///                 }),
///             },
///             DestinationTable = new Gcp.BigQuery.Inputs.JobLoadDestinationTableArgs
///             {
///                 ProjectId = testTable.Project,
///                 DatasetId = testTable.DatasetId,
///                 TableId = testTable.TableId,
///             },
///             SchemaUpdateOptions = new[]
///             {
///                 "ALLOW_FIELD_RELAXATION",
///                 "ALLOW_FIELD_ADDITION",
///             },
///             WriteDisposition = "WRITE_APPEND",
///             SourceFormat = "PARQUET",
///             Autodetect = true,
///             ParquetOptions = new Gcp.BigQuery.Inputs.JobLoadParquetOptionsArgs
///             {
///                 EnumAsString = true,
///                 EnableListInference = true,
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		test, err := storage.NewBucket(ctx, "test", &storage.BucketArgs{
/// 			Name:                     pulumi.String("job_load_bucket"),
/// 			Location:                 pulumi.String("US"),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testBucketObject, err := storage.NewBucketObject(ctx, "test", &storage.BucketObjectArgs{
/// 			Name:   pulumi.String("job_load_bucket_object"),
/// 			Source: pulumi.NewFileAsset("./test-fixtures/test.parquet.gzip"),
/// 			Bucket: test.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testDataset, err := bigquery.NewDataset(ctx, "test", &bigquery.DatasetArgs{
/// 			DatasetId:    pulumi.String("job_load_dataset"),
/// 			FriendlyName: pulumi.String("test"),
/// 			Description:  pulumi.String("This is a test description"),
/// 			Location:     pulumi.String("US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testTable, err := bigquery.NewTable(ctx, "test", &bigquery.TableArgs{
/// 			DeletionProtection: pulumi.Bool(false),
/// 			TableId:            pulumi.String("job_load_table"),
/// 			DatasetId:          testDataset.DatasetId,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigquery.NewJob(ctx, "job", &bigquery.JobArgs{
/// 			JobId: pulumi.String("job_load"),
/// 			Labels: pulumi.StringMap{
/// 				"my_job": pulumi.String("load"),
/// 			},
/// 			Load: &bigquery.JobLoadArgs{
/// 				SourceUris: pulumi.StringArray{
/// 					pulumi.All(testBucketObject.Bucket, testBucketObject.Name).ApplyT(func(_args []interface{}) (string, error) {
/// 						bucket := _args[0].(string)
/// 						name := _args[1].(string)
/// 						return fmt.Sprintf("gs://%v/%v", bucket, name), nil
/// 					}).(pulumi.StringOutput),
/// 				},
/// 				DestinationTable: &bigquery.JobLoadDestinationTableArgs{
/// 					ProjectId: testTable.Project,
/// 					DatasetId: testTable.DatasetId,
/// 					TableId:   testTable.TableId,
/// 				},
/// 				SchemaUpdateOptions: pulumi.StringArray{
/// 					pulumi.String("ALLOW_FIELD_RELAXATION"),
/// 					pulumi.String("ALLOW_FIELD_ADDITION"),
/// 				},
/// 				WriteDisposition: pulumi.String("WRITE_APPEND"),
/// 				SourceFormat:     pulumi.String("PARQUET"),
/// 				Autodetect:       pulumi.Bool(true),
/// 				ParquetOptions: &bigquery.JobLoadParquetOptionsArgs{
/// 					EnumAsString:        pulumi.Bool(true),
/// 					EnableListInference: pulumi.Bool(true),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.bigquery.Table;
/// import com.pulumi.gcp.bigquery.TableArgs;
/// import com.pulumi.gcp.bigquery.Job;
/// import com.pulumi.gcp.bigquery.JobArgs;
/// import com.pulumi.gcp.bigquery.inputs.JobLoadArgs;
/// import com.pulumi.gcp.bigquery.inputs.JobLoadDestinationTableArgs;
/// import com.pulumi.gcp.bigquery.inputs.JobLoadParquetOptionsArgs;
/// import com.pulumi.asset.FileAsset;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var test = new Bucket("test", BucketArgs.builder()
///             .name("job_load_bucket")
///             .location("US")
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         var testBucketObject = new BucketObject("testBucketObject", BucketObjectArgs.builder()
///             .name("job_load_bucket_object")
///             .source(new FileAsset("./test-fixtures/test.parquet.gzip"))
///             .bucket(test.name())
///             .build());
///
///         var testDataset = new Dataset("testDataset", DatasetArgs.builder()
///             .datasetId("job_load_dataset")
///             .friendlyName("test")
///             .description("This is a test description")
///             .location("US")
///             .build());
///
///         var testTable = new Table("testTable", TableArgs.builder()
///             .deletionProtection(false)
///             .tableId("job_load_table")
///             .datasetId(testDataset.datasetId())
///             .build());
///
///         var job = new Job("job", JobArgs.builder()
///             .jobId("job_load")
///             .labels(Map.of("my_job", "load"))
///             .load(JobLoadArgs.builder()
///                 .sourceUris(Output.tuple(testBucketObject.bucket(), testBucketObject.name()).applyValue(values -> {
///                     var bucket = values.t1;
///                     var name = values.t2;
///                     return String.format("gs://%s/%s", bucket,name);
///                 }))
///                 .destinationTable(JobLoadDestinationTableArgs.builder()
///                     .projectId(testTable.project())
///                     .datasetId(testTable.datasetId())
///                     .tableId(testTable.tableId())
///                     .build())
///                 .schemaUpdateOptions(
///                     "ALLOW_FIELD_RELAXATION",
///                     "ALLOW_FIELD_ADDITION")
///                 .writeDisposition("WRITE_APPEND")
///                 .sourceFormat("PARQUET")
///                 .autodetect(true)
///                 .parquetOptions(JobLoadParquetOptionsArgs.builder()
///                     .enumAsString(true)
///                     .enableListInference(true)
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: gcp:storage:Bucket
///     properties:
///       name: job_load_bucket
///       location: US
///       uniformBucketLevelAccess: true
///   testBucketObject:
///     type: gcp:storage:BucketObject
///     name: test
///     properties:
///       name: job_load_bucket_object
///       source:
///         fn::FileAsset: ./test-fixtures/test.parquet.gzip
///       bucket: ${test.name}
///   testDataset:
///     type: gcp:bigquery:Dataset
///     name: test
///     properties:
///       datasetId: job_load_dataset
///       friendlyName: test
///       description: This is a test description
///       location: US
///   testTable:
///     type: gcp:bigquery:Table
///     name: test
///     properties:
///       deletionProtection: false
///       tableId: job_load_table
///       datasetId: ${testDataset.datasetId}
///   job:
///     type: gcp:bigquery:Job
///     properties:
///       jobId: job_load
///       labels:
///         my_job: load
///       load:
///         sourceUris:
///           - gs://${testBucketObject.bucket}/${testBucketObject.name}
///         destinationTable:
///           projectId: ${testTable.project}
///           datasetId: ${testTable.datasetId}
///           tableId: ${testTable.tableId}
///         schemaUpdateOptions:
///           - ALLOW_FIELD_RELAXATION
///           - ALLOW_FIELD_ADDITION
///         writeDisposition: WRITE_APPEND
///         sourceFormat: PARQUET
///         autodetect: true
///         parquetOptions:
///           enumAsString: true
///           enableListInference: true
/// ```
///
/// ### Bigquery Job Copy
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const count = 2;
/// const sourceDataset: gcp.bigquery.Dataset[] = [];
/// for (const range = {value: 0}; range.value < count; range.value++) {
///     sourceDataset.push(new gcp.bigquery.Dataset(`source-${range.value}`, {
///         datasetId: `job_copy_${range.value}_dataset`,
///         friendlyName: "test",
///         description: "This is a test description",
///         location: "US",
///     }));
/// }
/// const source: gcp.bigquery.Table[] = [];
/// for (const range = {value: 0}; range.value < count; range.value++) {
///     source.push(new gcp.bigquery.Table(`source-${range.value}`, {
///         datasetId: sourceDataset[range.value].datasetId,
///         tableId: `job_copy_${range.value}_table`,
///         deletionProtection: false,
///         schema: `[
///   {
///     \\"name\\": \\"name\\",
///     \\"type\\": \\"STRING\\",
///     \\"mode\\": \\"NULLABLE\\"
///   },
///   {
///     \\"name\\": \\"post_abbr\\",
///     \\"type\\": \\"STRING\\",
///     \\"mode\\": \\"NULLABLE\\"
///   },
///   {
///     \\"name\\": \\"date\\",
///     \\"type\\": \\"DATE\\",
///     \\"mode\\": \\"NULLABLE\\"
///   }
/// ]
/// `,
///     }));
/// }
/// const destDataset = new gcp.bigquery.Dataset("dest", {
///     datasetId: "job_copy_dest_dataset",
///     friendlyName: "test",
///     description: "This is a test description",
///     location: "US",
/// });
/// const project = gcp.organizations.getProject({
///     projectId: "my-project-name",
/// });
/// const encryptRole = new gcp.kms.CryptoKeyIAMMember("encrypt_role", {
///     cryptoKeyId: "example-key",
///     role: "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member: project.then(project => `serviceAccount:bq-${project.number}@bigquery-encryption.iam.gserviceaccount.com`),
/// });
/// const dest = new gcp.bigquery.Table("dest", {
///     deletionProtection: false,
///     datasetId: destDataset.datasetId,
///     tableId: "job_copy_dest_table",
///     schema: `[
///   {
///     \\"name\\": \\"name\\",
///     \\"type\\": \\"STRING\\",
///     \\"mode\\": \\"NULLABLE\\"
///   },
///   {
///     \\"name\\": \\"post_abbr\\",
///     \\"type\\": \\"STRING\\",
///     \\"mode\\": \\"NULLABLE\\"
///   },
///   {
///     \\"name\\": \\"date\\",
///     \\"type\\": \\"DATE\\",
///     \\"mode\\": \\"NULLABLE\\"
///   }
/// ]
/// `,
///     encryptionConfiguration: {
///         kmsKeyName: "example-key",
///     },
/// }, {
///     dependsOn: [encryptRole],
/// });
/// const job = new gcp.bigquery.Job("job", {
///     jobId: "job_copy",
///     copy: {
///         sourceTables: [
///             {
///                 projectId: source[0].project,
///                 datasetId: source[0].datasetId,
///                 tableId: source[0].tableId,
///             },
///             {
///                 projectId: source[1].project,
///                 datasetId: source[1].datasetId,
///                 tableId: source[1].tableId,
///             },
///         ],
///         destinationTable: {
///             projectId: dest.project,
///             datasetId: dest.datasetId,
///             tableId: dest.tableId,
///         },
///         destinationEncryptionConfiguration: {
///             kmsKeyName: "example-key",
///         },
///     },
/// }, {
///     dependsOn: [encryptRole],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// count = 2
/// source_dataset = []
/// for range in [{"value": i} for i in range(0, count)]:
///     source_dataset.append(gcp.bigquery.Dataset(f"source-{range['value']}",
///         dataset_id=f"job_copy_{range['value']}_dataset",
///         friendly_name="test",
///         description="This is a test description",
///         location="US"))
/// source = []
/// for range in [{"value": i} for i in range(0, count)]:
///     source.append(gcp.bigquery.Table(f"source-{range['value']}",
///         dataset_id=source_dataset[range["value"]].dataset_id,
///         table_id=f"job_copy_{range['value']}_table",
///         deletion_protection=False,
///         schema="""[
///   {
///     \"name\": \"name\",
///     \"type\": \"STRING\",
///     \"mode\": \"NULLABLE\"
///   },
///   {
///     \"name\": \"post_abbr\",
///     \"type\": \"STRING\",
///     \"mode\": \"NULLABLE\"
///   },
///   {
///     \"name\": \"date\",
///     \"type\": \"DATE\",
///     \"mode\": \"NULLABLE\"
///   }
/// ]
/// """))
/// dest_dataset = gcp.bigquery.Dataset("dest",
///     dataset_id="job_copy_dest_dataset",
///     friendly_name="test",
///     description="This is a test description",
///     location="US")
/// project = gcp.organizations.get_project(project_id="my-project-name")
/// encrypt_role = gcp.kms.CryptoKeyIAMMember("encrypt_role",
///     crypto_key_id="example-key",
///     role="roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member=f"serviceAccount:bq-{project.number}@bigquery-encryption.iam.gserviceaccount.com")
/// dest = gcp.bigquery.Table("dest",
///     deletion_protection=False,
///     dataset_id=dest_dataset.dataset_id,
///     table_id="job_copy_dest_table",
///     schema="""[
///   {
///     \"name\": \"name\",
///     \"type\": \"STRING\",
///     \"mode\": \"NULLABLE\"
///   },
///   {
///     \"name\": \"post_abbr\",
///     \"type\": \"STRING\",
///     \"mode\": \"NULLABLE\"
///   },
///   {
///     \"name\": \"date\",
///     \"type\": \"DATE\",
///     \"mode\": \"NULLABLE\"
///   }
/// ]
/// """,
///     encryption_configuration={
///         "kms_key_name": "example-key",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[encrypt_role]))
/// job = gcp.bigquery.Job("job",
///     job_id="job_copy",
///     copy={
///         "source_tables": [
///             {
///                 "project_id": source[0].project,
///                 "dataset_id": source[0].dataset_id,
///                 "table_id": source[0].table_id,
///             },
///             {
///                 "project_id": source[1].project,
///                 "dataset_id": source[1].dataset_id,
///                 "table_id": source[1].table_id,
///             },
///         ],
///         "destination_table": {
///             "project_id": dest.project,
///             "dataset_id": dest.dataset_id,
///             "table_id": dest.table_id,
///         },
///         "destination_encryption_configuration": {
///             "kms_key_name": "example-key",
///         },
///     },
///     opts = pulumi.ResourceOptions(depends_on=[encrypt_role]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var count = 2;
///
///     var sourceDataset = new List<Gcp.BigQuery.Dataset>();
///     for (var rangeIndex = 0; rangeIndex < count; rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         sourceDataset.Add(new Gcp.BigQuery.Dataset($"source-{range.Value}", new()
///         {
///             DatasetId = $"job_copy_{range.Value}_dataset",
///             FriendlyName = "test",
///             Description = "This is a test description",
///             Location = "US",
///         }));
///     }
///     var source = new List<Gcp.BigQuery.Table>();
///     for (var rangeIndex = 0; rangeIndex < count; rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         source.Add(new Gcp.BigQuery.Table($"source-{range.Value}", new()
///         {
///             DatasetId = sourceDataset[range.Value].DatasetId,
///             TableId = $"job_copy_{range.Value}_table",
///             DeletionProtection = false,
///             Schema = @"[
///   {
///     \""name\"": \""name\"",
///     \""type\"": \""STRING\"",
///     \""mode\"": \""NULLABLE\""
///   },
///   {
///     \""name\"": \""post_abbr\"",
///     \""type\"": \""STRING\"",
///     \""mode\"": \""NULLABLE\""
///   },
///   {
///     \""name\"": \""date\"",
///     \""type\"": \""DATE\"",
///     \""mode\"": \""NULLABLE\""
///   }
/// ]
/// ",
///         }));
///     }
///     var destDataset = new Gcp.BigQuery.Dataset("dest", new()
///     {
///         DatasetId = "job_copy_dest_dataset",
///         FriendlyName = "test",
///         Description = "This is a test description",
///         Location = "US",
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke(new()
///     {
///         ProjectId = "my-project-name",
///     });
///
///     var encryptRole = new Gcp.Kms.CryptoKeyIAMMember("encrypt_role", new()
///     {
///         CryptoKeyId = "example-key",
///         Role = "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///         Member = $"serviceAccount:bq-{project.Apply(getProjectResult => getProjectResult.Number)}@bigquery-encryption.iam.gserviceaccount.com",
///     });
///
///     var dest = new Gcp.BigQuery.Table("dest", new()
///     {
///         DeletionProtection = false,
///         DatasetId = destDataset.DatasetId,
///         TableId = "job_copy_dest_table",
///         Schema = @"[
///   {
///     \""name\"": \""name\"",
///     \""type\"": \""STRING\"",
///     \""mode\"": \""NULLABLE\""
///   },
///   {
///     \""name\"": \""post_abbr\"",
///     \""type\"": \""STRING\"",
///     \""mode\"": \""NULLABLE\""
///   },
///   {
///     \""name\"": \""date\"",
///     \""type\"": \""DATE\"",
///     \""mode\"": \""NULLABLE\""
///   }
/// ]
/// ",
///         EncryptionConfiguration = new Gcp.BigQuery.Inputs.TableEncryptionConfigurationArgs
///         {
///             KmsKeyName = "example-key",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             encryptRole,
///         },
///     });
///
///     var job = new Gcp.BigQuery.Job("job", new()
///     {
///         JobId = "job_copy",
///         Copy = new Gcp.BigQuery.Inputs.JobCopyArgs
///         {
///             SourceTables = new[]
///             {
///                 new Gcp.BigQuery.Inputs.JobCopySourceTableArgs
///                 {
///                     ProjectId = source[0].Project,
///                     DatasetId = source[0].DatasetId,
///                     TableId = source[0].TableId,
///                 },
///                 new Gcp.BigQuery.Inputs.JobCopySourceTableArgs
///                 {
///                     ProjectId = source[1].Project,
///                     DatasetId = source[1].DatasetId,
///                     TableId = source[1].TableId,
///                 },
///             },
///             DestinationTable = new Gcp.BigQuery.Inputs.JobCopyDestinationTableArgs
///             {
///                 ProjectId = dest.Project,
///                 DatasetId = dest.DatasetId,
///                 TableId = dest.TableId,
///             },
///             DestinationEncryptionConfiguration = new Gcp.BigQuery.Inputs.JobCopyDestinationEncryptionConfigurationArgs
///             {
///                 KmsKeyName = "example-key",
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             encryptRole,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		count := 2
/// 		var sourceDataset []*bigquery.Dataset
/// 		for index := 0; index < count; index++ {
/// 			key0 := index
/// 			val0 := index
/// 			__res, err := bigquery.NewDataset(ctx, fmt.Sprintf("source-%v", key0), &bigquery.DatasetArgs{
/// 				DatasetId:    pulumi.Sprintf("job_copy_%v_dataset", val0),
/// 				FriendlyName: pulumi.String("test"),
/// 				Description:  pulumi.String("This is a test description"),
/// 				Location:     pulumi.String("US"),
/// 			})
/// 			if err != nil {
/// 				return err
/// 			}
/// 			sourceDataset = append(sourceDataset, __res)
/// 		}
/// 		var source []*bigquery.Table
/// 		for index := 0; index < count; index++ {
/// 			key0 := index
/// 			val0 := index
/// 			__res, err := bigquery.NewTable(ctx, fmt.Sprintf("source-%v", key0), &bigquery.TableArgs{
/// 				DatasetId:          sourceDataset[val0].DatasetId,
/// 				TableId:            pulumi.Sprintf("job_copy_%v_table", val0),
/// 				DeletionProtection: pulumi.Bool(false),
/// 				Schema: pulumi.String(`[
///   {
///     \"name\": \"name\",
///     \"type\": \"STRING\",
///     \"mode\": \"NULLABLE\"
///   },
///   {
///     \"name\": \"post_abbr\",
///     \"type\": \"STRING\",
///     \"mode\": \"NULLABLE\"
///   },
///   {
///     \"name\": \"date\",
///     \"type\": \"DATE\",
///     \"mode\": \"NULLABLE\"
///   }
/// ]
/// `),
/// 			})
/// 			if err != nil {
/// 				return err
/// 			}
/// 			source = append(source, __res)
/// 		}
/// 		destDataset, err := bigquery.NewDataset(ctx, "dest", &bigquery.DatasetArgs{
/// 			DatasetId:    pulumi.String("job_copy_dest_dataset"),
/// 			FriendlyName: pulumi.String("test"),
/// 			Description:  pulumi.String("This is a test description"),
/// 			Location:     pulumi.String("US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{
/// 			ProjectId: pulumi.StringRef("my-project-name"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		encryptRole, err := kms.NewCryptoKeyIAMMember(ctx, "encrypt_role", &kms.CryptoKeyIAMMemberArgs{
/// 			CryptoKeyId: pulumi.String("example-key"),
/// 			Role:        pulumi.String("roles/cloudkms.cryptoKeyEncrypterDecrypter"),
/// 			Member:      pulumi.Sprintf("serviceAccount:bq-%v@bigquery-encryption.iam.gserviceaccount.com", project.Number),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		dest, err := bigquery.NewTable(ctx, "dest", &bigquery.TableArgs{
/// 			DeletionProtection: pulumi.Bool(false),
/// 			DatasetId:          destDataset.DatasetId,
/// 			TableId:            pulumi.String("job_copy_dest_table"),
/// 			Schema: pulumi.String(`[
///   {
///     \"name\": \"name\",
///     \"type\": \"STRING\",
///     \"mode\": \"NULLABLE\"
///   },
///   {
///     \"name\": \"post_abbr\",
///     \"type\": \"STRING\",
///     \"mode\": \"NULLABLE\"
///   },
///   {
///     \"name\": \"date\",
///     \"type\": \"DATE\",
///     \"mode\": \"NULLABLE\"
///   }
/// ]
/// `),
/// 			EncryptionConfiguration: &bigquery.TableEncryptionConfigurationArgs{
/// 				KmsKeyName: pulumi.String("example-key"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			encryptRole,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigquery.NewJob(ctx, "job", &bigquery.JobArgs{
/// 			JobId: pulumi.String("job_copy"),
/// 			Copy: &bigquery.JobCopyArgs{
/// 				SourceTables: bigquery.JobCopySourceTableArray{
/// 					&bigquery.JobCopySourceTableArgs{
/// 						ProjectId: source[0].Project,
/// 						DatasetId: source[0].DatasetId,
/// 						TableId:   source[0].TableId,
/// 					},
/// 					&bigquery.JobCopySourceTableArgs{
/// 						ProjectId: source[1].Project,
/// 						DatasetId: source[1].DatasetId,
/// 						TableId:   source[1].TableId,
/// 					},
/// 				},
/// 				DestinationTable: &bigquery.JobCopyDestinationTableArgs{
/// 					ProjectId: dest.Project,
/// 					DatasetId: dest.DatasetId,
/// 					TableId:   dest.TableId,
/// 				},
/// 				DestinationEncryptionConfiguration: &bigquery.JobCopyDestinationEncryptionConfigurationArgs{
/// 					KmsKeyName: pulumi.String("example-key"),
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			encryptRole,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.bigquery.Table;
/// import com.pulumi.gcp.bigquery.TableArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMember;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMemberArgs;
/// import com.pulumi.gcp.bigquery.inputs.TableEncryptionConfigurationArgs;
/// import com.pulumi.gcp.bigquery.Job;
/// import com.pulumi.gcp.bigquery.JobArgs;
/// import com.pulumi.gcp.bigquery.inputs.JobCopyArgs;
/// import com.pulumi.gcp.bigquery.inputs.JobCopyDestinationTableArgs;
/// import com.pulumi.gcp.bigquery.inputs.JobCopyDestinationEncryptionConfigurationArgs;
/// import com.pulumi.codegen.internal.KeyedValue;
/// import com.pulumi.resources.CustomResourceOptions;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var count = 2;
///
///         for (var i = 0; i < count; i++) {
///             new Dataset("sourceDataset-" + i, DatasetArgs.builder()
///                 .datasetId(String.format("job_copy_%s_dataset", range.value()))
///                 .friendlyName("test")
///                 .description("This is a test description")
///                 .location("US")
///                 .build());
///
///
/// }
///         for (var i = 0; i < count; i++) {
///             new Table("source-" + i, TableArgs.builder()
///                 .datasetId(sourceDataset[range.value()].datasetId())
///                 .tableId(String.format("job_copy_%s_table", range.value()))
///                 .deletionProtection(false)
///                 .schema("""
/// [
///   {
///     \"name\": \"name\",
///     \"type\": \"STRING\",
///     \"mode\": \"NULLABLE\"
///   },
///   {
///     \"name\": \"post_abbr\",
///     \"type\": \"STRING\",
///     \"mode\": \"NULLABLE\"
///   },
///   {
///     \"name\": \"date\",
///     \"type\": \"DATE\",
///     \"mode\": \"NULLABLE\"
///   }
/// ]
///                 """)
///                 .build());
///
///
/// }
///         var destDataset = new Dataset("destDataset", DatasetArgs.builder()
///             .datasetId("job_copy_dest_dataset")
///             .friendlyName("test")
///             .description("This is a test description")
///             .location("US")
///             .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .projectId("my-project-name")
///             .build());
///
///         var encryptRole = new CryptoKeyIAMMember("encryptRole", CryptoKeyIAMMemberArgs.builder()
///             .cryptoKeyId("example-key")
///             .role("roles/cloudkms.cryptoKeyEncrypterDecrypter")
///             .member(String.format("serviceAccount:bq-%s@bigquery-encryption.iam.gserviceaccount.com", project.number()))
///             .build());
///
///         var dest = new Table("dest", TableArgs.builder()
///             .deletionProtection(false)
///             .datasetId(destDataset.datasetId())
///             .tableId("job_copy_dest_table")
///             .schema("""
/// [
///   {
///     \"name\": \"name\",
///     \"type\": \"STRING\",
///     \"mode\": \"NULLABLE\"
///   },
///   {
///     \"name\": \"post_abbr\",
///     \"type\": \"STRING\",
///     \"mode\": \"NULLABLE\"
///   },
///   {
///     \"name\": \"date\",
///     \"type\": \"DATE\",
///     \"mode\": \"NULLABLE\"
///   }
/// ]
///             """)
///             .encryptionConfiguration(TableEncryptionConfigurationArgs.builder()
///                 .kmsKeyName("example-key")
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(encryptRole)
///                 .build());
///
///         var job = new Job("job", JobArgs.builder()
///             .jobId("job_copy")
///             .copy(JobCopyArgs.builder()
///                 .sourceTables(
///                     JobCopySourceTableArgs.builder()
///                         .projectId(source[0].project())
///                         .datasetId(source[0].datasetId())
///                         .tableId(source[0].tableId())
///                         .build(),
///                     JobCopySourceTableArgs.builder()
///                         .projectId(source[1].project())
///                         .datasetId(source[1].datasetId())
///                         .tableId(source[1].tableId())
///                         .build())
///                 .destinationTable(JobCopyDestinationTableArgs.builder()
///                     .projectId(dest.project())
///                     .datasetId(dest.datasetId())
///                     .tableId(dest.tableId())
///                     .build())
///                 .destinationEncryptionConfiguration(JobCopyDestinationEncryptionConfigurationArgs.builder()
///                     .kmsKeyName("example-key")
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(encryptRole)
///                 .build());
///
///     }
/// }
/// ```
///
/// ### Bigquery Job Extract
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const source_oneDataset = new gcp.bigquery.Dataset("source-one", {
///     datasetId: "job_extract_dataset",
///     friendlyName: "test",
///     description: "This is a test description",
///     location: "US",
/// });
/// const source_one = new gcp.bigquery.Table("source-one", {
///     deletionProtection: false,
///     datasetId: source_oneDataset.datasetId,
///     tableId: "job_extract_table",
///     schema: `[
///   {
///     \\"name\\": \\"name\\",
///     \\"type\\": \\"STRING\\",
///     \\"mode\\": \\"NULLABLE\\"
///   },
///   {
///     \\"name\\": \\"post_abbr\\",
///     \\"type\\": \\"STRING\\",
///     \\"mode\\": \\"NULLABLE\\"
///   },
///   {
///     \\"name\\": \\"date\\",
///     \\"type\\": \\"DATE\\",
///     \\"mode\\": \\"NULLABLE\\"
///   }
/// ]
/// `,
/// });
/// const dest = new gcp.storage.Bucket("dest", {
///     name: "job_extract_bucket",
///     location: "US",
///     forceDestroy: true,
/// });
/// const job = new gcp.bigquery.Job("job", {
///     jobId: "job_extract",
///     extract: {
///         destinationUris: [pulumi.interpolate`${dest.url}/extract`],
///         sourceTable: {
///             projectId: source_one.project,
///             datasetId: source_one.datasetId,
///             tableId: source_one.tableId,
///         },
///         destinationFormat: "NEWLINE_DELIMITED_JSON",
///         compression: "GZIP",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// source_one_dataset = gcp.bigquery.Dataset("source-one",
///     dataset_id="job_extract_dataset",
///     friendly_name="test",
///     description="This is a test description",
///     location="US")
/// source_one = gcp.bigquery.Table("source-one",
///     deletion_protection=False,
///     dataset_id=source_one_dataset.dataset_id,
///     table_id="job_extract_table",
///     schema="""[
///   {
///     \"name\": \"name\",
///     \"type\": \"STRING\",
///     \"mode\": \"NULLABLE\"
///   },
///   {
///     \"name\": \"post_abbr\",
///     \"type\": \"STRING\",
///     \"mode\": \"NULLABLE\"
///   },
///   {
///     \"name\": \"date\",
///     \"type\": \"DATE\",
///     \"mode\": \"NULLABLE\"
///   }
/// ]
/// """)
/// dest = gcp.storage.Bucket("dest",
///     name="job_extract_bucket",
///     location="US",
///     force_destroy=True)
/// job = gcp.bigquery.Job("job",
///     job_id="job_extract",
///     extract={
///         "destination_uris": [dest.url.apply(lambda url: f"{url}/extract")],
///         "source_table": {
///             "project_id": source_one.project,
///             "dataset_id": source_one.dataset_id,
///             "table_id": source_one.table_id,
///         },
///         "destination_format": "NEWLINE_DELIMITED_JSON",
///         "compression": "GZIP",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var source_oneDataset = new Gcp.BigQuery.Dataset("source-one", new()
///     {
///         DatasetId = "job_extract_dataset",
///         FriendlyName = "test",
///         Description = "This is a test description",
///         Location = "US",
///     });
///
///     var source_one = new Gcp.BigQuery.Table("source-one", new()
///     {
///         DeletionProtection = false,
///         DatasetId = source_oneDataset.DatasetId,
///         TableId = "job_extract_table",
///         Schema = @"[
///   {
///     \""name\"": \""name\"",
///     \""type\"": \""STRING\"",
///     \""mode\"": \""NULLABLE\""
///   },
///   {
///     \""name\"": \""post_abbr\"",
///     \""type\"": \""STRING\"",
///     \""mode\"": \""NULLABLE\""
///   },
///   {
///     \""name\"": \""date\"",
///     \""type\"": \""DATE\"",
///     \""mode\"": \""NULLABLE\""
///   }
/// ]
/// ",
///     });
///
///     var dest = new Gcp.Storage.Bucket("dest", new()
///     {
///         Name = "job_extract_bucket",
///         Location = "US",
///         ForceDestroy = true,
///     });
///
///     var job = new Gcp.BigQuery.Job("job", new()
///     {
///         JobId = "job_extract",
///         Extract = new Gcp.BigQuery.Inputs.JobExtractArgs
///         {
///             DestinationUris = new[]
///             {
///                 dest.Url.Apply(url => $"{url}/extract"),
///             },
///             SourceTable = new Gcp.BigQuery.Inputs.JobExtractSourceTableArgs
///             {
///                 ProjectId = source_one.Project,
///                 DatasetId = source_one.DatasetId,
///                 TableId = source_one.TableId,
///             },
///             DestinationFormat = "NEWLINE_DELIMITED_JSON",
///             Compression = "GZIP",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		source_oneDataset, err := bigquery.NewDataset(ctx, "source-one", &bigquery.DatasetArgs{
/// 			DatasetId:    pulumi.String("job_extract_dataset"),
/// 			FriendlyName: pulumi.String("test"),
/// 			Description:  pulumi.String("This is a test description"),
/// 			Location:     pulumi.String("US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		source_one, err := bigquery.NewTable(ctx, "source-one", &bigquery.TableArgs{
/// 			DeletionProtection: pulumi.Bool(false),
/// 			DatasetId:          source_oneDataset.DatasetId,
/// 			TableId:            pulumi.String("job_extract_table"),
/// 			Schema: pulumi.String(`[
///   {
///     \"name\": \"name\",
///     \"type\": \"STRING\",
///     \"mode\": \"NULLABLE\"
///   },
///   {
///     \"name\": \"post_abbr\",
///     \"type\": \"STRING\",
///     \"mode\": \"NULLABLE\"
///   },
///   {
///     \"name\": \"date\",
///     \"type\": \"DATE\",
///     \"mode\": \"NULLABLE\"
///   }
/// ]
/// `),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		dest, err := storage.NewBucket(ctx, "dest", &storage.BucketArgs{
/// 			Name:         pulumi.String("job_extract_bucket"),
/// 			Location:     pulumi.String("US"),
/// 			ForceDestroy: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigquery.NewJob(ctx, "job", &bigquery.JobArgs{
/// 			JobId: pulumi.String("job_extract"),
/// 			Extract: &bigquery.JobExtractArgs{
/// 				DestinationUris: pulumi.StringArray{
/// 					dest.Url.ApplyT(func(url string) (string, error) {
/// 						return fmt.Sprintf("%v/extract", url), nil
/// 					}).(pulumi.StringOutput),
/// 				},
/// 				SourceTable: &bigquery.JobExtractSourceTableArgs{
/// 					ProjectId: source_one.Project,
/// 					DatasetId: source_one.DatasetId,
/// 					TableId:   source_one.TableId,
/// 				},
/// 				DestinationFormat: pulumi.String("NEWLINE_DELIMITED_JSON"),
/// 				Compression:       pulumi.String("GZIP"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.bigquery.Table;
/// import com.pulumi.gcp.bigquery.TableArgs;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.bigquery.Job;
/// import com.pulumi.gcp.bigquery.JobArgs;
/// import com.pulumi.gcp.bigquery.inputs.JobExtractArgs;
/// import com.pulumi.gcp.bigquery.inputs.JobExtractSourceTableArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var source_oneDataset = new Dataset("source-oneDataset", DatasetArgs.builder()
///             .datasetId("job_extract_dataset")
///             .friendlyName("test")
///             .description("This is a test description")
///             .location("US")
///             .build());
///
///         var source_one = new Table("source-one", TableArgs.builder()
///             .deletionProtection(false)
///             .datasetId(source_oneDataset.datasetId())
///             .tableId("job_extract_table")
///             .schema("""
/// [
///   {
///     \"name\": \"name\",
///     \"type\": \"STRING\",
///     \"mode\": \"NULLABLE\"
///   },
///   {
///     \"name\": \"post_abbr\",
///     \"type\": \"STRING\",
///     \"mode\": \"NULLABLE\"
///   },
///   {
///     \"name\": \"date\",
///     \"type\": \"DATE\",
///     \"mode\": \"NULLABLE\"
///   }
/// ]
///             """)
///             .build());
///
///         var dest = new Bucket("dest", BucketArgs.builder()
///             .name("job_extract_bucket")
///             .location("US")
///             .forceDestroy(true)
///             .build());
///
///         var job = new Job("job", JobArgs.builder()
///             .jobId("job_extract")
///             .extract(JobExtractArgs.builder()
///                 .destinationUris(dest.url().applyValue(_url -> String.format("%s/extract", _url)))
///                 .sourceTable(JobExtractSourceTableArgs.builder()
///                     .projectId(source_one.project())
///                     .datasetId(source_one.datasetId())
///                     .tableId(source_one.tableId())
///                     .build())
///                 .destinationFormat("NEWLINE_DELIMITED_JSON")
///                 .compression("GZIP")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   source-one:
///     type: gcp:bigquery:Table
///     properties:
///       deletionProtection: false
///       datasetId: ${["source-oneDataset"].datasetId}
///       tableId: job_extract_table
///       schema: |
///         [
///           {
///             \"name\": \"name\",
///             \"type\": \"STRING\",
///             \"mode\": \"NULLABLE\"
///           },
///           {
///             \"name\": \"post_abbr\",
///             \"type\": \"STRING\",
///             \"mode\": \"NULLABLE\"
///           },
///           {
///             \"name\": \"date\",
///             \"type\": \"DATE\",
///             \"mode\": \"NULLABLE\"
///           }
///         ]
///   source-oneDataset:
///     type: gcp:bigquery:Dataset
///     name: source-one
///     properties:
///       datasetId: job_extract_dataset
///       friendlyName: test
///       description: This is a test description
///       location: US
///   dest:
///     type: gcp:storage:Bucket
///     properties:
///       name: job_extract_bucket
///       location: US
///       forceDestroy: true
///   job:
///     type: gcp:bigquery:Job
///     properties:
///       jobId: job_extract
///       extract:
///         destinationUris:
///           - ${dest.url}/extract
///         sourceTable:
///           projectId: ${["source-one"].project}
///           datasetId: ${["source-one"].datasetId}
///           tableId: ${["source-one"].tableId}
///         destinationFormat: NEWLINE_DELIMITED_JSON
///         compression: GZIP
/// ```
///
///
/// ## Import
///
/// Job can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/jobs/{{job_id}}/location/{{location}}`
///
/// * `projects/{{project}}/jobs/{{job_id}}`
///
/// * `{{project}}/{{job_id}}/{{location}}`
///
/// * `{{job_id}}/{{location}}`
///
/// * `{{project}}/{{job_id}}`
///
/// * `{{job_id}}`
///
/// When using the `pulumi import` command, Job can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:bigquery/job:Job default projects/{{project}}/jobs/{{job_id}}/location/{{location}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigquery/job:Job default projects/{{project}}/jobs/{{job_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigquery/job:Job default {{project}}/{{job_id}}/{{location}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigquery/job:Job default {{job_id}}/{{location}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigquery/job:Job default {{project}}/{{job_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigquery/job:Job default {{job_id}}
/// ```
class Job extends pulumi.CustomResource {
  /// Copies a table.
  /// Structure is documented below.
  late final pulumi.Output<JobCopy?> copy;

  /// (Output)
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Configures an extract job.
  /// Structure is documented below.
  late final pulumi.Output<JobExtract?> extract;

  /// The ID of the job. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), or dashes (-). The maximum length is 1,024 characters.
  late final pulumi.Output<String> jobId;

  /// Job timeout in milliseconds. If this time limit is exceeded, BigQuery may attempt to terminate the job.
  late final pulumi.Output<String?> jobTimeoutMs;

  /// (Output)
  /// The type of the job.
  late final pulumi.Output<String> jobType;

  /// The labels associated with this job. You can use these to organize and group your jobs.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Configures a load job.
  /// Structure is documented below.
  late final pulumi.Output<JobLoad?> load;

  /// The geographic location of the job. The default value is US.
  late final pulumi.Output<String?> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// (Output)
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Configures a query job.
  /// Structure is documented below.
  late final pulumi.Output<JobQuery?> query;

  /// The reservation that job would use. User can specify a reservation to execute the job. If this field is not set, reservation is determined based on the rules defined by the reservation assignments.
  /// The expected format is `projects/{project}/locations/{location}/reservations/{reservation}`.
  late final pulumi.Output<String?> reservation;

  /// The status of this job. Examine this value when polling an asynchronous job to see if the job is complete.
  /// Structure is documented below.
  late final pulumi.Output<List<JobStatus>> statuses;

  /// Email address of the user who ran the job.
  late final pulumi.Output<String> userEmail;

  /// Creates a new [Job].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Job]. {@macro pulumi_bigquery_job_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Job(String name, {JobArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'gcp:bigquery/job:Job',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    this.copy = registerOutput<JobCopy?>('copy');
    this.effectiveLabels = registerOutput<Map<String, String>>(
      'effectiveLabels',
    );
    this.extract = registerOutput<JobExtract?>('extract');
    this.jobId = registerOutput<String>('jobId');
    this.jobTimeoutMs = registerOutput<String?>('jobTimeoutMs');
    this.jobType = registerOutput<String>('jobType');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.load = registerOutput<JobLoad?>('load');
    this.location = registerOutput<String?>('location');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.query = registerOutput<JobQuery?>('query');
    this.reservation = registerOutput<String?>('reservation');
    this.statuses = registerOutput<List<JobStatus>>('statuses');
    this.userEmail = registerOutput<String>('userEmail');
  }
}
