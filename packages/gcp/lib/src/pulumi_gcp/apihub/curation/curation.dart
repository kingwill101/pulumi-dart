import 'package:pulumi/pulumi.dart';
import '../curation_endpoint/curation_endpoint.dart';
import '../curation_plugin_instance_action/curation_plugin_instance_action.dart';
import 'curation_args.dart';

/// Description
///
///
///
/// ## Example Usage
///
/// ### Apihub Curation Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const apihubCurationBasic = new gcp.apihub.Curation("apihub_curation_basic", {
/// location: "us-central1",
/// curationId: "test",
/// project: "apihub-terraform",
/// displayName: "Test Curation",
/// description: "This is a sample curation resource managed by Terraform.",
/// endpoint: {
/// applicationIntegrationEndpointDetails: {
/// triggerId: "api_trigger/curation_API_1",
/// uri: "https://integrations.googleapis.com/v1/projects/1082615593856/locations/us-central1/integrations/curation:execute",
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// apihub_curation_basic = gcp.apihub.Curation("apihub_curation_basic",
/// location="us-central1",
/// curation_id="test",
/// project="apihub-terraform",
/// display_name="Test Curation",
/// description="This is a sample curation resource managed by Terraform.",
/// endpoint={
/// "application_integration_endpoint_details": {
/// "trigger_id": "api_trigger/curation_API_1",
/// "uri": "https://integrations.googleapis.com/v1/projects/1082615593856/locations/us-central1/integrations/curation:execute",
/// },
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
/// var apihubCurationBasic = new Gcp.ApiHub.Curation("apihub_curation_basic", new()
/// {
/// Location = "us-central1",
/// CurationId = "test",
/// Project = "apihub-terraform",
/// DisplayName = "Test Curation",
/// Description = "This is a sample curation resource managed by Terraform.",
/// Endpoint = new Gcp.ApiHub.Inputs.CurationEndpointArgs
/// {
/// ApplicationIntegrationEndpointDetails = new Gcp.ApiHub.Inputs.CurationEndpointApplicationIntegrationEndpointDetailsArgs
/// {
/// TriggerId = "api_trigger/curation_API_1",
/// Uri = "https://integrations.googleapis.com/v1/projects/1082615593856/locations/us-central1/integrations/curation:execute",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apihub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := apihub.NewCuration(ctx, "apihub_curation_basic", &apihub.CurationArgs{
/// Location:    pulumi.String("us-central1"),
/// CurationId:  pulumi.String("test"),
/// Project:     pulumi.String("apihub-terraform"),
/// DisplayName: pulumi.String("Test Curation"),
/// Description: pulumi.String("This is a sample curation resource managed by Terraform."),
/// Endpoint: &apihub.CurationEndpointArgs{
/// ApplicationIntegrationEndpointDetails: &apihub.CurationEndpointApplicationIntegrationEndpointDetailsArgs{
/// TriggerId: pulumi.String("api_trigger/curation_API_1"),
/// Uri:       pulumi.String("https://integrations.googleapis.com/v1/projects/1082615593856/locations/us-central1/integrations/curation:execute"),
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
/// import com.pulumi.gcp.apihub.Curation;
/// import com.pulumi.gcp.apihub.CurationArgs;
/// import com.pulumi.gcp.apihub.inputs.CurationEndpointArgs;
/// import com.pulumi.gcp.apihub.inputs.CurationEndpointApplicationIntegrationEndpointDetailsArgs;
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
/// var apihubCurationBasic = new Curation("apihubCurationBasic", CurationArgs.builder()
/// .location("us-central1")
/// .curationId("test")
/// .project("apihub-terraform")
/// .displayName("Test Curation")
/// .description("This is a sample curation resource managed by Terraform.")
/// .endpoint(CurationEndpointArgs.builder()
/// .applicationIntegrationEndpointDetails(CurationEndpointApplicationIntegrationEndpointDetailsArgs.builder()
/// .triggerId("api_trigger/curation_API_1")
/// .uri("https://integrations.googleapis.com/v1/projects/1082615593856/locations/us-central1/integrations/curation:execute")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// apihubCurationBasic:
/// type: gcp:apihub:Curation
/// name: apihub_curation_basic
/// properties:
/// location: us-central1
/// curationId: test
/// project: apihub-terraform
/// displayName: Test Curation
/// description: This is a sample curation resource managed by Terraform.
/// endpoint:
/// applicationIntegrationEndpointDetails:
/// triggerId: api_trigger/curation_API_1
/// uri: https://integrations.googleapis.com/v1/projects/1082615593856/locations/us-central1/integrations/curation:execute
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Curation can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/curations/{{curation_id}}`
///
/// * `{{project}}/{{location}}/{{curation_id}}`
///
/// * `{{location}}/{{curation_id}}`
///
/// When using the `pulumi import` command, Curation can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apihub/curation:Curation default projects/{{project}}/locations/{{location}}/curations/{{curation_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apihub/curation:Curation default {{project}}/{{location}}/{{curation_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apihub/curation:Curation default {{location}}/{{curation_id}}
/// ```
class Curation extends CustomResource {
  /// The time at which the curation was created.
  late final Output<String> createTime;

  /// The ID to use for the curation resource, which will become the final
  /// component of the curations's resource name. This field is optional.
  /// * If provided, the same will be used. The service will throw an error if
  /// the specified ID is already used by another curation resource in the API
  /// hub.
  /// * If not provided, a system generated ID will be used.
  /// This value should be 4-500 characters, and valid characters
  /// are /a-z[0-9]-_/.
  late final Output<String> curationId;

  /// The description of the curation.
  late final Output<String?> description;

  /// The display name of the curation.
  late final Output<String> displayName;

  /// The endpoint to be triggered for curation.
  /// The endpoint will be invoked with a request payload containing
  /// ApiMetadata.
  /// Response should contain curated data in the form of
  /// ApiMetadata.
  /// Structure is documented below.
  late final Output<CurationEndpoint> endpoint;

  /// The error code of the last execution of the curation. The error code is
  /// populated only when the last execution state is failed.
  /// Possible values:
  /// ERROR_CODE_UNSPECIFIED
  /// INTERNAL_ERROR
  /// UNAUTHORIZED
  late final Output<String> lastExecutionErrorCode;

  /// Error message describing the failure, if any, during the last execution of
  /// the curation.
  late final Output<String> lastExecutionErrorMessage;

  /// The last execution state of the curation.
  /// Possible values:
  /// LAST_EXECUTION_STATE_UNSPECIFIED
  /// SUCCEEDED
  /// FAILED
  late final Output<String> lastExecutionState;

  /// Resource ID segment making up resource <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final Output<String> location;

  /// Identifier. The name of the curation.
  /// Format:
  /// `projects/{project}/locations/{location}/curations/{curation}`
  late final Output<String> name;

  /// The plugin instances and associated actions that are using the curation.
  /// Note: A particular curation could be used by multiple plugin instances or
  /// multiple actions in a plugin instance.
  /// Structure is documented below.
  late final Output<List<CurationPluginInstanceAction>> pluginInstanceActions;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The time at which the curation was last updated.
  late final Output<String> updateTime;

  Curation(
    String name, {
    CurationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:apihub/curation:Curation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.curationId = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.displayName = Output.createUnknown<String>();
    this.endpoint = Output.createUnknown<CurationEndpoint>();
    this.lastExecutionErrorCode = Output.createUnknown<String>();
    this.lastExecutionErrorMessage = Output.createUnknown<String>();
    this.lastExecutionState = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.pluginInstanceActions =
        Output.createUnknown<List<CurationPluginInstanceAction>>();
    this.project = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
