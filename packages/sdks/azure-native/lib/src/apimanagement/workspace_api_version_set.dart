import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_api_version_set_args.dart';

/// API Version Set Contract details.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01-preview.
///
/// Other available API versions: 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreateWorkspaceApiVersionSet
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workspaceApiVersionSet = new AzureNative.ApiManagement.WorkspaceApiVersionSet("workspaceApiVersionSet", new()
///     {
///         Description = "Version configuration",
///         DisplayName = "api set 1",
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
///         VersionSetId = "api1",
///         VersioningScheme = AzureNative.ApiManagement.VersioningScheme.Segment,
///         WorkspaceId = "wks1",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	apimanagement "github.com/pulumi/pulumi-azure-native-sdk/apimanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apimanagement.NewWorkspaceApiVersionSet(ctx, "workspaceApiVersionSet", &apimanagement.WorkspaceApiVersionSetArgs{
/// 			Description:       pulumi.String("Version configuration"),
/// 			DisplayName:       pulumi.String("api set 1"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
/// 			VersionSetId:      pulumi.String("api1"),
/// 			VersioningScheme:  pulumi.String(apimanagement.VersioningSchemeSegment),
/// 			WorkspaceId:       pulumi.String("wks1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_apimanagement_workspaceapiversionset" "workspaceApiVersionSet" {
///   description         = "Version configuration"
///   display_name        = "api set 1"
///   resource_group_name = "rg1"
///   service_name        = "apimService1"
///   version_set_id      = "api1"
///   versioning_scheme   = "Segment"
///   workspace_id        = "wks1"
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.apimanagement.WorkspaceApiVersionSet;
/// import com.pulumi.azurenative.apimanagement.WorkspaceApiVersionSetArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var workspaceApiVersionSet = new WorkspaceApiVersionSet("workspaceApiVersionSet", WorkspaceApiVersionSetArgs.builder()
///             .description("Version configuration")
///             .displayName("api set 1")
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
///             .versionSetId("api1")
///             .versioningScheme("Segment")
///             .workspaceId("wks1")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const workspaceApiVersionSet = new azure_native.apimanagement.WorkspaceApiVersionSet("workspaceApiVersionSet", {
///     description: "Version configuration",
///     displayName: "api set 1",
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
///     versionSetId: "api1",
///     versioningScheme: azure_native.apimanagement.VersioningScheme.Segment,
///     workspaceId: "wks1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workspace_api_version_set = azure_native.apimanagement.WorkspaceApiVersionSet("workspaceApiVersionSet",
///     description="Version configuration",
///     display_name="api set 1",
///     resource_group_name="rg1",
///     service_name="apimService1",
///     version_set_id="api1",
///     versioning_scheme=azure_native.apimanagement.VersioningScheme.SEGMENT,
///     workspace_id="wks1")
///
/// ```
///
/// ```yaml
/// resources:
///   workspaceApiVersionSet:
///     type: azure-native:apimanagement:WorkspaceApiVersionSet
///     properties:
///       description: Version configuration
///       displayName: api set 1
///       resourceGroupName: rg1
///       serviceName: apimService1
///       versionSetId: api1
///       versioningScheme: Segment
///       workspaceId: wks1
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:apimanagement:WorkspaceApiVersionSet api1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/workspaces/{workspaceId}/apiVersionSets/{versionSetId}
/// ```
class WorkspaceApiVersionSet extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Description of API Version Set.
  late final pulumi.Output<String?> description;
  /// Name of API Version Set
  late final pulumi.Output<String> displayName;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Name of HTTP header parameter that indicates the API Version if versioningScheme is set to `header`.
  late final pulumi.Output<String?> versionHeaderName;
  /// Name of query parameter that indicates the API Version if versioningScheme is set to `query`.
  late final pulumi.Output<String?> versionQueryName;
  /// An value that determines where the API Version identifier will be located in a HTTP request.
  late final pulumi.Output<String> versioningScheme;

  /// Creates a new [WorkspaceApiVersionSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkspaceApiVersionSet]. {@macro pulumi_apimanagement_workspace_api_version_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkspaceApiVersionSet(
    String name, {
    WorkspaceApiVersionSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:apimanagement:WorkspaceApiVersionSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
    versionHeaderName = registerOutput<String?>('versionHeaderName');
    versionQueryName = registerOutput<String?>('versionQueryName');
    versioningScheme = registerOutput<String>('versioningScheme');
  }
}
