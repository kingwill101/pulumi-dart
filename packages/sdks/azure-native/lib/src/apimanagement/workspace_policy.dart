import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_policy_args.dart';

/// Policy Contract details.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01-preview.
///
/// Other available API versions: 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreateWorkspacePolicy
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workspacePolicy = new AzureNative.ApiManagement.WorkspacePolicy("workspacePolicy", new()
///     {
///         Format = AzureNative.ApiManagement.PolicyContentFormat.Xml,
///         PolicyId = "policy",
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
///         Value = "<policies> <inbound /> <backend>    <forward-request />  </backend>  <outbound /></policies>",
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
/// 		_, err := apimanagement.NewWorkspacePolicy(ctx, "workspacePolicy", &apimanagement.WorkspacePolicyArgs{
/// 			Format:            pulumi.String(apimanagement.PolicyContentFormatXml),
/// 			PolicyId:          pulumi.String("policy"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
/// 			Value:             pulumi.String("<policies> <inbound /> <backend>    <forward-request />  </backend>  <outbound /></policies>"),
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
/// resource "azure-native_apimanagement_workspacepolicy" "workspacePolicy" {
///   format              = "xml"
///   policy_id           = "policy"
///   resource_group_name = "rg1"
///   service_name        = "apimService1"
///   value               = "<policies> <inbound /> <backend>    <forward-request />  </backend>  <outbound /></policies>"
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
/// import com.pulumi.azurenative.apimanagement.WorkspacePolicy;
/// import com.pulumi.azurenative.apimanagement.WorkspacePolicyArgs;
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
///         var workspacePolicy = new WorkspacePolicy("workspacePolicy", WorkspacePolicyArgs.builder()
///             .format("xml")
///             .policyId("policy")
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
///             .value("<policies> <inbound /> <backend>    <forward-request />  </backend>  <outbound /></policies>")
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
/// const workspacePolicy = new azure_native.apimanagement.WorkspacePolicy("workspacePolicy", {
///     format: azure_native.apimanagement.PolicyContentFormat.Xml,
///     policyId: "policy",
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
///     value: "<policies> <inbound /> <backend>    <forward-request />  </backend>  <outbound /></policies>",
///     workspaceId: "wks1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workspace_policy = azure_native.apimanagement.WorkspacePolicy("workspacePolicy",
///     format=azure_native.apimanagement.PolicyContentFormat.XML,
///     policy_id="policy",
///     resource_group_name="rg1",
///     service_name="apimService1",
///     value="<policies> <inbound /> <backend>    <forward-request />  </backend>  <outbound /></policies>",
///     workspace_id="wks1")
///
/// ```
///
/// ```yaml
/// resources:
///   workspacePolicy:
///     type: azure-native:apimanagement:WorkspacePolicy
///     properties:
///       format: xml
///       policyId: policy
///       resourceGroupName: rg1
///       serviceName: apimService1
///       value: <policies> <inbound /> <backend>    <forward-request />  </backend>  <outbound /></policies>
///       workspaceId: wks1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ApiManagementCreateWorkspacePolicyNonXmlEncoded
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workspacePolicy = new AzureNative.ApiManagement.WorkspacePolicy("workspacePolicy", new()
///     {
///         Format = AzureNative.ApiManagement.PolicyContentFormat.Rawxml,
///         PolicyId = "policy",
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
///         Value = @"<policies>
///      <inbound>
///      <base />
///   <set-header name=""newvalue"" exists-action=""override"">
///    <value>""@(context.Request.Headers.FirstOrDefault(h => h.Ke==""Via""))"" </value>
///     </set-header>
///   </inbound>
///       </policies>",
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
/// 		_, err := apimanagement.NewWorkspacePolicy(ctx, "workspacePolicy", &apimanagement.WorkspacePolicyArgs{
/// 			Format:            pulumi.String(apimanagement.PolicyContentFormatRawxml),
/// 			PolicyId:          pulumi.String("policy"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
/// 			Value: pulumi.String(`<policies>
///      <inbound>
///      <base />
///   <set-header name="newvalue" exists-action="override">
///    <value>"@(context.Request.Headers.FirstOrDefault(h => h.Ke=="Via"))" </value>
///     </set-header>
///   </inbound>
///       </policies>`),
/// 			WorkspaceId: pulumi.String("wks1"),
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
/// resource "azure-native_apimanagement_workspacepolicy" "workspacePolicy" {
///   format              = "rawxml"
///   policy_id           = "policy"
///   resource_group_name = "rg1"
///   service_name        = "apimService1"
///   value               = "<policies>\r\n     <inbound>\r\n     <base />\r\n  <set-header name=\"newvalue\" exists-action=\"override\">\r\n   <value>\"@(context.Request.Headers.FirstOrDefault(h => h.Ke==\"Via\"))\" </value>\r\n    </set-header>\r\n  </inbound>\r\n      </policies>"
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
/// import com.pulumi.azurenative.apimanagement.WorkspacePolicy;
/// import com.pulumi.azurenative.apimanagement.WorkspacePolicyArgs;
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
///         var workspacePolicy = new WorkspacePolicy("workspacePolicy", WorkspacePolicyArgs.builder()
///             .format("rawxml")
///             .policyId("policy")
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
///             .value("""
/// <policies>
///      <inbound>
///      <base />
///   <set-header name="newvalue" exists-action="override">
///    <value>"@(context.Request.Headers.FirstOrDefault(h => h.Ke=="Via"))" </value>
///     </set-header>
///   </inbound>
///       </policies>            """)
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
/// const workspacePolicy = new azure_native.apimanagement.WorkspacePolicy("workspacePolicy", {
///     format: azure_native.apimanagement.PolicyContentFormat.Rawxml,
///     policyId: "policy",
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
///     value: `<policies>\x0d
///      <inbound>\x0d
///      <base />\x0d
///   <set-header name="newvalue" exists-action="override">\x0d
///    <value>"@(context.Request.Headers.FirstOrDefault(h => h.Ke=="Via"))" </value>\x0d
///     </set-header>\x0d
///   </inbound>\x0d
///       </policies>`,
///     workspaceId: "wks1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workspace_policy = azure_native.apimanagement.WorkspacePolicy("workspacePolicy",
///     format=azure_native.apimanagement.PolicyContentFormat.RAWXML,
///     policy_id="policy",
///     resource_group_name="rg1",
///     service_name="apimService1",
///     value="""<policies>\x0d
///      <inbound>\x0d
///      <base />\x0d
///   <set-header name="newvalue" exists-action="override">\x0d
///    <value>"@(context.Request.Headers.FirstOrDefault(h => h.Ke=="Via"))" </value>\x0d
///     </set-header>\x0d
///   </inbound>\x0d
///       </policies>""",
///     workspace_id="wks1")
///
/// ```
///
/// ```yaml
/// resources:
///   workspacePolicy:
///     type: azure-native:apimanagement:WorkspacePolicy
///     properties:
///       format: rawxml
///       policyId: policy
///       resourceGroupName: rg1
///       serviceName: apimService1
///       value: "<policies>\r\n     <inbound>\r\n     <base />\r\n  <set-header name=\"newvalue\" exists-action=\"override\">\r\n   <value>\"@(context.Request.Headers.FirstOrDefault(h => h.Ke==\"Via\"))\" </value>\r\n    </set-header>\r\n  </inbound>\r\n      </policies>"
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
/// $ pulumi import azure-native:apimanagement:WorkspacePolicy policy /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/workspaces/{workspaceId}/policies/{policyId}
/// ```
class WorkspacePolicy extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Format of the policyContent.
  late final pulumi.Output<String?> format;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Contents of the Policy as defined by the format.
  late final pulumi.Output<String> value;

  /// Creates a new [WorkspacePolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkspacePolicy]. {@macro pulumi_apimanagement_workspace_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkspacePolicy(
    String name, {
    WorkspacePolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:apimanagement:WorkspacePolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    format = registerOutput<String?>('format');
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
    value = registerOutput<String>('value');
  }
}
