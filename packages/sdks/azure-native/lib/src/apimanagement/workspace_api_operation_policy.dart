import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_api_operation_policy_args.dart';

/// Policy Contract details.
///
/// Uses Azure REST API version 2022-09-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-09-01-preview.
///
/// Other available API versions: 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-05-01, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreateWorkspaceApiOperationPolicy
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workspaceApiOperationPolicy = new AzureNative.ApiManagement.WorkspaceApiOperationPolicy("workspaceApiOperationPolicy", new()
///     {
///         ApiId = "5600b57e7e8880006a040001",
///         Format = AzureNative.ApiManagement.PolicyContentFormat.Xml,
///         OperationId = "5600b57e7e8880006a080001",
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
/// 		_, err := apimanagement.NewWorkspaceApiOperationPolicy(ctx, "workspaceApiOperationPolicy", &apimanagement.WorkspaceApiOperationPolicyArgs{
/// 			ApiId:             pulumi.String("5600b57e7e8880006a040001"),
/// 			Format:            pulumi.String(apimanagement.PolicyContentFormatXml),
/// 			OperationId:       pulumi.String("5600b57e7e8880006a080001"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.apimanagement.WorkspaceApiOperationPolicy;
/// import com.pulumi.azurenative.apimanagement.WorkspaceApiOperationPolicyArgs;
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
///         var workspaceApiOperationPolicy = new WorkspaceApiOperationPolicy("workspaceApiOperationPolicy", WorkspaceApiOperationPolicyArgs.builder()
///             .apiId("5600b57e7e8880006a040001")
///             .format("xml")
///             .operationId("5600b57e7e8880006a080001")
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
/// const workspaceApiOperationPolicy = new azure_native.apimanagement.WorkspaceApiOperationPolicy("workspaceApiOperationPolicy", {
///     apiId: "5600b57e7e8880006a040001",
///     format: azure_native.apimanagement.PolicyContentFormat.Xml,
///     operationId: "5600b57e7e8880006a080001",
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
/// workspace_api_operation_policy = azure_native.apimanagement.WorkspaceApiOperationPolicy("workspaceApiOperationPolicy",
///     api_id="5600b57e7e8880006a040001",
///     format=azure_native.apimanagement.PolicyContentFormat.XML,
///     operation_id="5600b57e7e8880006a080001",
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
///   workspaceApiOperationPolicy:
///     type: azure-native:apimanagement:WorkspaceApiOperationPolicy
///     properties:
///       apiId: 5600b57e7e8880006a040001
///       format: xml
///       operationId: 5600b57e7e8880006a080001
///       policyId: policy
///       resourceGroupName: rg1
///       serviceName: apimService1
///       value: <policies> <inbound /> <backend>    <forward-request />  </backend>  <outbound /></policies>
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
/// $ pulumi import azure-native:apimanagement:WorkspaceApiOperationPolicy policy /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/workspaces/{workspaceId}/apis/{apiId}/operations/{operationId}/policies/{policyId}
/// ```
class WorkspaceApiOperationPolicy extends pulumi.CustomResource {
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

  /// Creates a new [WorkspaceApiOperationPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkspaceApiOperationPolicy]. {@macro pulumi_apimanagement_workspace_api_operation_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkspaceApiOperationPolicy(
    String name, {
    WorkspaceApiOperationPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:apimanagement:WorkspaceApiOperationPolicy',
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
