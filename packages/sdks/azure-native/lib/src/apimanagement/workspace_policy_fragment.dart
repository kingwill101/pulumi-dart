import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_policy_fragment_args.dart';

/// Policy fragment contract details.
///
/// Uses Azure REST API version 2022-09-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-09-01-preview.
///
/// Other available API versions: 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-05-01, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreateWorkspacePolicyFragment
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workspacePolicyFragment = new AzureNative.ApiManagement.WorkspacePolicyFragment("workspacePolicyFragment", new()
///     {
///         Description = "A policy fragment example",
///         Format = AzureNative.ApiManagement.PolicyFragmentContentFormat.Xml,
///         Id = "policyFragment1",
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
///         Value = "<fragment><json-to-xml apply=\"always\" consider-accept-header=\"false\" /></fragment>",
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
/// 		_, err := apimanagement.NewWorkspacePolicyFragment(ctx, "workspacePolicyFragment", &apimanagement.WorkspacePolicyFragmentArgs{
/// 			Description:       pulumi.String("A policy fragment example"),
/// 			Format:            pulumi.String(apimanagement.PolicyFragmentContentFormatXml),
/// 			Id:                pulumi.String("policyFragment1"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
/// 			Value:             pulumi.String("<fragment><json-to-xml apply=\"always\" consider-accept-header=\"false\" /></fragment>"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.apimanagement.WorkspacePolicyFragment;
/// import com.pulumi.azurenative.apimanagement.WorkspacePolicyFragmentArgs;
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
///         var workspacePolicyFragment = new WorkspacePolicyFragment("workspacePolicyFragment", WorkspacePolicyFragmentArgs.builder()
///             .description("A policy fragment example")
///             .format("xml")
///             .id("policyFragment1")
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
///             .value("<fragment><json-to-xml apply=\"always\" consider-accept-header=\"false\" /></fragment>")
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
/// const workspacePolicyFragment = new azure_native.apimanagement.WorkspacePolicyFragment("workspacePolicyFragment", {
///     description: "A policy fragment example",
///     format: azure_native.apimanagement.PolicyFragmentContentFormat.Xml,
///     id: "policyFragment1",
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
///     value: "<fragment><json-to-xml apply=\"always\" consider-accept-header=\"false\" /></fragment>",
///     workspaceId: "wks1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workspace_policy_fragment = azure_native.apimanagement.WorkspacePolicyFragment("workspacePolicyFragment",
///     description="A policy fragment example",
///     format=azure_native.apimanagement.PolicyFragmentContentFormat.XML,
///     id="policyFragment1",
///     resource_group_name="rg1",
///     service_name="apimService1",
///     value="<fragment><json-to-xml apply=\"always\" consider-accept-header=\"false\" /></fragment>",
///     workspace_id="wks1")
///
/// ```
///
/// ```yaml
/// resources:
///   workspacePolicyFragment:
///     type: azure-native:apimanagement:WorkspacePolicyFragment
///     properties:
///       description: A policy fragment example
///       format: xml
///       id: policyFragment1
///       resourceGroupName: rg1
///       serviceName: apimService1
///       value: <fragment><json-to-xml apply="always" consider-accept-header="false" /></fragment>
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
/// $ pulumi import azure-native:apimanagement:WorkspacePolicyFragment policyFragment1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/workspaces/{workspaceId}/policyFragments/{id}
/// ```
class WorkspacePolicyFragment extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Policy fragment description.
  late final pulumi.Output<String?> description;
  /// Format of the policy fragment content.
  late final pulumi.Output<String?> format;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Contents of the policy fragment.
  late final pulumi.Output<String> value;

  /// Creates a new [WorkspacePolicyFragment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkspacePolicyFragment]. {@macro pulumi_apimanagement_workspace_policy_fragment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkspacePolicyFragment(
    String name, {
    WorkspacePolicyFragmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:apimanagement:WorkspacePolicyFragment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    format = registerOutput<String?>('format');
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
    value = registerOutput<String>('value');
  }
}
