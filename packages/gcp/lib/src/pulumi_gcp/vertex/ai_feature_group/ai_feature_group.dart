import 'package:pulumi/pulumi.dart';
import '../ai_feature_group_big_query/ai_feature_group_big_query.dart';
import 'ai_feature_group_args.dart';

/// Vertex AI Feature Group.
///
///
/// To get more information about FeatureGroup, see:
///
/// * [API documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.featureGroups)
/// * How-to Guides
/// * [Creating a Feature Group](https://cloud.google.com/vertex-ai/docs/featurestore/latest/create-featuregroup)
///
/// ## Example Usage
///
/// ### Vertex Ai Feature Group
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const sampleDataset = new gcp.bigquery.Dataset("sample_dataset", {
/// datasetId: "job_load_dataset",
/// friendlyName: "test",
/// description: "This is a test description",
/// location: "US",
/// });
/// const sampleTable = new gcp.bigquery.Table("sample_table", {
/// deletionProtection: false,
/// datasetId: sampleDataset.datasetId,
/// tableId: "job_load_table",
/// schema: `[
/// {
/// \\"name\\": \\"feature_id\\",
/// \\"type\\": \\"STRING\\",
/// \\"mode\\": \\"NULLABLE\\"
/// },
/// {
/// \\"name\\": \\"feature_timestamp\\",
/// \\"type\\": \\"TIMESTAMP\\",
/// \\"mode\\": \\"NULLABLE\\"
/// }
/// ]
/// `,
/// });
/// const featureGroup = new gcp.vertex.AiFeatureGroup("feature_group", {
/// name: "example_feature_group",
/// description: "A sample feature group",
/// region: "us-central1",
/// labels: {
/// "label-one": "value-one",
/// },
/// bigQuery: {
/// bigQuerySource: {
/// inputUri: pulumi.interpolate`bq://${sampleTable.project}.${sampleTable.datasetId}.${sampleTable.tableId}`,
/// },
/// entityIdColumns: ["feature_id"],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// sample_dataset = gcp.bigquery.Dataset("sample_dataset",
/// dataset_id="job_load_dataset",
/// friendly_name="test",
/// description="This is a test description",
/// location="US")
/// sample_table = gcp.bigquery.Table("sample_table",
/// deletion_protection=False,
/// dataset_id=sample_dataset.dataset_id,
/// table_id="job_load_table",
/// schema="""[
/// {
/// \"name\": \"feature_id\",
/// \"type\": \"STRING\",
/// \"mode\": \"NULLABLE\"
/// },
/// {
/// \"name\": \"feature_timestamp\",
/// \"type\": \"TIMESTAMP\",
/// \"mode\": \"NULLABLE\"
/// }
/// ]
/// """)
/// feature_group = gcp.vertex.AiFeatureGroup("feature_group",
/// name="example_feature_group",
/// description="A sample feature group",
/// region="us-central1",
/// labels={
/// "label-one": "value-one",
/// },
/// big_query={
/// "big_query_source": {
/// "input_uri": pulumi.Output.all(
/// project=sample_table.project,
/// dataset_id=sample_table.dataset_id,
/// table_id=sample_table.table_id
/// ).apply(lambda resolved_outputs: f"bq://{resolved_outputs['project']}.{resolved_outputs['dataset_id']}.{resolved_outputs['table_id']}")
/// ,
/// },
/// "entity_id_columns": ["feature_id"],
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var sampleDataset = new Gcp.BigQuery.Dataset("sample_dataset", new()
/// {
/// DatasetId = "job_load_dataset",
/// FriendlyName = "test",
/// Description = "This is a test description",
/// Location = "US",
/// });
///
/// var sampleTable = new Gcp.BigQuery.Table("sample_table", new()
/// {
/// DeletionProtection = false,
/// DatasetId = sampleDataset.DatasetId,
/// TableId = "job_load_table",
/// Schema = @"[
/// {
/// \""name\"": \""feature_id\"",
/// \""type\"": \""STRING\"",
/// \""mode\"": \""NULLABLE\""
/// },
/// {
/// \""name\"": \""feature_timestamp\"",
/// \""type\"": \""TIMESTAMP\"",
/// \""mode\"": \""NULLABLE\""
/// }
/// ]
/// ",
/// });
///
/// var featureGroup = new Gcp.Vertex.AiFeatureGroup("feature_group", new()
/// {
/// Name = "example_feature_group",
/// Description = "A sample feature group",
/// Region = "us-central1",
/// Labels =
/// {
/// { "label-one", "value-one" },
/// },
/// BigQuery = new Gcp.Vertex.Inputs.AiFeatureGroupBigQueryArgs
/// {
/// BigQuerySource = new Gcp.Vertex.Inputs.AiFeatureGroupBigQueryBigQuerySourceArgs
/// {
/// InputUri = Output.Tuple(sampleTable.Project, sampleTable.DatasetId, sampleTable.TableId).Apply(values =>
/// {
/// var project = values.Item1;
/// var datasetId = values.Item2;
/// var tableId = values.Item3;
/// return $"bq://{project}.{datasetId}.{tableId}";
/// }),
/// },
/// EntityIdColumns = new[]
/// {
/// "feature_id",
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "fmt"
///
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// sampleDataset, err := bigquery.NewDataset(ctx, "sample_dataset", &bigquery.DatasetArgs{
/// DatasetId:    pulumi.String("job_load_dataset"),
/// FriendlyName: pulumi.String("test"),
/// Description:  pulumi.String("This is a test description"),
/// Location:     pulumi.String("US"),
/// })
/// if err != nil {
/// return err
/// }
/// sampleTable, err := bigquery.NewTable(ctx, "sample_table", &bigquery.TableArgs{
/// DeletionProtection: pulumi.Bool(false),
/// DatasetId:          sampleDataset.DatasetId,
/// TableId:            pulumi.String("job_load_table"),
/// Schema: pulumi.String(`[
/// {
/// \"name\": \"feature_id\",
/// \"type\": \"STRING\",
/// \"mode\": \"NULLABLE\"
/// },
/// {
/// \"name\": \"feature_timestamp\",
/// \"type\": \"TIMESTAMP\",
/// \"mode\": \"NULLABLE\"
/// }
/// ]
/// `),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = vertex.NewAiFeatureGroup(ctx, "feature_group", &vertex.AiFeatureGroupArgs{
/// Name:        pulumi.String("example_feature_group"),
/// Description: pulumi.String("A sample feature group"),
/// Region:      pulumi.String("us-central1"),
/// Labels: pulumi.StringMap{
/// "label-one": pulumi.String("value-one"),
/// },
/// BigQuery: &vertex.AiFeatureGroupBigQueryArgs{
/// BigQuerySource: &vertex.AiFeatureGroupBigQueryBigQuerySourceArgs{
/// InputUri: pulumi.All(sampleTable.Project, sampleTable.DatasetId, sampleTable.TableId).ApplyT(func(_args []interface{}) (string, error) {
/// project := _args[0].(string)
/// datasetId := _args[1].(string)
/// tableId := _args[2].(string)
/// return fmt.Sprintf("bq://%v.%v.%v", project, datasetId, tableId), nil
/// }).(pulumi.StringOutput),
/// },
/// EntityIdColumns: pulumi.StringArray{
/// pulumi.String("feature_id"),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import com.pulumi.gcp.vertex.AiFeatureGroup;
/// import com.pulumi.gcp.vertex.AiFeatureGroupArgs;
/// import com.pulumi.gcp.vertex.inputs.AiFeatureGroupBigQueryArgs;
/// import com.pulumi.gcp.vertex.inputs.AiFeatureGroupBigQueryBigQuerySourceArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var sampleDataset = new Dataset("sampleDataset", DatasetArgs.builder()
/// .datasetId("job_load_dataset")
/// .friendlyName("test")
/// .description("This is a test description")
/// .location("US")
/// .build());
///
/// var sampleTable = new Table("sampleTable", TableArgs.builder()
/// .deletionProtection(false)
/// .datasetId(sampleDataset.datasetId())
/// .tableId("job_load_table")
/// .schema("""
/// [
/// {
/// \"name\": \"feature_id\",
/// \"type\": \"STRING\",
/// \"mode\": \"NULLABLE\"
/// },
/// {
/// \"name\": \"feature_timestamp\",
/// \"type\": \"TIMESTAMP\",
/// \"mode\": \"NULLABLE\"
/// }
/// ]
/// """)
/// .build());
///
/// var featureGroup = new AiFeatureGroup("featureGroup", AiFeatureGroupArgs.builder()
/// .name("example_feature_group")
/// .description("A sample feature group")
/// .region("us-central1")
/// .labels(Map.of("label-one", "value-one"))
/// .bigQuery(AiFeatureGroupBigQueryArgs.builder()
/// .bigQuerySource(AiFeatureGroupBigQueryBigQuerySourceArgs.builder()
/// .inputUri(Output.tuple(sampleTable.project(), sampleTable.datasetId(), sampleTable.tableId()).applyValue(values -> {
/// var project = values.t1;
/// var datasetId = values.t2;
/// var tableId = values.t3;
/// return String.format("bq://%s.%s.%s", project,datasetId,tableId);
/// }))
/// .build())
/// .entityIdColumns("feature_id")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// featureGroup:
/// type: gcp:vertex:AiFeatureGroup
/// name: feature_group
/// properties:
/// name: example_feature_group
/// description: A sample feature group
/// region: us-central1
/// labels:
/// label-one: value-one
/// bigQuery:
/// bigQuerySource:
/// inputUri: bq://${sampleTable.project}.${sampleTable.datasetId}.${sampleTable.tableId}
/// entityIdColumns:
/// - feature_id
/// sampleDataset:
/// type: gcp:bigquery:Dataset
/// name: sample_dataset
/// properties:
/// datasetId: job_load_dataset
/// friendlyName: test
/// description: This is a test description
/// location: US
/// sampleTable:
/// type: gcp:bigquery:Table
/// name: sample_table
/// properties:
/// deletionProtection: false
/// datasetId: ${sampleDataset.datasetId}
/// tableId: job_load_table
/// schema: |
/// [
/// {
/// \"name\": \"feature_id\",
/// \"type\": \"STRING\",
/// \"mode\": \"NULLABLE\"
/// },
/// {
/// \"name\": \"feature_timestamp\",
/// \"type\": \"TIMESTAMP\",
/// \"mode\": \"NULLABLE\"
/// }
/// ]
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// FeatureGroup can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/featureGroups/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, FeatureGroup can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vertex/aiFeatureGroup:AiFeatureGroup default projects/{{project}}/locations/{{region}}/featureGroups/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiFeatureGroup:AiFeatureGroup default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiFeatureGroup:AiFeatureGroup default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiFeatureGroup:AiFeatureGroup default {{name}}
/// ```
class AiFeatureGroup extends CustomResource {
  /// Indicates that features for this group come from BigQuery Table/View. By default treats the source as a sparse time series source, which is required to have an entityId and a<span pulumi-lang-nodejs=" featureTimestamp " pulumi-lang-dotnet=" FeatureTimestamp " pulumi-lang-go=" featureTimestamp " pulumi-lang-python=" feature_timestamp " pulumi-lang-yaml=" featureTimestamp " pulumi-lang-java=" featureTimestamp "> feature_timestamp </span>column in the source.
  /// Structure is documented below.
  late final Output<AiFeatureGroupBigQuery?> bigQuery;

  /// The timestamp of when the FeatureGroup was created in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  late final Output<String> createTime;

  /// The description of the FeatureGroup.
  late final Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Used to perform consistent read-modify-write updates.
  late final Output<String> etag;

  /// The labels with user-defined metadata to organize your FeatureGroup.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The resource name of the Feature Group.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The region of feature group. eg us-central1
  late final Output<String> region;

  /// The timestamp of when the FeatureGroup was last updated in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  late final Output<String> updateTime;

  AiFeatureGroup(
    String name, {
    AiFeatureGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiFeatureGroup:AiFeatureGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bigQuery = registerOutput<AiFeatureGroupBigQuery?>('bigQuery');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.etag = registerOutput<String>('etag');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.region = registerOutput<String>('region');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
