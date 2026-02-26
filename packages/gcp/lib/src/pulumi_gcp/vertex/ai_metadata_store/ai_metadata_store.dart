import 'package:pulumi/pulumi.dart';
import '../ai_metadata_store_encryption_spec/ai_metadata_store_encryption_spec.dart';
import '../ai_metadata_store_state/ai_metadata_store_state.dart';
import 'ai_metadata_store_args.dart';

/// Instance of a metadata store. Contains a set of metadata that can be queried.
///
/// To get more information about MetadataStore, see:
///
/// * [API documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.metadataStores)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/vertex-ai/docs)
///
/// ## Example Usage
///
/// ### Vertex Ai Metadata Store
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const store = new gcp.vertex.AiMetadataStore("store", {
/// name: "test-store",
/// description: "Store to test the terraform module",
/// region: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// store = gcp.vertex.AiMetadataStore("store",
/// name="test-store",
/// description="Store to test the terraform module",
/// region="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var store = new Gcp.Vertex.AiMetadataStore("store", new()
/// {
/// Name = "test-store",
/// Description = "Store to test the terraform module",
/// Region = "us-central1",
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
/// _, err := vertex.NewAiMetadataStore(ctx, "store", &vertex.AiMetadataStoreArgs{
/// Name:        pulumi.String("test-store"),
/// Description: pulumi.String("Store to test the terraform module"),
/// Region:      pulumi.String("us-central1"),
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
/// import com.pulumi.gcp.vertex.AiMetadataStore;
/// import com.pulumi.gcp.vertex.AiMetadataStoreArgs;
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
/// var store = new AiMetadataStore("store", AiMetadataStoreArgs.builder()
/// .name("test-store")
/// .description("Store to test the terraform module")
/// .region("us-central1")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// store:
/// type: gcp:vertex:AiMetadataStore
/// properties:
/// name: test-store
/// description: Store to test the terraform module
/// region: us-central1
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// MetadataStore can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/metadataStores/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, MetadataStore can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vertex/aiMetadataStore:AiMetadataStore default projects/{{project}}/locations/{{region}}/metadataStores/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiMetadataStore:AiMetadataStore default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiMetadataStore:AiMetadataStore default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiMetadataStore:AiMetadataStore default {{name}}
/// ```
class AiMetadataStore extends CustomResource {
  /// The timestamp of when the MetadataStore was created in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  late final Output<String> createTime;

  /// Description of the MetadataStore.
  late final Output<String?> description;

  /// Customer-managed encryption key spec for a MetadataStore. If set, this MetadataStore and all sub-resources of this MetadataStore will be secured by this key.
  /// Structure is documented below.
  late final Output<AiMetadataStoreEncryptionSpec?> encryptionSpec;

  /// The name of the MetadataStore. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The region of the Metadata Store. eg us-central1
  late final Output<String> region;

  /// State information of the MetadataStore.
  /// Structure is documented below.
  late final Output<List<AiMetadataStoreState>> states;

  /// The timestamp of when the MetadataStore was last updated in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  late final Output<String> updateTime;

  AiMetadataStore(
    String name, {
    AiMetadataStoreArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiMetadataStore:AiMetadataStore',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.encryptionSpec =
        Output.createUnknown<AiMetadataStoreEncryptionSpec?>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.states = Output.createUnknown<List<AiMetadataStoreState>>();
    this.updateTime = Output.createUnknown<String>();
  }
}
