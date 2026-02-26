import 'package:pulumi/pulumi.dart';
import '../api_hub_instance_config/api_hub_instance_config.dart';
import 'api_hub_instance_args.dart';

/// An ApiHubInstance represents the instance resources of the API Hub.
/// Currently, only one ApiHub instance is allowed for each project.
/// Currently, updation/deletion of ApiHub instance is not allowed.
///
///
///
/// ## Example Usage
///
/// ### Apihub Api Hub Instance Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const apihub_instance_without_search = new gcp.apihub.ApiHubInstance("apihub-instance-without-search", {
/// location: "us-central1",
/// config: {
/// disableSearch: true,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// apihub_instance_without_search = gcp.apihub.ApiHubInstance("apihub-instance-without-search",
/// location="us-central1",
/// config={
/// "disable_search": True,
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
/// var apihub_instance_without_search = new Gcp.ApiHub.ApiHubInstance("apihub-instance-without-search", new()
/// {
/// Location = "us-central1",
/// Config = new Gcp.ApiHub.Inputs.ApiHubInstanceConfigArgs
/// {
/// DisableSearch = true,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apihub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := apihub.NewApiHubInstance(ctx, "apihub-instance-without-search", &apihub.ApiHubInstanceArgs{
/// Location: pulumi.String("us-central1"),
/// Config: &apihub.ApiHubInstanceConfigArgs{
/// DisableSearch: pulumi.Bool(true),
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
/// import com.pulumi.gcp.apihub.ApiHubInstance;
/// import com.pulumi.gcp.apihub.ApiHubInstanceArgs;
/// import com.pulumi.gcp.apihub.inputs.ApiHubInstanceConfigArgs;
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
/// var apihub_instance_without_search = new ApiHubInstance("apihub-instance-without-search", ApiHubInstanceArgs.builder()
/// .location("us-central1")
/// .config(ApiHubInstanceConfigArgs.builder()
/// .disableSearch(true)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// apihub-instance-without-search:
/// type: gcp:apihub:ApiHubInstance
/// properties:
/// location: us-central1
/// config:
/// disableSearch: true
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Apihub Api Hub Instance Full
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const apihub_instance_search = new gcp.apihub.ApiHubInstance("apihub-instance-search", {
/// project: "my-project",
/// apiHubInstanceId: "test-instance-full",
/// description: "Test API hub instance",
/// location: "us-central1",
/// config: {
/// encryptionType: "CMEK",
/// cmekKeyName: "projects/my-project/locations/us-central1/keyRings/apihub/cryptoKeys/apihub-key",
/// disableSearch: false,
/// vertexLocation: "us",
/// },
/// labels: {
/// environment: "dev",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// apihub_instance_search = gcp.apihub.ApiHubInstance("apihub-instance-search",
/// project="my-project",
/// api_hub_instance_id="test-instance-full",
/// description="Test API hub instance",
/// location="us-central1",
/// config={
/// "encryption_type": "CMEK",
/// "cmek_key_name": "projects/my-project/locations/us-central1/keyRings/apihub/cryptoKeys/apihub-key",
/// "disable_search": False,
/// "vertex_location": "us",
/// },
/// labels={
/// "environment": "dev",
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
/// var apihub_instance_search = new Gcp.ApiHub.ApiHubInstance("apihub-instance-search", new()
/// {
/// Project = "my-project",
/// ApiHubInstanceId = "test-instance-full",
/// Description = "Test API hub instance",
/// Location = "us-central1",
/// Config = new Gcp.ApiHub.Inputs.ApiHubInstanceConfigArgs
/// {
/// EncryptionType = "CMEK",
/// CmekKeyName = "projects/my-project/locations/us-central1/keyRings/apihub/cryptoKeys/apihub-key",
/// DisableSearch = false,
/// VertexLocation = "us",
/// },
/// Labels =
/// {
/// { "environment", "dev" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apihub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := apihub.NewApiHubInstance(ctx, "apihub-instance-search", &apihub.ApiHubInstanceArgs{
/// Project:          pulumi.String("my-project"),
/// ApiHubInstanceId: pulumi.String("test-instance-full"),
/// Description:      pulumi.String("Test API hub instance"),
/// Location:         pulumi.String("us-central1"),
/// Config: &apihub.ApiHubInstanceConfigArgs{
/// EncryptionType: pulumi.String("CMEK"),
/// CmekKeyName:    pulumi.String("projects/my-project/locations/us-central1/keyRings/apihub/cryptoKeys/apihub-key"),
/// DisableSearch:  pulumi.Bool(false),
/// VertexLocation: pulumi.String("us"),
/// },
/// Labels: pulumi.StringMap{
/// "environment": pulumi.String("dev"),
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
/// import com.pulumi.gcp.apihub.ApiHubInstance;
/// import com.pulumi.gcp.apihub.ApiHubInstanceArgs;
/// import com.pulumi.gcp.apihub.inputs.ApiHubInstanceConfigArgs;
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
/// var apihub_instance_search = new ApiHubInstance("apihub-instance-search", ApiHubInstanceArgs.builder()
/// .project("my-project")
/// .apiHubInstanceId("test-instance-full")
/// .description("Test API hub instance")
/// .location("us-central1")
/// .config(ApiHubInstanceConfigArgs.builder()
/// .encryptionType("CMEK")
/// .cmekKeyName("projects/my-project/locations/us-central1/keyRings/apihub/cryptoKeys/apihub-key")
/// .disableSearch(false)
/// .vertexLocation("us")
/// .build())
/// .labels(Map.of("environment", "dev"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// apihub-instance-search:
/// type: gcp:apihub:ApiHubInstance
/// properties:
/// project: my-project
/// apiHubInstanceId: test-instance-full
/// description: Test API hub instance
/// location: us-central1
/// config:
/// encryptionType: CMEK
/// cmekKeyName: projects/my-project/locations/us-central1/keyRings/apihub/cryptoKeys/apihub-key
/// disableSearch: false
/// vertexLocation: us
/// labels:
/// environment: dev
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ApiHubInstance can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/apiHubInstances/{{api_hub_instance_id}}`
///
/// * `{{project}}/{{location}}/{{api_hub_instance_id}}`
///
/// * `{{location}}/{{api_hub_instance_id}}`
///
/// When using the `pulumi import` command, ApiHubInstance can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apihub/apiHubInstance:ApiHubInstance default projects/{{project}}/locations/{{location}}/apiHubInstances/{{api_hub_instance_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apihub/apiHubInstance:ApiHubInstance default {{project}}/{{location}}/{{api_hub_instance_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apihub/apiHubInstance:ApiHubInstance default {{location}}/{{api_hub_instance_id}}
/// ```
class ApiHubInstance extends CustomResource {
  /// Optional. Identifier to assign to the Api Hub instance. Must be unique within
  /// scope of the parent resource. If the field is not provided,
  /// system generated id will be used.
  /// This value should be 4-40 characters, and valid characters
  /// are `/a-z[0-9]-_/`.
  late final Output<String?> apiHubInstanceId;

  /// Available configurations to provision an ApiHub Instance.
  /// Structure is documented below.
  late final Output<ApiHubInstanceConfig> config;

  /// Output only. Creation timestamp.
  late final Output<String> createTime;

  /// Optional. Description of the ApiHub instance.
  late final Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Optional. Instance labels to represent user-provided metadata.
  /// Refer to cloud documentation on labels for more details.
  /// https://cloud.google.com/compute/docs/labeling-resources
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final Output<String> location;

  /// Identifier. Format:
  /// `projects/{project}/locations/{location}/apiHubInstances/{apiHubInstance}`.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Output only. The current state of the ApiHub instance.
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// INACTIVE
  /// CREATING
  /// ACTIVE
  /// UPDATING
  /// DELETING
  /// FAILED
  late final Output<String> state;

  /// Output only. Extra information about ApiHub instance state. Currently the message
  /// would be populated when state is `FAILED`.
  late final Output<String> stateMessage;

  /// Output only. Last update timestamp.
  late final Output<String> updateTime;

  ApiHubInstance(
    String name, {
    ApiHubInstanceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:apihub/apiHubInstance:ApiHubInstance',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.apiHubInstanceId = Output.createUnknown<String?>();
    this.config = Output.createUnknown<ApiHubInstanceConfig>();
    this.createTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.effectiveLabels = Output.createUnknown<Map<String, String>>();
    this.labels = Output.createUnknown<Map<String, String>?>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.pulumiLabels = Output.createUnknown<Map<String, String>>();
    this.state = Output.createUnknown<String>();
    this.stateMessage = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
