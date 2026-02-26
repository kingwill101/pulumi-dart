import 'package:pulumi/pulumi.dart';
import '../ai_dataset_encryption_spec/ai_dataset_encryption_spec.dart';
import 'ai_dataset_args.dart';

/// A collection of DataItems and Annotations on them.
///
///
/// To get more information about Dataset, see:
///
/// * [API documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.datasets)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/vertex-ai/docs)
///
/// ## Example Usage
///
/// ### Vertex Ai Dataset
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dataset = new gcp.vertex.AiDataset("dataset", {
/// displayName: "terraform",
/// metadataSchemaUri: "gs://google-cloud-aiplatform/schema/dataset/metadata/image_1.0.0.yaml",
/// region: "us-central1",
/// labels: {
/// env: "test",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// dataset = gcp.vertex.AiDataset("dataset",
/// display_name="terraform",
/// metadata_schema_uri="gs://google-cloud-aiplatform/schema/dataset/metadata/image_1.0.0.yaml",
/// region="us-central1",
/// labels={
/// "env": "test",
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
/// var dataset = new Gcp.Vertex.AiDataset("dataset", new()
/// {
/// DisplayName = "terraform",
/// MetadataSchemaUri = "gs://google-cloud-aiplatform/schema/dataset/metadata/image_1.0.0.yaml",
/// Region = "us-central1",
/// Labels =
/// {
/// { "env", "test" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := vertex.NewAiDataset(ctx, "dataset", &vertex.AiDatasetArgs{
/// DisplayName:       pulumi.String("terraform"),
/// MetadataSchemaUri: pulumi.String("gs://google-cloud-aiplatform/schema/dataset/metadata/image_1.0.0.yaml"),
/// Region:            pulumi.String("us-central1"),
/// Labels: pulumi.StringMap{
/// "env": pulumi.String("test"),
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
/// import com.pulumi.gcp.vertex.AiDataset;
/// import com.pulumi.gcp.vertex.AiDatasetArgs;
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
/// var dataset = new AiDataset("dataset", AiDatasetArgs.builder()
/// .displayName("terraform")
/// .metadataSchemaUri("gs://google-cloud-aiplatform/schema/dataset/metadata/image_1.0.0.yaml")
/// .region("us-central1")
/// .labels(Map.of("env", "test"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// dataset:
/// type: gcp:vertex:AiDataset
/// properties:
/// displayName: terraform
/// metadataSchemaUri: gs://google-cloud-aiplatform/schema/dataset/metadata/image_1.0.0.yaml
/// region: us-central1
/// labels:
/// env: test
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// This resource does not support import.
class AiDataset extends CustomResource {
  /// The timestamp of when the dataset was created in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  late final Output<String> createTime;

  /// The user-defined name of the Dataset. The name can be up to 128 characters long and can be consist of any UTF-8 characters.
  late final Output<String> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Customer-managed encryption key spec for a Dataset. If set, this Dataset and all sub-resources of this Dataset will be secured by this key.
  /// Structure is documented below.
  late final Output<AiDatasetEncryptionSpec?> encryptionSpec;

  /// A set of key/value label pairs to assign to this Workflow.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Points to a YAML file stored on Google Cloud Storage describing additional information about the Dataset. The schema is defined as an OpenAPI 3.0.2 Schema Object. The schema files that can be used here are found in gs://google-cloud-aiplatform/schema/dataset/metadata/.
  late final Output<String> metadataSchemaUri;

  /// The resource name of the Dataset. This value is set by Google.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The region of the dataset. eg us-central1
  late final Output<String> region;

  /// The timestamp of when the dataset was last updated in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  late final Output<String> updateTime;

  AiDataset(
    String name, {
    AiDatasetArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiDataset:AiDataset',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.effectiveLabels = Output.createUnknown<Map<String, String>>();
    this.encryptionSpec = Output.createUnknown<AiDatasetEncryptionSpec?>();
    this.labels = Output.createUnknown<Map<String, String>?>();
    this.metadataSchemaUri = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.pulumiLabels = Output.createUnknown<Map<String, String>>();
    this.region = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
