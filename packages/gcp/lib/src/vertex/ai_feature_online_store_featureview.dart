import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_feature_online_store_featureview_args.dart';
import 'ai_feature_online_store_featureview_big_query_source.dart';
import 'ai_feature_online_store_featureview_feature_registry_source.dart';
import 'ai_feature_online_store_featureview_sync_config.dart';
import 'ai_feature_online_store_featureview_vector_search_config.dart';

/// FeatureView is representation of values that the FeatureOnlineStore will serve based on its syncConfig.
///
///
/// To get more information about FeatureOnlineStoreFeatureview, see:
///
/// * [API documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.featureOnlineStores.featureViews)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/vertex-ai/docs)
///
/// ## Example Usage
///
/// ### Vertex Ai Featureonlinestore Featureview
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const featureonlinestore = new gcp.vertex.AiFeatureOnlineStore("featureonlinestore", {
///     name: "example_feature_view",
///     labels: {
///         foo: "bar",
///     },
///     region: "us-central1",
///     bigtable: {
///         autoScaling: {
///             minNodeCount: 1,
///             maxNodeCount: 2,
///             cpuUtilizationTarget: 80,
///         },
///     },
/// });
/// const tf_test_dataset = new gcp.bigquery.Dataset("tf-test-dataset", {
///     datasetId: "example_feature_view",
///     friendlyName: "test",
///     description: "This is a test description",
///     location: "US",
/// });
/// const tf_test_table = new gcp.bigquery.Table("tf-test-table", {
///     deletionProtection: false,
///     datasetId: tf_test_dataset.datasetId,
///     tableId: "example_feature_view",
///     schema: `  [
///   {
///     \\"name\\": \\"entity_id\\",
///     \\"mode\\": \\"NULLABLE\\",
///     \\"type\\": \\"STRING\\",
///     \\"description\\": \\"Test default entity_id\\"
///   },
///     {
///     \\"name\\": \\"test_entity_column\\",
///     \\"mode\\": \\"NULLABLE\\",
///     \\"type\\": \\"STRING\\",
///     \\"description\\": \\"test secondary entity column\\"
///   },
///   {
///     \\"name\\": \\"feature_timestamp\\",
///     \\"mode\\": \\"NULLABLE\\",
///     \\"type\\": \\"TIMESTAMP\\",
///     \\"description\\": \\"Default timestamp value\\"
///   }
/// ]
/// `,
/// });
/// const featureview = new gcp.vertex.AiFeatureOnlineStoreFeatureview("featureview", {
///     name: "example_feature_view",
///     region: "us-central1",
///     featureOnlineStore: featureonlinestore.name,
///     syncConfig: {
///         cron: "0 0 * * *",
///     },
///     bigQuerySource: {
///         uri: pulumi.interpolate`bq://${tf_test_table.project}.${tf_test_table.datasetId}.${tf_test_table.tableId}`,
///         entityIdColumns: ["test_entity_column"],
///     },
/// });
/// const project = gcp.organizations.getProject({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// featureonlinestore = gcp.vertex.AiFeatureOnlineStore("featureonlinestore",
///     name="example_feature_view",
///     labels={
///         "foo": "bar",
///     },
///     region="us-central1",
///     bigtable={
///         "auto_scaling": {
///             "min_node_count": 1,
///             "max_node_count": 2,
///             "cpu_utilization_target": 80,
///         },
///     })
/// tf_test_dataset = gcp.bigquery.Dataset("tf-test-dataset",
///     dataset_id="example_feature_view",
///     friendly_name="test",
///     description="This is a test description",
///     location="US")
/// tf_test_table = gcp.bigquery.Table("tf-test-table",
///     deletion_protection=False,
///     dataset_id=tf_test_dataset.dataset_id,
///     table_id="example_feature_view",
///     schema="""  [
///   {
///     \"name\": \"entity_id\",
///     \"mode\": \"NULLABLE\",
///     \"type\": \"STRING\",
///     \"description\": \"Test default entity_id\"
///   },
///     {
///     \"name\": \"test_entity_column\",
///     \"mode\": \"NULLABLE\",
///     \"type\": \"STRING\",
///     \"description\": \"test secondary entity column\"
///   },
///   {
///     \"name\": \"feature_timestamp\",
///     \"mode\": \"NULLABLE\",
///     \"type\": \"TIMESTAMP\",
///     \"description\": \"Default timestamp value\"
///   }
/// ]
/// """)
/// featureview = gcp.vertex.AiFeatureOnlineStoreFeatureview("featureview",
///     name="example_feature_view",
///     region="us-central1",
///     feature_online_store=featureonlinestore.name,
///     sync_config={
///         "cron": "0 0 * * *",
///     },
///     big_query_source={
///         "uri": pulumi.Output.all(
///             project=tf_test_table.project,
///             dataset_id=tf_test_table.dataset_id,
///             table_id=tf_test_table.table_id
/// ).apply(lambda resolved_outputs: f"bq://{resolved_outputs['project']}.{resolved_outputs['dataset_id']}.{resolved_outputs['table_id']}")
/// ,
///         "entity_id_columns": ["test_entity_column"],
///     })
/// project = gcp.organizations.get_project()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var featureonlinestore = new Gcp.Vertex.AiFeatureOnlineStore("featureonlinestore", new()
///     {
///         Name = "example_feature_view",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Region = "us-central1",
///         Bigtable = new Gcp.Vertex.Inputs.AiFeatureOnlineStoreBigtableArgs
///         {
///             AutoScaling = new Gcp.Vertex.Inputs.AiFeatureOnlineStoreBigtableAutoScalingArgs
///             {
///                 MinNodeCount = 1,
///                 MaxNodeCount = 2,
///                 CpuUtilizationTarget = 80,
///             },
///         },
///     });
///
///     var tf_test_dataset = new Gcp.BigQuery.Dataset("tf-test-dataset", new()
///     {
///         DatasetId = "example_feature_view",
///         FriendlyName = "test",
///         Description = "This is a test description",
///         Location = "US",
///     });
///
///     var tf_test_table = new Gcp.BigQuery.Table("tf-test-table", new()
///     {
///         DeletionProtection = false,
///         DatasetId = tf_test_dataset.DatasetId,
///         TableId = "example_feature_view",
///         Schema = @"  [
///   {
///     \""name\"": \""entity_id\"",
///     \""mode\"": \""NULLABLE\"",
///     \""type\"": \""STRING\"",
///     \""description\"": \""Test default entity_id\""
///   },
///     {
///     \""name\"": \""test_entity_column\"",
///     \""mode\"": \""NULLABLE\"",
///     \""type\"": \""STRING\"",
///     \""description\"": \""test secondary entity column\""
///   },
///   {
///     \""name\"": \""feature_timestamp\"",
///     \""mode\"": \""NULLABLE\"",
///     \""type\"": \""TIMESTAMP\"",
///     \""description\"": \""Default timestamp value\""
///   }
/// ]
/// ",
///     });
///
///     var featureview = new Gcp.Vertex.AiFeatureOnlineStoreFeatureview("featureview", new()
///     {
///         Name = "example_feature_view",
///         Region = "us-central1",
///         FeatureOnlineStore = featureonlinestore.Name,
///         SyncConfig = new Gcp.Vertex.Inputs.AiFeatureOnlineStoreFeatureviewSyncConfigArgs
///         {
///             Cron = "0 0 * * *",
///         },
///         BigQuerySource = new Gcp.Vertex.Inputs.AiFeatureOnlineStoreFeatureviewBigQuerySourceArgs
///         {
///             Uri = Output.Tuple(tf_test_table.Project, tf_test_table.DatasetId, tf_test_table.TableId).Apply(values =>
///             {
///                 var project = values.Item1;
///                 var datasetId = values.Item2;
///                 var tableId = values.Item3;
///                 return $"bq://{project}.{datasetId}.{tableId}";
///             }),
///             EntityIdColumns = new[]
///             {
///                 "test_entity_column",
///             },
///         },
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		featureonlinestore, err := vertex.NewAiFeatureOnlineStore(ctx, "featureonlinestore", &vertex.AiFeatureOnlineStoreArgs{
/// 			Name: pulumi.String("example_feature_view"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Region: pulumi.String("us-central1"),
/// 			Bigtable: &vertex.AiFeatureOnlineStoreBigtableArgs{
/// 				AutoScaling: &vertex.AiFeatureOnlineStoreBigtableAutoScalingArgs{
/// 					MinNodeCount:         pulumi.Int(1),
/// 					MaxNodeCount:         pulumi.Int(2),
/// 					CpuUtilizationTarget: pulumi.Int(80),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tf_test_dataset, err := bigquery.NewDataset(ctx, "tf-test-dataset", &bigquery.DatasetArgs{
/// 			DatasetId:    pulumi.String("example_feature_view"),
/// 			FriendlyName: pulumi.String("test"),
/// 			Description:  pulumi.String("This is a test description"),
/// 			Location:     pulumi.String("US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tf_test_table, err := bigquery.NewTable(ctx, "tf-test-table", &bigquery.TableArgs{
/// 			DeletionProtection: pulumi.Bool(false),
/// 			DatasetId:          tf_test_dataset.DatasetId,
/// 			TableId:            pulumi.String("example_feature_view"),
/// 			Schema: pulumi.String(`  [
///   {
///     \"name\": \"entity_id\",
///     \"mode\": \"NULLABLE\",
///     \"type\": \"STRING\",
///     \"description\": \"Test default entity_id\"
///   },
///     {
///     \"name\": \"test_entity_column\",
///     \"mode\": \"NULLABLE\",
///     \"type\": \"STRING\",
///     \"description\": \"test secondary entity column\"
///   },
///   {
///     \"name\": \"feature_timestamp\",
///     \"mode\": \"NULLABLE\",
///     \"type\": \"TIMESTAMP\",
///     \"description\": \"Default timestamp value\"
///   }
/// ]
/// `),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vertex.NewAiFeatureOnlineStoreFeatureview(ctx, "featureview", &vertex.AiFeatureOnlineStoreFeatureviewArgs{
/// 			Name:               pulumi.String("example_feature_view"),
/// 			Region:             pulumi.String("us-central1"),
/// 			FeatureOnlineStore: featureonlinestore.Name,
/// 			SyncConfig: &vertex.AiFeatureOnlineStoreFeatureviewSyncConfigArgs{
/// 				Cron: pulumi.String("0 0 * * *"),
/// 			},
/// 			BigQuerySource: &vertex.AiFeatureOnlineStoreFeatureviewBigQuerySourceArgs{
/// 				Uri: pulumi.All(tf_test_table.Project, tf_test_table.DatasetId, tf_test_table.TableId).ApplyT(func(_args []interface{}) (string, error) {
/// 					project := _args[0].(string)
/// 					datasetId := _args[1].(string)
/// 					tableId := _args[2].(string)
/// 					return fmt.Sprintf("bq://%v.%v.%v", project, datasetId, tableId), nil
/// 				}).(pulumi.StringOutput),
/// 				EntityIdColumns: pulumi.StringArray{
/// 					pulumi.String("test_entity_column"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
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
/// import com.pulumi.gcp.vertex.AiFeatureOnlineStore;
/// import com.pulumi.gcp.vertex.AiFeatureOnlineStoreArgs;
/// import com.pulumi.gcp.vertex.inputs.AiFeatureOnlineStoreBigtableArgs;
/// import com.pulumi.gcp.vertex.inputs.AiFeatureOnlineStoreBigtableAutoScalingArgs;
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.bigquery.Table;
/// import com.pulumi.gcp.bigquery.TableArgs;
/// import com.pulumi.gcp.vertex.AiFeatureOnlineStoreFeatureview;
/// import com.pulumi.gcp.vertex.AiFeatureOnlineStoreFeatureviewArgs;
/// import com.pulumi.gcp.vertex.inputs.AiFeatureOnlineStoreFeatureviewSyncConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiFeatureOnlineStoreFeatureviewBigQuerySourceArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
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
///         var featureonlinestore = new AiFeatureOnlineStore("featureonlinestore", AiFeatureOnlineStoreArgs.builder()
///             .name("example_feature_view")
///             .labels(Map.of("foo", "bar"))
///             .region("us-central1")
///             .bigtable(AiFeatureOnlineStoreBigtableArgs.builder()
///                 .autoScaling(AiFeatureOnlineStoreBigtableAutoScalingArgs.builder()
///                     .minNodeCount(1)
///                     .maxNodeCount(2)
///                     .cpuUtilizationTarget(80)
///                     .build())
///                 .build())
///             .build());
///
///         var tf_test_dataset = new Dataset("tf-test-dataset", DatasetArgs.builder()
///             .datasetId("example_feature_view")
///             .friendlyName("test")
///             .description("This is a test description")
///             .location("US")
///             .build());
///
///         var tf_test_table = new Table("tf-test-table", TableArgs.builder()
///             .deletionProtection(false)
///             .datasetId(tf_test_dataset.datasetId())
///             .tableId("example_feature_view")
///             .schema("""
///   [
///   {
///     \"name\": \"entity_id\",
///     \"mode\": \"NULLABLE\",
///     \"type\": \"STRING\",
///     \"description\": \"Test default entity_id\"
///   },
///     {
///     \"name\": \"test_entity_column\",
///     \"mode\": \"NULLABLE\",
///     \"type\": \"STRING\",
///     \"description\": \"test secondary entity column\"
///   },
///   {
///     \"name\": \"feature_timestamp\",
///     \"mode\": \"NULLABLE\",
///     \"type\": \"TIMESTAMP\",
///     \"description\": \"Default timestamp value\"
///   }
/// ]
///             """)
///             .build());
///
///         var featureview = new AiFeatureOnlineStoreFeatureview("featureview", AiFeatureOnlineStoreFeatureviewArgs.builder()
///             .name("example_feature_view")
///             .region("us-central1")
///             .featureOnlineStore(featureonlinestore.name())
///             .syncConfig(AiFeatureOnlineStoreFeatureviewSyncConfigArgs.builder()
///                 .cron("0 0 * * *")
///                 .build())
///             .bigQuerySource(AiFeatureOnlineStoreFeatureviewBigQuerySourceArgs.builder()
///                 .uri(Output.tuple(tf_test_table.project(), tf_test_table.datasetId(), tf_test_table.tableId()).applyValue(values -> {
///                     var project = values.t1;
///                     var datasetId = values.t2;
///                     var tableId = values.t3;
///                     return String.format("bq://%s.%s.%s", project,datasetId,tableId);
///                 }))
///                 .entityIdColumns("test_entity_column")
///                 .build())
///             .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   featureonlinestore:
///     type: gcp:vertex:AiFeatureOnlineStore
///     properties:
///       name: example_feature_view
///       labels:
///         foo: bar
///       region: us-central1
///       bigtable:
///         autoScaling:
///           minNodeCount: 1
///           maxNodeCount: 2
///           cpuUtilizationTarget: 80
///   tf-test-dataset:
///     type: gcp:bigquery:Dataset
///     properties:
///       datasetId: example_feature_view
///       friendlyName: test
///       description: This is a test description
///       location: US
///   tf-test-table:
///     type: gcp:bigquery:Table
///     properties:
///       deletionProtection: false
///       datasetId: ${["tf-test-dataset"].datasetId}
///       tableId: example_feature_view
///       schema: |2
///           [
///           {
///             \"name\": \"entity_id\",
///             \"mode\": \"NULLABLE\",
///             \"type\": \"STRING\",
///             \"description\": \"Test default entity_id\"
///           },
///             {
///             \"name\": \"test_entity_column\",
///             \"mode\": \"NULLABLE\",
///             \"type\": \"STRING\",
///             \"description\": \"test secondary entity column\"
///           },
///           {
///             \"name\": \"feature_timestamp\",
///             \"mode\": \"NULLABLE\",
///             \"type\": \"TIMESTAMP\",
///             \"description\": \"Default timestamp value\"
///           }
///         ]
///   featureview:
///     type: gcp:vertex:AiFeatureOnlineStoreFeatureview
///     properties:
///       name: example_feature_view
///       region: us-central1
///       featureOnlineStore: ${featureonlinestore.name}
///       syncConfig:
///         cron: 0 0 * * *
///       bigQuerySource:
///         uri: bq://${["tf-test-table"].project}.${["tf-test-table"].datasetId}.${["tf-test-table"].tableId}
///         entityIdColumns:
///           - test_entity_column
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Vertex Ai Featureonlinestore Featureview Feature Registry
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const featureonlinestore = new gcp.vertex.AiFeatureOnlineStore("featureonlinestore", {
///     name: "example_feature_view_feature_registry",
///     labels: {
///         foo: "bar",
///     },
///     region: "us-central1",
///     bigtable: {
///         autoScaling: {
///             minNodeCount: 1,
///             maxNodeCount: 2,
///             cpuUtilizationTarget: 80,
///         },
///     },
/// });
/// const sampleDataset = new gcp.bigquery.Dataset("sample_dataset", {
///     datasetId: "example_feature_view_feature_registry",
///     friendlyName: "test",
///     description: "This is a test description",
///     location: "US",
/// });
/// const sampleTable = new gcp.bigquery.Table("sample_table", {
///     deletionProtection: false,
///     datasetId: sampleDataset.datasetId,
///     tableId: "example_feature_view_feature_registry",
///     schema: `[
///     {
///         \\"name\\": \\"feature_id\\",
///         \\"type\\": \\"STRING\\",
///         \\"mode\\": \\"NULLABLE\\"
///     },
///     {
///         \\"name\\": \\"example_feature_view_feature_registry\\",
///         \\"type\\": \\"STRING\\",
///         \\"mode\\": \\"NULLABLE\\"
///     },
///     {
///         \\"name\\": \\"feature_timestamp\\",
///         \\"type\\": \\"TIMESTAMP\\",
///         \\"mode\\": \\"NULLABLE\\"
///     }
/// ]
/// `,
/// });
/// const sampleFeatureGroup = new gcp.vertex.AiFeatureGroup("sample_feature_group", {
///     name: "example_feature_view_feature_registry",
///     description: "A sample feature group",
///     region: "us-central1",
///     labels: {
///         "label-one": "value-one",
///     },
///     bigQuery: {
///         bigQuerySource: {
///             inputUri: pulumi.interpolate`bq://${sampleTable.project}.${sampleTable.datasetId}.${sampleTable.tableId}`,
///         },
///         entityIdColumns: ["feature_id"],
///     },
/// });
/// const sampleFeature = new gcp.vertex.AiFeatureGroupFeature("sample_feature", {
///     name: "example_feature_view_feature_registry",
///     region: "us-central1",
///     featureGroup: sampleFeatureGroup.name,
///     description: "A sample feature",
///     labels: {
///         "label-one": "value-one",
///     },
/// });
/// const featureviewFeatureregistry = new gcp.vertex.AiFeatureOnlineStoreFeatureview("featureview_featureregistry", {
///     name: "example_feature_view_feature_registry",
///     region: "us-central1",
///     featureOnlineStore: featureonlinestore.name,
///     syncConfig: {
///         cron: "0 0 * * *",
///     },
///     featureRegistrySource: {
///         featureGroups: [{
///             featureGroupId: sampleFeatureGroup.name,
///             featureIds: [sampleFeature.name],
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// featureonlinestore = gcp.vertex.AiFeatureOnlineStore("featureonlinestore",
///     name="example_feature_view_feature_registry",
///     labels={
///         "foo": "bar",
///     },
///     region="us-central1",
///     bigtable={
///         "auto_scaling": {
///             "min_node_count": 1,
///             "max_node_count": 2,
///             "cpu_utilization_target": 80,
///         },
///     })
/// sample_dataset = gcp.bigquery.Dataset("sample_dataset",
///     dataset_id="example_feature_view_feature_registry",
///     friendly_name="test",
///     description="This is a test description",
///     location="US")
/// sample_table = gcp.bigquery.Table("sample_table",
///     deletion_protection=False,
///     dataset_id=sample_dataset.dataset_id,
///     table_id="example_feature_view_feature_registry",
///     schema="""[
///     {
///         \"name\": \"feature_id\",
///         \"type\": \"STRING\",
///         \"mode\": \"NULLABLE\"
///     },
///     {
///         \"name\": \"example_feature_view_feature_registry\",
///         \"type\": \"STRING\",
///         \"mode\": \"NULLABLE\"
///     },
///     {
///         \"name\": \"feature_timestamp\",
///         \"type\": \"TIMESTAMP\",
///         \"mode\": \"NULLABLE\"
///     }
/// ]
/// """)
/// sample_feature_group = gcp.vertex.AiFeatureGroup("sample_feature_group",
///     name="example_feature_view_feature_registry",
///     description="A sample feature group",
///     region="us-central1",
///     labels={
///         "label-one": "value-one",
///     },
///     big_query={
///         "big_query_source": {
///             "input_uri": pulumi.Output.all(
///                 project=sample_table.project,
///                 dataset_id=sample_table.dataset_id,
///                 table_id=sample_table.table_id
/// ).apply(lambda resolved_outputs: f"bq://{resolved_outputs['project']}.{resolved_outputs['dataset_id']}.{resolved_outputs['table_id']}")
/// ,
///         },
///         "entity_id_columns": ["feature_id"],
///     })
/// sample_feature = gcp.vertex.AiFeatureGroupFeature("sample_feature",
///     name="example_feature_view_feature_registry",
///     region="us-central1",
///     feature_group=sample_feature_group.name,
///     description="A sample feature",
///     labels={
///         "label-one": "value-one",
///     })
/// featureview_featureregistry = gcp.vertex.AiFeatureOnlineStoreFeatureview("featureview_featureregistry",
///     name="example_feature_view_feature_registry",
///     region="us-central1",
///     feature_online_store=featureonlinestore.name,
///     sync_config={
///         "cron": "0 0 * * *",
///     },
///     feature_registry_source={
///         "feature_groups": [{
///             "feature_group_id": sample_feature_group.name,
///             "feature_ids": [sample_feature.name],
///         }],
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
///     var featureonlinestore = new Gcp.Vertex.AiFeatureOnlineStore("featureonlinestore", new()
///     {
///         Name = "example_feature_view_feature_registry",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Region = "us-central1",
///         Bigtable = new Gcp.Vertex.Inputs.AiFeatureOnlineStoreBigtableArgs
///         {
///             AutoScaling = new Gcp.Vertex.Inputs.AiFeatureOnlineStoreBigtableAutoScalingArgs
///             {
///                 MinNodeCount = 1,
///                 MaxNodeCount = 2,
///                 CpuUtilizationTarget = 80,
///             },
///         },
///     });
///
///     var sampleDataset = new Gcp.BigQuery.Dataset("sample_dataset", new()
///     {
///         DatasetId = "example_feature_view_feature_registry",
///         FriendlyName = "test",
///         Description = "This is a test description",
///         Location = "US",
///     });
///
///     var sampleTable = new Gcp.BigQuery.Table("sample_table", new()
///     {
///         DeletionProtection = false,
///         DatasetId = sampleDataset.DatasetId,
///         TableId = "example_feature_view_feature_registry",
///         Schema = @"[
///     {
///         \""name\"": \""feature_id\"",
///         \""type\"": \""STRING\"",
///         \""mode\"": \""NULLABLE\""
///     },
///     {
///         \""name\"": \""example_feature_view_feature_registry\"",
///         \""type\"": \""STRING\"",
///         \""mode\"": \""NULLABLE\""
///     },
///     {
///         \""name\"": \""feature_timestamp\"",
///         \""type\"": \""TIMESTAMP\"",
///         \""mode\"": \""NULLABLE\""
///     }
/// ]
/// ",
///     });
///
///     var sampleFeatureGroup = new Gcp.Vertex.AiFeatureGroup("sample_feature_group", new()
///     {
///         Name = "example_feature_view_feature_registry",
///         Description = "A sample feature group",
///         Region = "us-central1",
///         Labels =
///         {
///             { "label-one", "value-one" },
///         },
///         BigQuery = new Gcp.Vertex.Inputs.AiFeatureGroupBigQueryArgs
///         {
///             BigQuerySource = new Gcp.Vertex.Inputs.AiFeatureGroupBigQueryBigQuerySourceArgs
///             {
///                 InputUri = Output.Tuple(sampleTable.Project, sampleTable.DatasetId, sampleTable.TableId).Apply(values =>
///                 {
///                     var project = values.Item1;
///                     var datasetId = values.Item2;
///                     var tableId = values.Item3;
///                     return $"bq://{project}.{datasetId}.{tableId}";
///                 }),
///             },
///             EntityIdColumns = new[]
///             {
///                 "feature_id",
///             },
///         },
///     });
///
///     var sampleFeature = new Gcp.Vertex.AiFeatureGroupFeature("sample_feature", new()
///     {
///         Name = "example_feature_view_feature_registry",
///         Region = "us-central1",
///         FeatureGroup = sampleFeatureGroup.Name,
///         Description = "A sample feature",
///         Labels =
///         {
///             { "label-one", "value-one" },
///         },
///     });
///
///     var featureviewFeatureregistry = new Gcp.Vertex.AiFeatureOnlineStoreFeatureview("featureview_featureregistry", new()
///     {
///         Name = "example_feature_view_feature_registry",
///         Region = "us-central1",
///         FeatureOnlineStore = featureonlinestore.Name,
///         SyncConfig = new Gcp.Vertex.Inputs.AiFeatureOnlineStoreFeatureviewSyncConfigArgs
///         {
///             Cron = "0 0 * * *",
///         },
///         FeatureRegistrySource = new Gcp.Vertex.Inputs.AiFeatureOnlineStoreFeatureviewFeatureRegistrySourceArgs
///         {
///             FeatureGroups = new[]
///             {
///                 new Gcp.Vertex.Inputs.AiFeatureOnlineStoreFeatureviewFeatureRegistrySourceFeatureGroupArgs
///                 {
///                     FeatureGroupId = sampleFeatureGroup.Name,
///                     FeatureIds = new[]
///                     {
///                         sampleFeature.Name,
///                     },
///                 },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		featureonlinestore, err := vertex.NewAiFeatureOnlineStore(ctx, "featureonlinestore", &vertex.AiFeatureOnlineStoreArgs{
/// 			Name: pulumi.String("example_feature_view_feature_registry"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Region: pulumi.String("us-central1"),
/// 			Bigtable: &vertex.AiFeatureOnlineStoreBigtableArgs{
/// 				AutoScaling: &vertex.AiFeatureOnlineStoreBigtableAutoScalingArgs{
/// 					MinNodeCount:         pulumi.Int(1),
/// 					MaxNodeCount:         pulumi.Int(2),
/// 					CpuUtilizationTarget: pulumi.Int(80),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sampleDataset, err := bigquery.NewDataset(ctx, "sample_dataset", &bigquery.DatasetArgs{
/// 			DatasetId:    pulumi.String("example_feature_view_feature_registry"),
/// 			FriendlyName: pulumi.String("test"),
/// 			Description:  pulumi.String("This is a test description"),
/// 			Location:     pulumi.String("US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sampleTable, err := bigquery.NewTable(ctx, "sample_table", &bigquery.TableArgs{
/// 			DeletionProtection: pulumi.Bool(false),
/// 			DatasetId:          sampleDataset.DatasetId,
/// 			TableId:            pulumi.String("example_feature_view_feature_registry"),
/// 			Schema: pulumi.String(`[
///     {
///         \"name\": \"feature_id\",
///         \"type\": \"STRING\",
///         \"mode\": \"NULLABLE\"
///     },
///     {
///         \"name\": \"example_feature_view_feature_registry\",
///         \"type\": \"STRING\",
///         \"mode\": \"NULLABLE\"
///     },
///     {
///         \"name\": \"feature_timestamp\",
///         \"type\": \"TIMESTAMP\",
///         \"mode\": \"NULLABLE\"
///     }
/// ]
/// `),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sampleFeatureGroup, err := vertex.NewAiFeatureGroup(ctx, "sample_feature_group", &vertex.AiFeatureGroupArgs{
/// 			Name:        pulumi.String("example_feature_view_feature_registry"),
/// 			Description: pulumi.String("A sample feature group"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Labels: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
/// 			BigQuery: &vertex.AiFeatureGroupBigQueryArgs{
/// 				BigQuerySource: &vertex.AiFeatureGroupBigQueryBigQuerySourceArgs{
/// 					InputUri: pulumi.All(sampleTable.Project, sampleTable.DatasetId, sampleTable.TableId).ApplyT(func(_args []interface{}) (string, error) {
/// 						project := _args[0].(string)
/// 						datasetId := _args[1].(string)
/// 						tableId := _args[2].(string)
/// 						return fmt.Sprintf("bq://%v.%v.%v", project, datasetId, tableId), nil
/// 					}).(pulumi.StringOutput),
/// 				},
/// 				EntityIdColumns: pulumi.StringArray{
/// 					pulumi.String("feature_id"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sampleFeature, err := vertex.NewAiFeatureGroupFeature(ctx, "sample_feature", &vertex.AiFeatureGroupFeatureArgs{
/// 			Name:         pulumi.String("example_feature_view_feature_registry"),
/// 			Region:       pulumi.String("us-central1"),
/// 			FeatureGroup: sampleFeatureGroup.Name,
/// 			Description:  pulumi.String("A sample feature"),
/// 			Labels: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vertex.NewAiFeatureOnlineStoreFeatureview(ctx, "featureview_featureregistry", &vertex.AiFeatureOnlineStoreFeatureviewArgs{
/// 			Name:               pulumi.String("example_feature_view_feature_registry"),
/// 			Region:             pulumi.String("us-central1"),
/// 			FeatureOnlineStore: featureonlinestore.Name,
/// 			SyncConfig: &vertex.AiFeatureOnlineStoreFeatureviewSyncConfigArgs{
/// 				Cron: pulumi.String("0 0 * * *"),
/// 			},
/// 			FeatureRegistrySource: &vertex.AiFeatureOnlineStoreFeatureviewFeatureRegistrySourceArgs{
/// 				FeatureGroups: vertex.AiFeatureOnlineStoreFeatureviewFeatureRegistrySourceFeatureGroupArray{
/// 					&vertex.AiFeatureOnlineStoreFeatureviewFeatureRegistrySourceFeatureGroupArgs{
/// 						FeatureGroupId: sampleFeatureGroup.Name,
/// 						FeatureIds: pulumi.StringArray{
/// 							sampleFeature.Name,
/// 						},
/// 					},
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
/// import com.pulumi.gcp.vertex.AiFeatureOnlineStore;
/// import com.pulumi.gcp.vertex.AiFeatureOnlineStoreArgs;
/// import com.pulumi.gcp.vertex.inputs.AiFeatureOnlineStoreBigtableArgs;
/// import com.pulumi.gcp.vertex.inputs.AiFeatureOnlineStoreBigtableAutoScalingArgs;
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.bigquery.Table;
/// import com.pulumi.gcp.bigquery.TableArgs;
/// import com.pulumi.gcp.vertex.AiFeatureGroup;
/// import com.pulumi.gcp.vertex.AiFeatureGroupArgs;
/// import com.pulumi.gcp.vertex.inputs.AiFeatureGroupBigQueryArgs;
/// import com.pulumi.gcp.vertex.inputs.AiFeatureGroupBigQueryBigQuerySourceArgs;
/// import com.pulumi.gcp.vertex.AiFeatureGroupFeature;
/// import com.pulumi.gcp.vertex.AiFeatureGroupFeatureArgs;
/// import com.pulumi.gcp.vertex.AiFeatureOnlineStoreFeatureview;
/// import com.pulumi.gcp.vertex.AiFeatureOnlineStoreFeatureviewArgs;
/// import com.pulumi.gcp.vertex.inputs.AiFeatureOnlineStoreFeatureviewSyncConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiFeatureOnlineStoreFeatureviewFeatureRegistrySourceArgs;
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
///         var featureonlinestore = new AiFeatureOnlineStore("featureonlinestore", AiFeatureOnlineStoreArgs.builder()
///             .name("example_feature_view_feature_registry")
///             .labels(Map.of("foo", "bar"))
///             .region("us-central1")
///             .bigtable(AiFeatureOnlineStoreBigtableArgs.builder()
///                 .autoScaling(AiFeatureOnlineStoreBigtableAutoScalingArgs.builder()
///                     .minNodeCount(1)
///                     .maxNodeCount(2)
///                     .cpuUtilizationTarget(80)
///                     .build())
///                 .build())
///             .build());
///
///         var sampleDataset = new Dataset("sampleDataset", DatasetArgs.builder()
///             .datasetId("example_feature_view_feature_registry")
///             .friendlyName("test")
///             .description("This is a test description")
///             .location("US")
///             .build());
///
///         var sampleTable = new Table("sampleTable", TableArgs.builder()
///             .deletionProtection(false)
///             .datasetId(sampleDataset.datasetId())
///             .tableId("example_feature_view_feature_registry")
///             .schema("""
/// [
///     {
///         \"name\": \"feature_id\",
///         \"type\": \"STRING\",
///         \"mode\": \"NULLABLE\"
///     },
///     {
///         \"name\": \"example_feature_view_feature_registry\",
///         \"type\": \"STRING\",
///         \"mode\": \"NULLABLE\"
///     },
///     {
///         \"name\": \"feature_timestamp\",
///         \"type\": \"TIMESTAMP\",
///         \"mode\": \"NULLABLE\"
///     }
/// ]
///             """)
///             .build());
///
///         var sampleFeatureGroup = new AiFeatureGroup("sampleFeatureGroup", AiFeatureGroupArgs.builder()
///             .name("example_feature_view_feature_registry")
///             .description("A sample feature group")
///             .region("us-central1")
///             .labels(Map.of("label-one", "value-one"))
///             .bigQuery(AiFeatureGroupBigQueryArgs.builder()
///                 .bigQuerySource(AiFeatureGroupBigQueryBigQuerySourceArgs.builder()
///                     .inputUri(Output.tuple(sampleTable.project(), sampleTable.datasetId(), sampleTable.tableId()).applyValue(values -> {
///                         var project = values.t1;
///                         var datasetId = values.t2;
///                         var tableId = values.t3;
///                         return String.format("bq://%s.%s.%s", project,datasetId,tableId);
///                     }))
///                     .build())
///                 .entityIdColumns("feature_id")
///                 .build())
///             .build());
///
///         var sampleFeature = new AiFeatureGroupFeature("sampleFeature", AiFeatureGroupFeatureArgs.builder()
///             .name("example_feature_view_feature_registry")
///             .region("us-central1")
///             .featureGroup(sampleFeatureGroup.name())
///             .description("A sample feature")
///             .labels(Map.of("label-one", "value-one"))
///             .build());
///
///         var featureviewFeatureregistry = new AiFeatureOnlineStoreFeatureview("featureviewFeatureregistry", AiFeatureOnlineStoreFeatureviewArgs.builder()
///             .name("example_feature_view_feature_registry")
///             .region("us-central1")
///             .featureOnlineStore(featureonlinestore.name())
///             .syncConfig(AiFeatureOnlineStoreFeatureviewSyncConfigArgs.builder()
///                 .cron("0 0 * * *")
///                 .build())
///             .featureRegistrySource(AiFeatureOnlineStoreFeatureviewFeatureRegistrySourceArgs.builder()
///                 .featureGroups(AiFeatureOnlineStoreFeatureviewFeatureRegistrySourceFeatureGroupArgs.builder()
///                     .featureGroupId(sampleFeatureGroup.name())
///                     .featureIds(sampleFeature.name())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   featureonlinestore:
///     type: gcp:vertex:AiFeatureOnlineStore
///     properties:
///       name: example_feature_view_feature_registry
///       labels:
///         foo: bar
///       region: us-central1
///       bigtable:
///         autoScaling:
///           minNodeCount: 1
///           maxNodeCount: 2
///           cpuUtilizationTarget: 80
///   sampleDataset:
///     type: gcp:bigquery:Dataset
///     name: sample_dataset
///     properties:
///       datasetId: example_feature_view_feature_registry
///       friendlyName: test
///       description: This is a test description
///       location: US
///   sampleTable:
///     type: gcp:bigquery:Table
///     name: sample_table
///     properties:
///       deletionProtection: false
///       datasetId: ${sampleDataset.datasetId}
///       tableId: example_feature_view_feature_registry
///       schema: |
///         [
///             {
///                 \"name\": \"feature_id\",
///                 \"type\": \"STRING\",
///                 \"mode\": \"NULLABLE\"
///             },
///             {
///                 \"name\": \"example_feature_view_feature_registry\",
///                 \"type\": \"STRING\",
///                 \"mode\": \"NULLABLE\"
///             },
///             {
///                 \"name\": \"feature_timestamp\",
///                 \"type\": \"TIMESTAMP\",
///                 \"mode\": \"NULLABLE\"
///             }
///         ]
///   sampleFeatureGroup:
///     type: gcp:vertex:AiFeatureGroup
///     name: sample_feature_group
///     properties:
///       name: example_feature_view_feature_registry
///       description: A sample feature group
///       region: us-central1
///       labels:
///         label-one: value-one
///       bigQuery:
///         bigQuerySource:
///           inputUri: bq://${sampleTable.project}.${sampleTable.datasetId}.${sampleTable.tableId}
///         entityIdColumns:
///           - feature_id
///   sampleFeature:
///     type: gcp:vertex:AiFeatureGroupFeature
///     name: sample_feature
///     properties:
///       name: example_feature_view_feature_registry
///       region: us-central1
///       featureGroup: ${sampleFeatureGroup.name}
///       description: A sample feature
///       labels:
///         label-one: value-one
///   featureviewFeatureregistry:
///     type: gcp:vertex:AiFeatureOnlineStoreFeatureview
///     name: featureview_featureregistry
///     properties:
///       name: example_feature_view_feature_registry
///       region: us-central1
///       featureOnlineStore: ${featureonlinestore.name}
///       syncConfig:
///         cron: 0 0 * * *
///       featureRegistrySource:
///         featureGroups:
///           - featureGroupId: ${sampleFeatureGroup.name}
///             featureIds:
///               - ${sampleFeature.name}
/// ```
///
/// ### Vertex Ai Featureonlinestore Featureview Cross Project
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const testProject = gcp.organizations.getProject({});
/// const project = new gcp.organizations.Project("project", {
///     projectId: "tf-test_45397",
///     name: "tf-test_16451",
///     orgId: "123456789",
///     billingAccount: "000000-0000000-0000000-000000",
///     deletionPolicy: "DELETE",
/// });
/// const wait60Seconds = new time.Sleep("wait_60_seconds", {createDuration: "60s"}, {
///     dependsOn: [project],
/// });
/// const vertexai = new gcp.projects.Service("vertexai", {
///     service: "aiplatform.googleapis.com",
///     project: project.projectId,
/// }, {
///     dependsOn: [wait60Seconds],
/// });
/// const featureonlinestore = new gcp.vertex.AiFeatureOnlineStore("featureonlinestore", {
///     name: "example_cross_project_featureview",
///     project: project.projectId,
///     labels: {
///         foo: "bar",
///     },
///     region: "us-central1",
///     bigtable: {
///         autoScaling: {
///             minNodeCount: 1,
///             maxNodeCount: 2,
///             cpuUtilizationTarget: 80,
///         },
///     },
/// }, {
///     dependsOn: [vertexai],
/// });
/// const sampleDataset = new gcp.bigquery.Dataset("sample_dataset", {
///     datasetId: "example_cross_project_featureview",
///     friendlyName: "test",
///     description: "This is a test description",
///     location: "US",
/// });
/// const viewer = new gcp.bigquery.DatasetIamMember("viewer", {
///     project: testProject.then(testProject => testProject.projectId),
///     datasetId: sampleDataset.datasetId,
///     role: "roles/bigquery.dataViewer",
///     member: pulumi.interpolate`serviceAccount:service-${project.number}@gcp-sa-aiplatform.iam.gserviceaccount.com`,
/// }, {
///     dependsOn: [featureonlinestore],
/// });
/// const wait30Seconds = new time.Sleep("wait_30_seconds", {createDuration: "30s"}, {
///     dependsOn: [viewer],
/// });
/// const sampleTable = new gcp.bigquery.Table("sample_table", {
///     deletionProtection: false,
///     datasetId: sampleDataset.datasetId,
///     tableId: "example_cross_project_featureview",
///     schema: `[
///     {
///         \\"name\\": \\"feature_id\\",
///         \\"type\\": \\"STRING\\",
///         \\"mode\\": \\"NULLABLE\\"
///     },
///     {
///         \\"name\\": \\"example_cross_project_featureview\\",
///         \\"type\\": \\"STRING\\",
///         \\"mode\\": \\"NULLABLE\\"
///     },
///     {
///         \\"name\\": \\"feature_timestamp\\",
///         \\"type\\": \\"TIMESTAMP\\",
///         \\"mode\\": \\"NULLABLE\\"
///     }
/// ]
/// `,
/// });
/// const sampleFeatureGroup = new gcp.vertex.AiFeatureGroup("sample_feature_group", {
///     name: "example_cross_project_featureview",
///     description: "A sample feature group",
///     region: "us-central1",
///     labels: {
///         "label-one": "value-one",
///     },
///     bigQuery: {
///         bigQuerySource: {
///             inputUri: pulumi.interpolate`bq://${sampleTable.project}.${sampleTable.datasetId}.${sampleTable.tableId}`,
///         },
///         entityIdColumns: ["feature_id"],
///     },
/// });
/// const sampleFeature = new gcp.vertex.AiFeatureGroupFeature("sample_feature", {
///     name: "example_cross_project_featureview",
///     region: "us-central1",
///     featureGroup: sampleFeatureGroup.name,
///     description: "A sample feature",
///     labels: {
///         "label-one": "value-one",
///     },
/// });
/// const crossProjectFeatureview = new gcp.vertex.AiFeatureOnlineStoreFeatureview("cross_project_featureview", {
///     name: "example_cross_project_featureview",
///     project: project.projectId,
///     region: "us-central1",
///     featureOnlineStore: featureonlinestore.name,
///     syncConfig: {
///         continuous: true,
///     },
///     featureRegistrySource: {
///         featureGroups: [{
///             featureGroupId: sampleFeatureGroup.name,
///             featureIds: [sampleFeature.name],
///         }],
///         projectNumber: testProject.then(testProject => testProject.number),
///     },
/// }, {
///     dependsOn: [
///         vertexai,
///         wait30Seconds,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// test_project = gcp.organizations.get_project()
/// project = gcp.organizations.Project("project",
///     project_id="tf-test_45397",
///     name="tf-test_16451",
///     org_id="123456789",
///     billing_account="000000-0000000-0000000-000000",
///     deletion_policy="DELETE")
/// wait60_seconds = time.Sleep("wait_60_seconds", create_duration="60s",
/// opts = pulumi.ResourceOptions(depends_on=[project]))
/// vertexai = gcp.projects.Service("vertexai",
///     service="aiplatform.googleapis.com",
///     project=project.project_id,
///     opts = pulumi.ResourceOptions(depends_on=[wait60_seconds]))
/// featureonlinestore = gcp.vertex.AiFeatureOnlineStore("featureonlinestore",
///     name="example_cross_project_featureview",
///     project=project.project_id,
///     labels={
///         "foo": "bar",
///     },
///     region="us-central1",
///     bigtable={
///         "auto_scaling": {
///             "min_node_count": 1,
///             "max_node_count": 2,
///             "cpu_utilization_target": 80,
///         },
///     },
///     opts = pulumi.ResourceOptions(depends_on=[vertexai]))
/// sample_dataset = gcp.bigquery.Dataset("sample_dataset",
///     dataset_id="example_cross_project_featureview",
///     friendly_name="test",
///     description="This is a test description",
///     location="US")
/// viewer = gcp.bigquery.DatasetIamMember("viewer",
///     project=test_project.project_id,
///     dataset_id=sample_dataset.dataset_id,
///     role="roles/bigquery.dataViewer",
///     member=project.number.apply(lambda number: f"serviceAccount:service-{number}@gcp-sa-aiplatform.iam.gserviceaccount.com"),
///     opts = pulumi.ResourceOptions(depends_on=[featureonlinestore]))
/// wait30_seconds = time.Sleep("wait_30_seconds", create_duration="30s",
/// opts = pulumi.ResourceOptions(depends_on=[viewer]))
/// sample_table = gcp.bigquery.Table("sample_table",
///     deletion_protection=False,
///     dataset_id=sample_dataset.dataset_id,
///     table_id="example_cross_project_featureview",
///     schema="""[
///     {
///         \"name\": \"feature_id\",
///         \"type\": \"STRING\",
///         \"mode\": \"NULLABLE\"
///     },
///     {
///         \"name\": \"example_cross_project_featureview\",
///         \"type\": \"STRING\",
///         \"mode\": \"NULLABLE\"
///     },
///     {
///         \"name\": \"feature_timestamp\",
///         \"type\": \"TIMESTAMP\",
///         \"mode\": \"NULLABLE\"
///     }
/// ]
/// """)
/// sample_feature_group = gcp.vertex.AiFeatureGroup("sample_feature_group",
///     name="example_cross_project_featureview",
///     description="A sample feature group",
///     region="us-central1",
///     labels={
///         "label-one": "value-one",
///     },
///     big_query={
///         "big_query_source": {
///             "input_uri": pulumi.Output.all(
///                 project=sample_table.project,
///                 dataset_id=sample_table.dataset_id,
///                 table_id=sample_table.table_id
/// ).apply(lambda resolved_outputs: f"bq://{resolved_outputs['project']}.{resolved_outputs['dataset_id']}.{resolved_outputs['table_id']}")
/// ,
///         },
///         "entity_id_columns": ["feature_id"],
///     })
/// sample_feature = gcp.vertex.AiFeatureGroupFeature("sample_feature",
///     name="example_cross_project_featureview",
///     region="us-central1",
///     feature_group=sample_feature_group.name,
///     description="A sample feature",
///     labels={
///         "label-one": "value-one",
///     })
/// cross_project_featureview = gcp.vertex.AiFeatureOnlineStoreFeatureview("cross_project_featureview",
///     name="example_cross_project_featureview",
///     project=project.project_id,
///     region="us-central1",
///     feature_online_store=featureonlinestore.name,
///     sync_config={
///         "continuous": True,
///     },
///     feature_registry_source={
///         "feature_groups": [{
///             "feature_group_id": sample_feature_group.name,
///             "feature_ids": [sample_feature.name],
///         }],
///         "project_number": test_project.number,
///     },
///     opts = pulumi.ResourceOptions(depends_on=[
///             vertexai,
///             wait30_seconds,
///         ]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Time = Pulumiverse.Time;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testProject = Gcp.Organizations.GetProject.Invoke();
///
///     var project = new Gcp.Organizations.Project("project", new()
///     {
///         ProjectId = "tf-test_45397",
///         Name = "tf-test_16451",
///         OrgId = "123456789",
///         BillingAccount = "000000-0000000-0000000-000000",
///         DeletionPolicy = "DELETE",
///     });
///
///     var wait60Seconds = new Time.Sleep("wait_60_seconds", new()
///     {
///         CreateDuration = "60s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             project,
///         },
///     });
///
///     var vertexai = new Gcp.Projects.Service("vertexai", new()
///     {
///         ServiceName = "aiplatform.googleapis.com",
///         Project = project.ProjectId,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             wait60Seconds,
///         },
///     });
///
///     var featureonlinestore = new Gcp.Vertex.AiFeatureOnlineStore("featureonlinestore", new()
///     {
///         Name = "example_cross_project_featureview",
///         Project = project.ProjectId,
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Region = "us-central1",
///         Bigtable = new Gcp.Vertex.Inputs.AiFeatureOnlineStoreBigtableArgs
///         {
///             AutoScaling = new Gcp.Vertex.Inputs.AiFeatureOnlineStoreBigtableAutoScalingArgs
///             {
///                 MinNodeCount = 1,
///                 MaxNodeCount = 2,
///                 CpuUtilizationTarget = 80,
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             vertexai,
///         },
///     });
///
///     var sampleDataset = new Gcp.BigQuery.Dataset("sample_dataset", new()
///     {
///         DatasetId = "example_cross_project_featureview",
///         FriendlyName = "test",
///         Description = "This is a test description",
///         Location = "US",
///     });
///
///     var viewer = new Gcp.BigQuery.DatasetIamMember("viewer", new()
///     {
///         Project = testProject.Apply(getProjectResult => getProjectResult.ProjectId),
///         DatasetId = sampleDataset.DatasetId,
///         Role = "roles/bigquery.dataViewer",
///         Member = project.Number.Apply(number => $"serviceAccount:service-{number}@gcp-sa-aiplatform.iam.gserviceaccount.com"),
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             featureonlinestore,
///         },
///     });
///
///     var wait30Seconds = new Time.Sleep("wait_30_seconds", new()
///     {
///         CreateDuration = "30s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             viewer,
///         },
///     });
///
///     var sampleTable = new Gcp.BigQuery.Table("sample_table", new()
///     {
///         DeletionProtection = false,
///         DatasetId = sampleDataset.DatasetId,
///         TableId = "example_cross_project_featureview",
///         Schema = @"[
///     {
///         \""name\"": \""feature_id\"",
///         \""type\"": \""STRING\"",
///         \""mode\"": \""NULLABLE\""
///     },
///     {
///         \""name\"": \""example_cross_project_featureview\"",
///         \""type\"": \""STRING\"",
///         \""mode\"": \""NULLABLE\""
///     },
///     {
///         \""name\"": \""feature_timestamp\"",
///         \""type\"": \""TIMESTAMP\"",
///         \""mode\"": \""NULLABLE\""
///     }
/// ]
/// ",
///     });
///
///     var sampleFeatureGroup = new Gcp.Vertex.AiFeatureGroup("sample_feature_group", new()
///     {
///         Name = "example_cross_project_featureview",
///         Description = "A sample feature group",
///         Region = "us-central1",
///         Labels =
///         {
///             { "label-one", "value-one" },
///         },
///         BigQuery = new Gcp.Vertex.Inputs.AiFeatureGroupBigQueryArgs
///         {
///             BigQuerySource = new Gcp.Vertex.Inputs.AiFeatureGroupBigQueryBigQuerySourceArgs
///             {
///                 InputUri = Output.Tuple(sampleTable.Project, sampleTable.DatasetId, sampleTable.TableId).Apply(values =>
///                 {
///                     var project = values.Item1;
///                     var datasetId = values.Item2;
///                     var tableId = values.Item3;
///                     return $"bq://{project}.{datasetId}.{tableId}";
///                 }),
///             },
///             EntityIdColumns = new[]
///             {
///                 "feature_id",
///             },
///         },
///     });
///
///     var sampleFeature = new Gcp.Vertex.AiFeatureGroupFeature("sample_feature", new()
///     {
///         Name = "example_cross_project_featureview",
///         Region = "us-central1",
///         FeatureGroup = sampleFeatureGroup.Name,
///         Description = "A sample feature",
///         Labels =
///         {
///             { "label-one", "value-one" },
///         },
///     });
///
///     var crossProjectFeatureview = new Gcp.Vertex.AiFeatureOnlineStoreFeatureview("cross_project_featureview", new()
///     {
///         Name = "example_cross_project_featureview",
///         Project = project.ProjectId,
///         Region = "us-central1",
///         FeatureOnlineStore = featureonlinestore.Name,
///         SyncConfig = new Gcp.Vertex.Inputs.AiFeatureOnlineStoreFeatureviewSyncConfigArgs
///         {
///             Continuous = true,
///         },
///         FeatureRegistrySource = new Gcp.Vertex.Inputs.AiFeatureOnlineStoreFeatureviewFeatureRegistrySourceArgs
///         {
///             FeatureGroups = new[]
///             {
///                 new Gcp.Vertex.Inputs.AiFeatureOnlineStoreFeatureviewFeatureRegistrySourceFeatureGroupArgs
///                 {
///                     FeatureGroupId = sampleFeatureGroup.Name,
///                     FeatureIds = new[]
///                     {
///                         sampleFeature.Name,
///                     },
///                 },
///             },
///             ProjectNumber = testProject.Apply(getProjectResult => getProjectResult.Number),
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             vertexai,
///             wait30Seconds,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		testProject, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		project, err := organizations.NewProject(ctx, "project", &organizations.ProjectArgs{
/// 			ProjectId:      pulumi.String("tf-test_45397"),
/// 			Name:           pulumi.String("tf-test_16451"),
/// 			OrgId:          pulumi.String("123456789"),
/// 			BillingAccount: pulumi.String("000000-0000000-0000000-000000"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		wait60Seconds, err := time.NewSleep(ctx, "wait_60_seconds", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("60s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			project,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vertexai, err := projects.NewService(ctx, "vertexai", &projects.ServiceArgs{
/// 			Service: pulumi.String("aiplatform.googleapis.com"),
/// 			Project: project.ProjectId,
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			wait60Seconds,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		featureonlinestore, err := vertex.NewAiFeatureOnlineStore(ctx, "featureonlinestore", &vertex.AiFeatureOnlineStoreArgs{
/// 			Name:    pulumi.String("example_cross_project_featureview"),
/// 			Project: project.ProjectId,
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Region: pulumi.String("us-central1"),
/// 			Bigtable: &vertex.AiFeatureOnlineStoreBigtableArgs{
/// 				AutoScaling: &vertex.AiFeatureOnlineStoreBigtableAutoScalingArgs{
/// 					MinNodeCount:         pulumi.Int(1),
/// 					MaxNodeCount:         pulumi.Int(2),
/// 					CpuUtilizationTarget: pulumi.Int(80),
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			vertexai,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sampleDataset, err := bigquery.NewDataset(ctx, "sample_dataset", &bigquery.DatasetArgs{
/// 			DatasetId:    pulumi.String("example_cross_project_featureview"),
/// 			FriendlyName: pulumi.String("test"),
/// 			Description:  pulumi.String("This is a test description"),
/// 			Location:     pulumi.String("US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		viewer, err := bigquery.NewDatasetIamMember(ctx, "viewer", &bigquery.DatasetIamMemberArgs{
/// 			Project:   pulumi.String(testProject.ProjectId),
/// 			DatasetId: sampleDataset.DatasetId,
/// 			Role:      pulumi.String("roles/bigquery.dataViewer"),
/// 			Member: project.Number.ApplyT(func(number string) (string, error) {
/// 				return fmt.Sprintf("serviceAccount:service-%v@gcp-sa-aiplatform.iam.gserviceaccount.com", number), nil
/// 			}).(pulumi.StringOutput),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			featureonlinestore,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		wait30Seconds, err := time.NewSleep(ctx, "wait_30_seconds", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("30s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			viewer,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sampleTable, err := bigquery.NewTable(ctx, "sample_table", &bigquery.TableArgs{
/// 			DeletionProtection: pulumi.Bool(false),
/// 			DatasetId:          sampleDataset.DatasetId,
/// 			TableId:            pulumi.String("example_cross_project_featureview"),
/// 			Schema: pulumi.String(`[
///     {
///         \"name\": \"feature_id\",
///         \"type\": \"STRING\",
///         \"mode\": \"NULLABLE\"
///     },
///     {
///         \"name\": \"example_cross_project_featureview\",
///         \"type\": \"STRING\",
///         \"mode\": \"NULLABLE\"
///     },
///     {
///         \"name\": \"feature_timestamp\",
///         \"type\": \"TIMESTAMP\",
///         \"mode\": \"NULLABLE\"
///     }
/// ]
/// `),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sampleFeatureGroup, err := vertex.NewAiFeatureGroup(ctx, "sample_feature_group", &vertex.AiFeatureGroupArgs{
/// 			Name:        pulumi.String("example_cross_project_featureview"),
/// 			Description: pulumi.String("A sample feature group"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Labels: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
/// 			BigQuery: &vertex.AiFeatureGroupBigQueryArgs{
/// 				BigQuerySource: &vertex.AiFeatureGroupBigQueryBigQuerySourceArgs{
/// 					InputUri: pulumi.All(sampleTable.Project, sampleTable.DatasetId, sampleTable.TableId).ApplyT(func(_args []interface{}) (string, error) {
/// 						project := _args[0].(string)
/// 						datasetId := _args[1].(string)
/// 						tableId := _args[2].(string)
/// 						return fmt.Sprintf("bq://%v.%v.%v", project, datasetId, tableId), nil
/// 					}).(pulumi.StringOutput),
/// 				},
/// 				EntityIdColumns: pulumi.StringArray{
/// 					pulumi.String("feature_id"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sampleFeature, err := vertex.NewAiFeatureGroupFeature(ctx, "sample_feature", &vertex.AiFeatureGroupFeatureArgs{
/// 			Name:         pulumi.String("example_cross_project_featureview"),
/// 			Region:       pulumi.String("us-central1"),
/// 			FeatureGroup: sampleFeatureGroup.Name,
/// 			Description:  pulumi.String("A sample feature"),
/// 			Labels: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vertex.NewAiFeatureOnlineStoreFeatureview(ctx, "cross_project_featureview", &vertex.AiFeatureOnlineStoreFeatureviewArgs{
/// 			Name:               pulumi.String("example_cross_project_featureview"),
/// 			Project:            project.ProjectId,
/// 			Region:             pulumi.String("us-central1"),
/// 			FeatureOnlineStore: featureonlinestore.Name,
/// 			SyncConfig: &vertex.AiFeatureOnlineStoreFeatureviewSyncConfigArgs{
/// 				Continuous: pulumi.Bool(true),
/// 			},
/// 			FeatureRegistrySource: &vertex.AiFeatureOnlineStoreFeatureviewFeatureRegistrySourceArgs{
/// 				FeatureGroups: vertex.AiFeatureOnlineStoreFeatureviewFeatureRegistrySourceFeatureGroupArray{
/// 					&vertex.AiFeatureOnlineStoreFeatureviewFeatureRegistrySourceFeatureGroupArgs{
/// 						FeatureGroupId: sampleFeatureGroup.Name,
/// 						FeatureIds: pulumi.StringArray{
/// 							sampleFeature.Name,
/// 						},
/// 					},
/// 				},
/// 				ProjectNumber: pulumi.String(testProject.Number),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			vertexai,
/// 			wait30Seconds,
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.organizations.Project;
/// import com.pulumi.gcp.organizations.ProjectArgs;
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.projects.Service;
/// import com.pulumi.gcp.projects.ServiceArgs;
/// import com.pulumi.gcp.vertex.AiFeatureOnlineStore;
/// import com.pulumi.gcp.vertex.AiFeatureOnlineStoreArgs;
/// import com.pulumi.gcp.vertex.inputs.AiFeatureOnlineStoreBigtableArgs;
/// import com.pulumi.gcp.vertex.inputs.AiFeatureOnlineStoreBigtableAutoScalingArgs;
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.bigquery.DatasetIamMember;
/// import com.pulumi.gcp.bigquery.DatasetIamMemberArgs;
/// import com.pulumi.gcp.bigquery.Table;
/// import com.pulumi.gcp.bigquery.TableArgs;
/// import com.pulumi.gcp.vertex.AiFeatureGroup;
/// import com.pulumi.gcp.vertex.AiFeatureGroupArgs;
/// import com.pulumi.gcp.vertex.inputs.AiFeatureGroupBigQueryArgs;
/// import com.pulumi.gcp.vertex.inputs.AiFeatureGroupBigQueryBigQuerySourceArgs;
/// import com.pulumi.gcp.vertex.AiFeatureGroupFeature;
/// import com.pulumi.gcp.vertex.AiFeatureGroupFeatureArgs;
/// import com.pulumi.gcp.vertex.AiFeatureOnlineStoreFeatureview;
/// import com.pulumi.gcp.vertex.AiFeatureOnlineStoreFeatureviewArgs;
/// import com.pulumi.gcp.vertex.inputs.AiFeatureOnlineStoreFeatureviewSyncConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiFeatureOnlineStoreFeatureviewFeatureRegistrySourceArgs;
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
///         final var testProject = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var project = new Project("project", ProjectArgs.builder()
///             .projectId("tf-test_45397")
///             .name("tf-test_16451")
///             .orgId("123456789")
///             .billingAccount("000000-0000000-0000000-000000")
///             .deletionPolicy("DELETE")
///             .build());
///
///         var wait60Seconds = new Sleep("wait60Seconds", SleepArgs.builder()
///             .createDuration("60s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(project)
///                 .build());
///
///         var vertexai = new Service("vertexai", ServiceArgs.builder()
///             .service("aiplatform.googleapis.com")
///             .project(project.projectId())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(wait60Seconds)
///                 .build());
///
///         var featureonlinestore = new AiFeatureOnlineStore("featureonlinestore", AiFeatureOnlineStoreArgs.builder()
///             .name("example_cross_project_featureview")
///             .project(project.projectId())
///             .labels(Map.of("foo", "bar"))
///             .region("us-central1")
///             .bigtable(AiFeatureOnlineStoreBigtableArgs.builder()
///                 .autoScaling(AiFeatureOnlineStoreBigtableAutoScalingArgs.builder()
///                     .minNodeCount(1)
///                     .maxNodeCount(2)
///                     .cpuUtilizationTarget(80)
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(vertexai)
///                 .build());
///
///         var sampleDataset = new Dataset("sampleDataset", DatasetArgs.builder()
///             .datasetId("example_cross_project_featureview")
///             .friendlyName("test")
///             .description("This is a test description")
///             .location("US")
///             .build());
///
///         var viewer = new DatasetIamMember("viewer", DatasetIamMemberArgs.builder()
///             .project(testProject.projectId())
///             .datasetId(sampleDataset.datasetId())
///             .role("roles/bigquery.dataViewer")
///             .member(project.number().applyValue(_number -> String.format("serviceAccount:service-%s@gcp-sa-aiplatform.iam.gserviceaccount.com", _number)))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(featureonlinestore)
///                 .build());
///
///         var wait30Seconds = new Sleep("wait30Seconds", SleepArgs.builder()
///             .createDuration("30s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(viewer)
///                 .build());
///
///         var sampleTable = new Table("sampleTable", TableArgs.builder()
///             .deletionProtection(false)
///             .datasetId(sampleDataset.datasetId())
///             .tableId("example_cross_project_featureview")
///             .schema("""
/// [
///     {
///         \"name\": \"feature_id\",
///         \"type\": \"STRING\",
///         \"mode\": \"NULLABLE\"
///     },
///     {
///         \"name\": \"example_cross_project_featureview\",
///         \"type\": \"STRING\",
///         \"mode\": \"NULLABLE\"
///     },
///     {
///         \"name\": \"feature_timestamp\",
///         \"type\": \"TIMESTAMP\",
///         \"mode\": \"NULLABLE\"
///     }
/// ]
///             """)
///             .build());
///
///         var sampleFeatureGroup = new AiFeatureGroup("sampleFeatureGroup", AiFeatureGroupArgs.builder()
///             .name("example_cross_project_featureview")
///             .description("A sample feature group")
///             .region("us-central1")
///             .labels(Map.of("label-one", "value-one"))
///             .bigQuery(AiFeatureGroupBigQueryArgs.builder()
///                 .bigQuerySource(AiFeatureGroupBigQueryBigQuerySourceArgs.builder()
///                     .inputUri(Output.tuple(sampleTable.project(), sampleTable.datasetId(), sampleTable.tableId()).applyValue(values -> {
///                         var project = values.t1;
///                         var datasetId = values.t2;
///                         var tableId = values.t3;
///                         return String.format("bq://%s.%s.%s", project,datasetId,tableId);
///                     }))
///                     .build())
///                 .entityIdColumns("feature_id")
///                 .build())
///             .build());
///
///         var sampleFeature = new AiFeatureGroupFeature("sampleFeature", AiFeatureGroupFeatureArgs.builder()
///             .name("example_cross_project_featureview")
///             .region("us-central1")
///             .featureGroup(sampleFeatureGroup.name())
///             .description("A sample feature")
///             .labels(Map.of("label-one", "value-one"))
///             .build());
///
///         var crossProjectFeatureview = new AiFeatureOnlineStoreFeatureview("crossProjectFeatureview", AiFeatureOnlineStoreFeatureviewArgs.builder()
///             .name("example_cross_project_featureview")
///             .project(project.projectId())
///             .region("us-central1")
///             .featureOnlineStore(featureonlinestore.name())
///             .syncConfig(AiFeatureOnlineStoreFeatureviewSyncConfigArgs.builder()
///                 .continuous(true)
///                 .build())
///             .featureRegistrySource(AiFeatureOnlineStoreFeatureviewFeatureRegistrySourceArgs.builder()
///                 .featureGroups(AiFeatureOnlineStoreFeatureviewFeatureRegistrySourceFeatureGroupArgs.builder()
///                     .featureGroupId(sampleFeatureGroup.name())
///                     .featureIds(sampleFeature.name())
///                     .build())
///                 .projectNumber(testProject.number())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     vertexai,
///                     wait30Seconds)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   project:
///     type: gcp:organizations:Project
///     properties:
///       projectId: tf-test_45397
///       name: tf-test_16451
///       orgId: '123456789'
///       billingAccount: 000000-0000000-0000000-000000
///       deletionPolicy: DELETE
///   wait60Seconds:
///     type: time:Sleep
///     name: wait_60_seconds
///     properties:
///       createDuration: 60s
///     options:
///       dependsOn:
///         - ${project}
///   wait30Seconds:
///     type: time:Sleep
///     name: wait_30_seconds
///     properties:
///       createDuration: 30s
///     options:
///       dependsOn:
///         - ${viewer}
///   vertexai:
///     type: gcp:projects:Service
///     properties:
///       service: aiplatform.googleapis.com
///       project: ${project.projectId}
///     options:
///       dependsOn:
///         - ${wait60Seconds}
///   viewer:
///     type: gcp:bigquery:DatasetIamMember
///     properties:
///       project: ${testProject.projectId}
///       datasetId: ${sampleDataset.datasetId}
///       role: roles/bigquery.dataViewer
///       member: serviceAccount:service-${project.number}@gcp-sa-aiplatform.iam.gserviceaccount.com
///     options:
///       dependsOn:
///         - ${featureonlinestore}
///   featureonlinestore:
///     type: gcp:vertex:AiFeatureOnlineStore
///     properties:
///       name: example_cross_project_featureview
///       project: ${project.projectId}
///       labels:
///         foo: bar
///       region: us-central1
///       bigtable:
///         autoScaling:
///           minNodeCount: 1
///           maxNodeCount: 2
///           cpuUtilizationTarget: 80
///     options:
///       dependsOn:
///         - ${vertexai}
///   sampleDataset:
///     type: gcp:bigquery:Dataset
///     name: sample_dataset
///     properties:
///       datasetId: example_cross_project_featureview
///       friendlyName: test
///       description: This is a test description
///       location: US
///   sampleTable:
///     type: gcp:bigquery:Table
///     name: sample_table
///     properties:
///       deletionProtection: false
///       datasetId: ${sampleDataset.datasetId}
///       tableId: example_cross_project_featureview
///       schema: |
///         [
///             {
///                 \"name\": \"feature_id\",
///                 \"type\": \"STRING\",
///                 \"mode\": \"NULLABLE\"
///             },
///             {
///                 \"name\": \"example_cross_project_featureview\",
///                 \"type\": \"STRING\",
///                 \"mode\": \"NULLABLE\"
///             },
///             {
///                 \"name\": \"feature_timestamp\",
///                 \"type\": \"TIMESTAMP\",
///                 \"mode\": \"NULLABLE\"
///             }
///         ]
///   sampleFeatureGroup:
///     type: gcp:vertex:AiFeatureGroup
///     name: sample_feature_group
///     properties:
///       name: example_cross_project_featureview
///       description: A sample feature group
///       region: us-central1
///       labels:
///         label-one: value-one
///       bigQuery:
///         bigQuerySource:
///           inputUri: bq://${sampleTable.project}.${sampleTable.datasetId}.${sampleTable.tableId}
///         entityIdColumns:
///           - feature_id
///   sampleFeature:
///     type: gcp:vertex:AiFeatureGroupFeature
///     name: sample_feature
///     properties:
///       name: example_cross_project_featureview
///       region: us-central1
///       featureGroup: ${sampleFeatureGroup.name}
///       description: A sample feature
///       labels:
///         label-one: value-one
///   crossProjectFeatureview:
///     type: gcp:vertex:AiFeatureOnlineStoreFeatureview
///     name: cross_project_featureview
///     properties:
///       name: example_cross_project_featureview
///       project: ${project.projectId}
///       region: us-central1
///       featureOnlineStore: ${featureonlinestore.name}
///       syncConfig:
///         continuous: true
///       featureRegistrySource:
///         featureGroups:
///           - featureGroupId: ${sampleFeatureGroup.name}
///             featureIds:
///               - ${sampleFeature.name}
///         projectNumber: ${testProject.number}
///     options:
///       dependsOn:
///         - ${vertexai}
///         - ${wait30Seconds}
/// variables:
///   testProject:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Vertex Ai Featureonlinestore Featureview With Vector Search
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const featureonlinestore = new gcp.vertex.AiFeatureOnlineStore("featureonlinestore", {
///     name: "example_feature_view_vector_search",
///     labels: {
///         foo: "bar",
///     },
///     region: "us-central1",
///     optimized: {},
///     embeddingManagement: {
///         enabled: true,
///     },
/// });
/// const tf_test_dataset = new gcp.bigquery.Dataset("tf-test-dataset", {
///     datasetId: "example_feature_view_vector_search",
///     friendlyName: "test",
///     description: "This is a test description",
///     location: "US",
/// });
/// const tf_test_table = new gcp.bigquery.Table("tf-test-table", {
///     deletionProtection: false,
///     datasetId: tf_test_dataset.datasetId,
///     tableId: "example_feature_view_vector_search",
///     schema: `[
/// {
///   \\"name\\": \\"test_primary_id\\",
///   \\"mode\\": \\"NULLABLE\\",
///   \\"type\\": \\"STRING\\",
///   \\"description\\": \\"primary test id\\"
/// },
/// {
///   \\"name\\": \\"embedding\\",
///   \\"mode\\": \\"REPEATED\\",
///   \\"type\\": \\"FLOAT\\",
///   \\"description\\": \\"embedding column for primary_id column\\"
/// },
/// {
///   \\"name\\": \\"country\\",
///   \\"mode\\": \\"NULLABLE\\",
///   \\"type\\": \\"STRING\\",
///   \\"description\\": \\"country\\"
/// },
/// {
///   \\"name\\": \\"test_crowding_column\\",
///   \\"mode\\": \\"NULLABLE\\",
///   \\"type\\": \\"INTEGER\\",
///   \\"description\\": \\"test crowding column\\"
/// },
/// {
///   \\"name\\": \\"entity_id\\",
///   \\"mode\\": \\"NULLABLE\\",
///   \\"type\\": \\"STRING\\",
///   \\"description\\": \\"Test default entity_id\\"
/// },
/// {
///   \\"name\\": \\"test_entity_column\\",
///   \\"mode\\": \\"NULLABLE\\",
///   \\"type\\": \\"STRING\\",
///   \\"description\\": \\"test secondary entity column\\"
/// },
/// {
///   \\"name\\": \\"feature_timestamp\\",
///   \\"mode\\": \\"NULLABLE\\",
///   \\"type\\": \\"TIMESTAMP\\",
///   \\"description\\": \\"Default timestamp value\\"
/// }
/// ]
/// `,
/// });
/// const featureviewVectorSearch = new gcp.vertex.AiFeatureOnlineStoreFeatureview("featureview_vector_search", {
///     name: "example_feature_view_vector_search",
///     region: "us-central1",
///     featureOnlineStore: featureonlinestore.name,
///     syncConfig: {
///         cron: "0 0 * * *",
///     },
///     bigQuerySource: {
///         uri: pulumi.interpolate`bq://${tf_test_table.project}.${tf_test_table.datasetId}.${tf_test_table.tableId}`,
///         entityIdColumns: ["test_entity_column"],
///     },
///     vectorSearchConfig: {
///         embeddingColumn: "embedding",
///         filterColumns: ["country"],
///         crowdingColumn: "test_crowding_column",
///         distanceMeasureType: "DOT_PRODUCT_DISTANCE",
///         treeAhConfig: {
///             leafNodeEmbeddingCount: "1000",
///         },
///         embeddingDimension: 2,
///     },
/// });
/// const project = gcp.organizations.getProject({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// featureonlinestore = gcp.vertex.AiFeatureOnlineStore("featureonlinestore",
///     name="example_feature_view_vector_search",
///     labels={
///         "foo": "bar",
///     },
///     region="us-central1",
///     optimized={},
///     embedding_management={
///         "enabled": True,
///     })
/// tf_test_dataset = gcp.bigquery.Dataset("tf-test-dataset",
///     dataset_id="example_feature_view_vector_search",
///     friendly_name="test",
///     description="This is a test description",
///     location="US")
/// tf_test_table = gcp.bigquery.Table("tf-test-table",
///     deletion_protection=False,
///     dataset_id=tf_test_dataset.dataset_id,
///     table_id="example_feature_view_vector_search",
///     schema="""[
/// {
///   \"name\": \"test_primary_id\",
///   \"mode\": \"NULLABLE\",
///   \"type\": \"STRING\",
///   \"description\": \"primary test id\"
/// },
/// {
///   \"name\": \"embedding\",
///   \"mode\": \"REPEATED\",
///   \"type\": \"FLOAT\",
///   \"description\": \"embedding column for primary_id column\"
/// },
/// {
///   \"name\": \"country\",
///   \"mode\": \"NULLABLE\",
///   \"type\": \"STRING\",
///   \"description\": \"country\"
/// },
/// {
///   \"name\": \"test_crowding_column\",
///   \"mode\": \"NULLABLE\",
///   \"type\": \"INTEGER\",
///   \"description\": \"test crowding column\"
/// },
/// {
///   \"name\": \"entity_id\",
///   \"mode\": \"NULLABLE\",
///   \"type\": \"STRING\",
///   \"description\": \"Test default entity_id\"
/// },
/// {
///   \"name\": \"test_entity_column\",
///   \"mode\": \"NULLABLE\",
///   \"type\": \"STRING\",
///   \"description\": \"test secondary entity column\"
/// },
/// {
///   \"name\": \"feature_timestamp\",
///   \"mode\": \"NULLABLE\",
///   \"type\": \"TIMESTAMP\",
///   \"description\": \"Default timestamp value\"
/// }
/// ]
/// """)
/// featureview_vector_search = gcp.vertex.AiFeatureOnlineStoreFeatureview("featureview_vector_search",
///     name="example_feature_view_vector_search",
///     region="us-central1",
///     feature_online_store=featureonlinestore.name,
///     sync_config={
///         "cron": "0 0 * * *",
///     },
///     big_query_source={
///         "uri": pulumi.Output.all(
///             project=tf_test_table.project,
///             dataset_id=tf_test_table.dataset_id,
///             table_id=tf_test_table.table_id
/// ).apply(lambda resolved_outputs: f"bq://{resolved_outputs['project']}.{resolved_outputs['dataset_id']}.{resolved_outputs['table_id']}")
/// ,
///         "entity_id_columns": ["test_entity_column"],
///     },
///     vector_search_config={
///         "embedding_column": "embedding",
///         "filter_columns": ["country"],
///         "crowding_column": "test_crowding_column",
///         "distance_measure_type": "DOT_PRODUCT_DISTANCE",
///         "tree_ah_config": {
///             "leaf_node_embedding_count": "1000",
///         },
///         "embedding_dimension": 2,
///     })
/// project = gcp.organizations.get_project()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var featureonlinestore = new Gcp.Vertex.AiFeatureOnlineStore("featureonlinestore", new()
///     {
///         Name = "example_feature_view_vector_search",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Region = "us-central1",
///         Optimized = null,
///         EmbeddingManagement = new Gcp.Vertex.Inputs.AiFeatureOnlineStoreEmbeddingManagementArgs
///         {
///             Enabled = true,
///         },
///     });
///
///     var tf_test_dataset = new Gcp.BigQuery.Dataset("tf-test-dataset", new()
///     {
///         DatasetId = "example_feature_view_vector_search",
///         FriendlyName = "test",
///         Description = "This is a test description",
///         Location = "US",
///     });
///
///     var tf_test_table = new Gcp.BigQuery.Table("tf-test-table", new()
///     {
///         DeletionProtection = false,
///         DatasetId = tf_test_dataset.DatasetId,
///         TableId = "example_feature_view_vector_search",
///         Schema = @"[
/// {
///   \""name\"": \""test_primary_id\"",
///   \""mode\"": \""NULLABLE\"",
///   \""type\"": \""STRING\"",
///   \""description\"": \""primary test id\""
/// },
/// {
///   \""name\"": \""embedding\"",
///   \""mode\"": \""REPEATED\"",
///   \""type\"": \""FLOAT\"",
///   \""description\"": \""embedding column for primary_id column\""
/// },
/// {
///   \""name\"": \""country\"",
///   \""mode\"": \""NULLABLE\"",
///   \""type\"": \""STRING\"",
///   \""description\"": \""country\""
/// },
/// {
///   \""name\"": \""test_crowding_column\"",
///   \""mode\"": \""NULLABLE\"",
///   \""type\"": \""INTEGER\"",
///   \""description\"": \""test crowding column\""
/// },
/// {
///   \""name\"": \""entity_id\"",
///   \""mode\"": \""NULLABLE\"",
///   \""type\"": \""STRING\"",
///   \""description\"": \""Test default entity_id\""
/// },
/// {
///   \""name\"": \""test_entity_column\"",
///   \""mode\"": \""NULLABLE\"",
///   \""type\"": \""STRING\"",
///   \""description\"": \""test secondary entity column\""
/// },
/// {
///   \""name\"": \""feature_timestamp\"",
///   \""mode\"": \""NULLABLE\"",
///   \""type\"": \""TIMESTAMP\"",
///   \""description\"": \""Default timestamp value\""
/// }
/// ]
/// ",
///     });
///
///     var featureviewVectorSearch = new Gcp.Vertex.AiFeatureOnlineStoreFeatureview("featureview_vector_search", new()
///     {
///         Name = "example_feature_view_vector_search",
///         Region = "us-central1",
///         FeatureOnlineStore = featureonlinestore.Name,
///         SyncConfig = new Gcp.Vertex.Inputs.AiFeatureOnlineStoreFeatureviewSyncConfigArgs
///         {
///             Cron = "0 0 * * *",
///         },
///         BigQuerySource = new Gcp.Vertex.Inputs.AiFeatureOnlineStoreFeatureviewBigQuerySourceArgs
///         {
///             Uri = Output.Tuple(tf_test_table.Project, tf_test_table.DatasetId, tf_test_table.TableId).Apply(values =>
///             {
///                 var project = values.Item1;
///                 var datasetId = values.Item2;
///                 var tableId = values.Item3;
///                 return $"bq://{project}.{datasetId}.{tableId}";
///             }),
///             EntityIdColumns = new[]
///             {
///                 "test_entity_column",
///             },
///         },
///         VectorSearchConfig = new Gcp.Vertex.Inputs.AiFeatureOnlineStoreFeatureviewVectorSearchConfigArgs
///         {
///             EmbeddingColumn = "embedding",
///             FilterColumns = new[]
///             {
///                 "country",
///             },
///             CrowdingColumn = "test_crowding_column",
///             DistanceMeasureType = "DOT_PRODUCT_DISTANCE",
///             TreeAhConfig = new Gcp.Vertex.Inputs.AiFeatureOnlineStoreFeatureviewVectorSearchConfigTreeAhConfigArgs
///             {
///                 LeafNodeEmbeddingCount = "1000",
///             },
///             EmbeddingDimension = 2,
///         },
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		featureonlinestore, err := vertex.NewAiFeatureOnlineStore(ctx, "featureonlinestore", &vertex.AiFeatureOnlineStoreArgs{
/// 			Name: pulumi.String("example_feature_view_vector_search"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Region:    pulumi.String("us-central1"),
/// 			Optimized: &vertex.AiFeatureOnlineStoreOptimizedArgs{},
/// 			EmbeddingManagement: &vertex.AiFeatureOnlineStoreEmbeddingManagementArgs{
/// 				Enabled: pulumi.Bool(true),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tf_test_dataset, err := bigquery.NewDataset(ctx, "tf-test-dataset", &bigquery.DatasetArgs{
/// 			DatasetId:    pulumi.String("example_feature_view_vector_search"),
/// 			FriendlyName: pulumi.String("test"),
/// 			Description:  pulumi.String("This is a test description"),
/// 			Location:     pulumi.String("US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tf_test_table, err := bigquery.NewTable(ctx, "tf-test-table", &bigquery.TableArgs{
/// 			DeletionProtection: pulumi.Bool(false),
/// 			DatasetId:          tf_test_dataset.DatasetId,
/// 			TableId:            pulumi.String("example_feature_view_vector_search"),
/// 			Schema: pulumi.String(`[
/// {
///   \"name\": \"test_primary_id\",
///   \"mode\": \"NULLABLE\",
///   \"type\": \"STRING\",
///   \"description\": \"primary test id\"
/// },
/// {
///   \"name\": \"embedding\",
///   \"mode\": \"REPEATED\",
///   \"type\": \"FLOAT\",
///   \"description\": \"embedding column for primary_id column\"
/// },
/// {
///   \"name\": \"country\",
///   \"mode\": \"NULLABLE\",
///   \"type\": \"STRING\",
///   \"description\": \"country\"
/// },
/// {
///   \"name\": \"test_crowding_column\",
///   \"mode\": \"NULLABLE\",
///   \"type\": \"INTEGER\",
///   \"description\": \"test crowding column\"
/// },
/// {
///   \"name\": \"entity_id\",
///   \"mode\": \"NULLABLE\",
///   \"type\": \"STRING\",
///   \"description\": \"Test default entity_id\"
/// },
/// {
///   \"name\": \"test_entity_column\",
///   \"mode\": \"NULLABLE\",
///   \"type\": \"STRING\",
///   \"description\": \"test secondary entity column\"
/// },
/// {
///   \"name\": \"feature_timestamp\",
///   \"mode\": \"NULLABLE\",
///   \"type\": \"TIMESTAMP\",
///   \"description\": \"Default timestamp value\"
/// }
/// ]
/// `),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vertex.NewAiFeatureOnlineStoreFeatureview(ctx, "featureview_vector_search", &vertex.AiFeatureOnlineStoreFeatureviewArgs{
/// 			Name:               pulumi.String("example_feature_view_vector_search"),
/// 			Region:             pulumi.String("us-central1"),
/// 			FeatureOnlineStore: featureonlinestore.Name,
/// 			SyncConfig: &vertex.AiFeatureOnlineStoreFeatureviewSyncConfigArgs{
/// 				Cron: pulumi.String("0 0 * * *"),
/// 			},
/// 			BigQuerySource: &vertex.AiFeatureOnlineStoreFeatureviewBigQuerySourceArgs{
/// 				Uri: pulumi.All(tf_test_table.Project, tf_test_table.DatasetId, tf_test_table.TableId).ApplyT(func(_args []interface{}) (string, error) {
/// 					project := _args[0].(string)
/// 					datasetId := _args[1].(string)
/// 					tableId := _args[2].(string)
/// 					return fmt.Sprintf("bq://%v.%v.%v", project, datasetId, tableId), nil
/// 				}).(pulumi.StringOutput),
/// 				EntityIdColumns: pulumi.StringArray{
/// 					pulumi.String("test_entity_column"),
/// 				},
/// 			},
/// 			VectorSearchConfig: &vertex.AiFeatureOnlineStoreFeatureviewVectorSearchConfigArgs{
/// 				EmbeddingColumn: pulumi.String("embedding"),
/// 				FilterColumns: pulumi.StringArray{
/// 					pulumi.String("country"),
/// 				},
/// 				CrowdingColumn:      pulumi.String("test_crowding_column"),
/// 				DistanceMeasureType: pulumi.String("DOT_PRODUCT_DISTANCE"),
/// 				TreeAhConfig: &vertex.AiFeatureOnlineStoreFeatureviewVectorSearchConfigTreeAhConfigArgs{
/// 					LeafNodeEmbeddingCount: pulumi.String("1000"),
/// 				},
/// 				EmbeddingDimension: pulumi.Int(2),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
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
/// import com.pulumi.gcp.vertex.AiFeatureOnlineStore;
/// import com.pulumi.gcp.vertex.AiFeatureOnlineStoreArgs;
/// import com.pulumi.gcp.vertex.inputs.AiFeatureOnlineStoreOptimizedArgs;
/// import com.pulumi.gcp.vertex.inputs.AiFeatureOnlineStoreEmbeddingManagementArgs;
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.bigquery.Table;
/// import com.pulumi.gcp.bigquery.TableArgs;
/// import com.pulumi.gcp.vertex.AiFeatureOnlineStoreFeatureview;
/// import com.pulumi.gcp.vertex.AiFeatureOnlineStoreFeatureviewArgs;
/// import com.pulumi.gcp.vertex.inputs.AiFeatureOnlineStoreFeatureviewSyncConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiFeatureOnlineStoreFeatureviewBigQuerySourceArgs;
/// import com.pulumi.gcp.vertex.inputs.AiFeatureOnlineStoreFeatureviewVectorSearchConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiFeatureOnlineStoreFeatureviewVectorSearchConfigTreeAhConfigArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
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
///         var featureonlinestore = new AiFeatureOnlineStore("featureonlinestore", AiFeatureOnlineStoreArgs.builder()
///             .name("example_feature_view_vector_search")
///             .labels(Map.of("foo", "bar"))
///             .region("us-central1")
///             .optimized(AiFeatureOnlineStoreOptimizedArgs.builder()
///                 .build())
///             .embeddingManagement(AiFeatureOnlineStoreEmbeddingManagementArgs.builder()
///                 .enabled(true)
///                 .build())
///             .build());
///
///         var tf_test_dataset = new Dataset("tf-test-dataset", DatasetArgs.builder()
///             .datasetId("example_feature_view_vector_search")
///             .friendlyName("test")
///             .description("This is a test description")
///             .location("US")
///             .build());
///
///         var tf_test_table = new Table("tf-test-table", TableArgs.builder()
///             .deletionProtection(false)
///             .datasetId(tf_test_dataset.datasetId())
///             .tableId("example_feature_view_vector_search")
///             .schema("""
/// [
/// {
///   \"name\": \"test_primary_id\",
///   \"mode\": \"NULLABLE\",
///   \"type\": \"STRING\",
///   \"description\": \"primary test id\"
/// },
/// {
///   \"name\": \"embedding\",
///   \"mode\": \"REPEATED\",
///   \"type\": \"FLOAT\",
///   \"description\": \"embedding column for primary_id column\"
/// },
/// {
///   \"name\": \"country\",
///   \"mode\": \"NULLABLE\",
///   \"type\": \"STRING\",
///   \"description\": \"country\"
/// },
/// {
///   \"name\": \"test_crowding_column\",
///   \"mode\": \"NULLABLE\",
///   \"type\": \"INTEGER\",
///   \"description\": \"test crowding column\"
/// },
/// {
///   \"name\": \"entity_id\",
///   \"mode\": \"NULLABLE\",
///   \"type\": \"STRING\",
///   \"description\": \"Test default entity_id\"
/// },
/// {
///   \"name\": \"test_entity_column\",
///   \"mode\": \"NULLABLE\",
///   \"type\": \"STRING\",
///   \"description\": \"test secondary entity column\"
/// },
/// {
///   \"name\": \"feature_timestamp\",
///   \"mode\": \"NULLABLE\",
///   \"type\": \"TIMESTAMP\",
///   \"description\": \"Default timestamp value\"
/// }
/// ]
///             """)
///             .build());
///
///         var featureviewVectorSearch = new AiFeatureOnlineStoreFeatureview("featureviewVectorSearch", AiFeatureOnlineStoreFeatureviewArgs.builder()
///             .name("example_feature_view_vector_search")
///             .region("us-central1")
///             .featureOnlineStore(featureonlinestore.name())
///             .syncConfig(AiFeatureOnlineStoreFeatureviewSyncConfigArgs.builder()
///                 .cron("0 0 * * *")
///                 .build())
///             .bigQuerySource(AiFeatureOnlineStoreFeatureviewBigQuerySourceArgs.builder()
///                 .uri(Output.tuple(tf_test_table.project(), tf_test_table.datasetId(), tf_test_table.tableId()).applyValue(values -> {
///                     var project = values.t1;
///                     var datasetId = values.t2;
///                     var tableId = values.t3;
///                     return String.format("bq://%s.%s.%s", project,datasetId,tableId);
///                 }))
///                 .entityIdColumns("test_entity_column")
///                 .build())
///             .vectorSearchConfig(AiFeatureOnlineStoreFeatureviewVectorSearchConfigArgs.builder()
///                 .embeddingColumn("embedding")
///                 .filterColumns("country")
///                 .crowdingColumn("test_crowding_column")
///                 .distanceMeasureType("DOT_PRODUCT_DISTANCE")
///                 .treeAhConfig(AiFeatureOnlineStoreFeatureviewVectorSearchConfigTreeAhConfigArgs.builder()
///                     .leafNodeEmbeddingCount("1000")
///                     .build())
///                 .embeddingDimension(2)
///                 .build())
///             .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   featureonlinestore:
///     type: gcp:vertex:AiFeatureOnlineStore
///     properties:
///       name: example_feature_view_vector_search
///       labels:
///         foo: bar
///       region: us-central1
///       optimized: {}
///       embeddingManagement:
///         enabled: true
///   tf-test-dataset:
///     type: gcp:bigquery:Dataset
///     properties:
///       datasetId: example_feature_view_vector_search
///       friendlyName: test
///       description: This is a test description
///       location: US
///   tf-test-table:
///     type: gcp:bigquery:Table
///     properties:
///       deletionProtection: false
///       datasetId: ${["tf-test-dataset"].datasetId}
///       tableId: example_feature_view_vector_search
///       schema: |
///         [
///         {
///           \"name\": \"test_primary_id\",
///           \"mode\": \"NULLABLE\",
///           \"type\": \"STRING\",
///           \"description\": \"primary test id\"
///         },
///         {
///           \"name\": \"embedding\",
///           \"mode\": \"REPEATED\",
///           \"type\": \"FLOAT\",
///           \"description\": \"embedding column for primary_id column\"
///         },
///         {
///           \"name\": \"country\",
///           \"mode\": \"NULLABLE\",
///           \"type\": \"STRING\",
///           \"description\": \"country\"
///         },
///         {
///           \"name\": \"test_crowding_column\",
///           \"mode\": \"NULLABLE\",
///           \"type\": \"INTEGER\",
///           \"description\": \"test crowding column\"
///         },
///         {
///           \"name\": \"entity_id\",
///           \"mode\": \"NULLABLE\",
///           \"type\": \"STRING\",
///           \"description\": \"Test default entity_id\"
///         },
///         {
///           \"name\": \"test_entity_column\",
///           \"mode\": \"NULLABLE\",
///           \"type\": \"STRING\",
///           \"description\": \"test secondary entity column\"
///         },
///         {
///           \"name\": \"feature_timestamp\",
///           \"mode\": \"NULLABLE\",
///           \"type\": \"TIMESTAMP\",
///           \"description\": \"Default timestamp value\"
///         }
///         ]
///   featureviewVectorSearch:
///     type: gcp:vertex:AiFeatureOnlineStoreFeatureview
///     name: featureview_vector_search
///     properties:
///       name: example_feature_view_vector_search
///       region: us-central1
///       featureOnlineStore: ${featureonlinestore.name}
///       syncConfig:
///         cron: 0 0 * * *
///       bigQuerySource:
///         uri: bq://${["tf-test-table"].project}.${["tf-test-table"].datasetId}.${["tf-test-table"].tableId}
///         entityIdColumns:
///           - test_entity_column
///       vectorSearchConfig:
///         embeddingColumn: embedding
///         filterColumns:
///           - country
///         crowdingColumn: test_crowding_column
///         distanceMeasureType: DOT_PRODUCT_DISTANCE
///         treeAhConfig:
///           leafNodeEmbeddingCount: '1000'
///         embeddingDimension: '2'
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// FeatureOnlineStoreFeatureview can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/featureOnlineStores/{{feature_online_store}}/featureViews/{{name}}`
///
/// * `{{project}}/{{region}}/{{feature_online_store}}/{{name}}`
///
/// * `{{region}}/{{feature_online_store}}/{{name}}`
///
/// * `{{feature_online_store}}/{{name}}`
///
/// When using the `pulumi import` command, FeatureOnlineStoreFeatureview can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vertex/aiFeatureOnlineStoreFeatureview:AiFeatureOnlineStoreFeatureview default projects/{{project}}/locations/{{region}}/featureOnlineStores/{{feature_online_store}}/featureViews/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiFeatureOnlineStoreFeatureview:AiFeatureOnlineStoreFeatureview default {{project}}/{{region}}/{{feature_online_store}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiFeatureOnlineStoreFeatureview:AiFeatureOnlineStoreFeatureview default {{region}}/{{feature_online_store}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiFeatureOnlineStoreFeatureview:AiFeatureOnlineStoreFeatureview default {{feature_online_store}}/{{name}}
/// ```
class AiFeatureOnlineStoreFeatureview extends pulumi.CustomResource {
  /// Configures how data is supposed to be extracted from a BigQuery source to be loaded onto the FeatureOnlineStore.
  /// Structure is documented below.
  late final pulumi.Output<AiFeatureOnlineStoreFeatureviewBigQuerySource?> bigQuerySource;
  /// The timestamp of when the featureOnlinestore was created in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  late final pulumi.Output<String> createTime;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// The name of the FeatureOnlineStore to use for the featureview.
  late final pulumi.Output<String> featureOnlineStore;
  /// Configures the features from a Feature Registry source that need to be loaded onto the FeatureOnlineStore.
  /// Structure is documented below.
  late final pulumi.Output<AiFeatureOnlineStoreFeatureviewFeatureRegistrySource?> featureRegistrySource;
  /// A set of key/value label pairs to assign to this FeatureView.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Name of the FeatureView. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The region for the resource. It should be the same as the featureonlinestore region.
  late final pulumi.Output<String> region;
  /// Configures when data is to be synced/updated for this FeatureView. At the end of the sync the latest featureValues for each entityId of this FeatureView are made ready for online serving.
  /// Structure is documented below.
  late final pulumi.Output<AiFeatureOnlineStoreFeatureviewSyncConfig?> syncConfig;
  /// The timestamp of when the featureOnlinestore was last updated in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  late final pulumi.Output<String> updateTime;
  /// Configuration for vector search. It contains the required configurations to create an index from source data, so that approximate nearest neighbor (a.k.a ANN) algorithms search can be performed during online serving.
  /// Structure is documented below.
  late final pulumi.Output<AiFeatureOnlineStoreFeatureviewVectorSearchConfig?> vectorSearchConfig;

  /// Creates a new [AiFeatureOnlineStoreFeatureview].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AiFeatureOnlineStoreFeatureview]. {@macro pulumi_vertex_ai_feature_online_store_featureview_ai_feature_online_store_featureview_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AiFeatureOnlineStoreFeatureview(
    String name, {
    AiFeatureOnlineStoreFeatureviewArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiFeatureOnlineStoreFeatureview:AiFeatureOnlineStoreFeatureview',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bigQuerySource = registerOutput<AiFeatureOnlineStoreFeatureviewBigQuerySource?>('bigQuerySource');
    this.createTime = registerOutput<String>('createTime');
    this.effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    this.featureOnlineStore = registerOutput<String>('featureOnlineStore');
    this.featureRegistrySource = registerOutput<AiFeatureOnlineStoreFeatureviewFeatureRegistrySource?>('featureRegistrySource');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.region = registerOutput<String>('region');
    this.syncConfig = registerOutput<AiFeatureOnlineStoreFeatureviewSyncConfig?>('syncConfig');
    this.updateTime = registerOutput<String>('updateTime');
    this.vectorSearchConfig = registerOutput<AiFeatureOnlineStoreFeatureviewVectorSearchConfig?>('vectorSearchConfig');
  }
}
