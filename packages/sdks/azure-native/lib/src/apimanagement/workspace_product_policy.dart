import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_product_policy_args.dart';

/// Policy Contract details.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01-preview.
///
/// Other available API versions: 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreateWorkspaceProductPolicy
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workspaceProductPolicy = new AzureNative.ApiManagement.WorkspaceProductPolicy("workspaceProductPolicy", new()
///     {
///         Format = AzureNative.ApiManagement.PolicyContentFormat.Xml,
///         PolicyId = "policy",
///         ProductId = "5702e97e5157a50f48dce801",
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
///         Value = @"<policies>
///   <inbound>
///     <rate-limit calls=""{{call-count}}"" renewal-period=""15""></rate-limit>
///     <log-to-eventhub logger-id=""16"">
///                       @( string.Join("","", DateTime.UtcNow, context.Deployment.ServiceName, context.RequestId, context.Request.IpAddress, context.Operation.Name) )
///                   </log-to-eventhub>
///     <quota-by-key calls=""40"" counter-key=""cc"" renewal-period=""3600"" increment-count=""@(context.Request.Method == &quot;POST&quot; ? 1:2)"" />
///     <base />
///   </inbound>
///   <backend>
///     <base />
///   </backend>
///   <outbound>
///     <base />
///   </outbound>
/// </policies>",
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
/// 		_, err := apimanagement.NewWorkspaceProductPolicy(ctx, "workspaceProductPolicy", &apimanagement.WorkspaceProductPolicyArgs{
/// 			Format:            pulumi.String(apimanagement.PolicyContentFormatXml),
/// 			PolicyId:          pulumi.String("policy"),
/// 			ProductId:         pulumi.String("5702e97e5157a50f48dce801"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
/// 			Value: pulumi.String(`<policies>
///   <inbound>
///     <rate-limit calls="{{call-count}}" renewal-period="15"></rate-limit>
///     <log-to-eventhub logger-id="16">
///                       @( string.Join(",", DateTime.UtcNow, context.Deployment.ServiceName, context.RequestId, context.Request.IpAddress, context.Operation.Name) )
///                   </log-to-eventhub>
///     <quota-by-key calls="40" counter-key="cc" renewal-period="3600" increment-count="@(context.Request.Method == &quot;POST&quot; ? 1:2)" />
///     <base />
///   </inbound>
///   <backend>
///     <base />
///   </backend>
///   <outbound>
///     <base />
///   </outbound>
/// </policies>`),
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
/// resource "azure-native_apimanagement_workspaceproductpolicy" "workspaceProductPolicy" {
///   format              = "xml"
///   policy_id           = "policy"
///   product_id          = "5702e97e5157a50f48dce801"
///   resource_group_name = "rg1"
///   service_name        = "apimService1"
///   value               = "<policies>\r\n  <inbound>\r\n    <rate-limit calls=\"{{call-count}}\" renewal-period=\"15\"></rate-limit>\r\n    <log-to-eventhub logger-id=\"16\">\r\n                      @( string.Join(\",\", DateTime.UtcNow, context.Deployment.ServiceName, context.RequestId, context.Request.IpAddress, context.Operation.Name) ) \r\n                  </log-to-eventhub>\r\n    <quota-by-key calls=\"40\" counter-key=\"cc\" renewal-period=\"3600\" increment-count=\"@(context.Request.Method == &quot;POST&quot; ? 1:2)\" />\r\n    <base />\r\n  </inbound>\r\n  <backend>\r\n    <base />\r\n  </backend>\r\n  <outbound>\r\n    <base />\r\n  </outbound>\r\n</policies>"
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
/// import com.pulumi.azurenative.apimanagement.WorkspaceProductPolicy;
/// import com.pulumi.azurenative.apimanagement.WorkspaceProductPolicyArgs;
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
///         var workspaceProductPolicy = new WorkspaceProductPolicy("workspaceProductPolicy", WorkspaceProductPolicyArgs.builder()
///             .format("xml")
///             .policyId("policy")
///             .productId("5702e97e5157a50f48dce801")
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
///             .value("""
/// <policies>
///   <inbound>
///     <rate-limit calls="{{call-count}}" renewal-period="15"></rate-limit>
///     <log-to-eventhub logger-id="16">
///                       @( string.Join(",", DateTime.UtcNow, context.Deployment.ServiceName, context.RequestId, context.Request.IpAddress, context.Operation.Name) )
///                   </log-to-eventhub>
///     <quota-by-key calls="40" counter-key="cc" renewal-period="3600" increment-count="@(context.Request.Method == &quot;POST&quot; ? 1:2)" />
///     <base />
///   </inbound>
///   <backend>
///     <base />
///   </backend>
///   <outbound>
///     <base />
///   </outbound>
/// </policies>            """)
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
/// const workspaceProductPolicy = new azure_native.apimanagement.WorkspaceProductPolicy("workspaceProductPolicy", {
///     format: azure_native.apimanagement.PolicyContentFormat.Xml,
///     policyId: "policy",
///     productId: "5702e97e5157a50f48dce801",
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
///     value: `<policies>\x0d
///   <inbound>\x0d
///     <rate-limit calls="{{call-count}}" renewal-period="15"></rate-limit>\x0d
///     <log-to-eventhub logger-id="16">\x0d
///                       @( string.Join(",", DateTime.UtcNow, context.Deployment.ServiceName, context.RequestId, context.Request.IpAddress, context.Operation.Name) ) \x0d
///                   </log-to-eventhub>\x0d
///     <quota-by-key calls="40" counter-key="cc" renewal-period="3600" increment-count="@(context.Request.Method == &quot;POST&quot; ? 1:2)" />\x0d
///     <base />\x0d
///   </inbound>\x0d
///   <backend>\x0d
///     <base />\x0d
///   </backend>\x0d
///   <outbound>\x0d
///     <base />\x0d
///   </outbound>\x0d
/// </policies>`,
///     workspaceId: "wks1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workspace_product_policy = azure_native.apimanagement.WorkspaceProductPolicy("workspaceProductPolicy",
///     format=azure_native.apimanagement.PolicyContentFormat.XML,
///     policy_id="policy",
///     product_id="5702e97e5157a50f48dce801",
///     resource_group_name="rg1",
///     service_name="apimService1",
///     value="""<policies>\x0d
///   <inbound>\x0d
///     <rate-limit calls="{{call-count}}" renewal-period="15"></rate-limit>\x0d
///     <log-to-eventhub logger-id="16">\x0d
///                       @( string.Join(",", DateTime.UtcNow, context.Deployment.ServiceName, context.RequestId, context.Request.IpAddress, context.Operation.Name) ) \x0d
///                   </log-to-eventhub>\x0d
///     <quota-by-key calls="40" counter-key="cc" renewal-period="3600" increment-count="@(context.Request.Method == &quot;POST&quot; ? 1:2)" />\x0d
///     <base />\x0d
///   </inbound>\x0d
///   <backend>\x0d
///     <base />\x0d
///   </backend>\x0d
///   <outbound>\x0d
///     <base />\x0d
///   </outbound>\x0d
/// </policies>""",
///     workspace_id="wks1")
///
/// ```
///
/// ```yaml
/// resources:
///   workspaceProductPolicy:
///     type: azure-native:apimanagement:WorkspaceProductPolicy
///     properties:
///       format: xml
///       policyId: policy
///       productId: 5702e97e5157a50f48dce801
///       resourceGroupName: rg1
///       serviceName: apimService1
///       value: "<policies>\r\n  <inbound>\r\n    <rate-limit calls=\"{{call-count}}\" renewal-period=\"15\"></rate-limit>\r\n    <log-to-eventhub logger-id=\"16\">\r\n                      @( string.Join(\",\", DateTime.UtcNow, context.Deployment.ServiceName, context.RequestId, context.Request.IpAddress, context.Operation.Name) ) \r\n                  </log-to-eventhub>\r\n    <quota-by-key calls=\"40\" counter-key=\"cc\" renewal-period=\"3600\" increment-count=\"@(context.Request.Method == &quot;POST&quot; ? 1:2)\" />\r\n    <base />\r\n  </inbound>\r\n  <backend>\r\n    <base />\r\n  </backend>\r\n  <outbound>\r\n    <base />\r\n  </outbound>\r\n</policies>"
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
/// $ pulumi import azure-native:apimanagement:WorkspaceProductPolicy policy /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/workspaces/{workspaceId}/products/{productId}/policies/{policyId}
/// ```
class WorkspaceProductPolicy extends pulumi.CustomResource {
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

  /// Creates a new [WorkspaceProductPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkspaceProductPolicy]. {@macro pulumi_apimanagement_workspace_product_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkspaceProductPolicy(
    String name, {
    WorkspaceProductPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:apimanagement:WorkspaceProductPolicy',
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

  /// Creates a typed reference to an existing [WorkspaceProductPolicy] resource.
  WorkspaceProductPolicy.reference(String urn)
    : super(
        'azure-native:apimanagement:WorkspaceProductPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    format = registerOutput<String?>('format');
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
    value = registerOutput<String>('value');
  }
}
