import 'package:pulumi/pulumi.dart' as pulumi;
import 'product_policy_args.dart';

/// Policy Contract details.
///
/// Uses Azure REST API version 2022-09-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-08-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-05-01, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreateProductPolicy
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var productPolicy = new AzureNative.ApiManagement.ProductPolicy("productPolicy", new()
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
/// 		_, err := apimanagement.NewProductPolicy(ctx, "productPolicy", &apimanagement.ProductPolicyArgs{
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
/// import com.pulumi.azurenative.apimanagement.ProductPolicy;
/// import com.pulumi.azurenative.apimanagement.ProductPolicyArgs;
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
///         var productPolicy = new ProductPolicy("productPolicy", ProductPolicyArgs.builder()
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
/// const productPolicy = new azure_native.apimanagement.ProductPolicy("productPolicy", {
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
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// product_policy = azure_native.apimanagement.ProductPolicy("productPolicy",
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
/// </policies>""")
///
/// ```
///
/// ```yaml
/// resources:
///   productPolicy:
///     type: azure-native:apimanagement:ProductPolicy
///     properties:
///       format: xml
///       policyId: policy
///       productId: 5702e97e5157a50f48dce801
///       resourceGroupName: rg1
///       serviceName: apimService1
///       value: "<policies>\r\n  <inbound>\r\n    <rate-limit calls=\"{{call-count}}\" renewal-period=\"15\"></rate-limit>\r\n    <log-to-eventhub logger-id=\"16\">\r\n                      @( string.Join(\",\", DateTime.UtcNow, context.Deployment.ServiceName, context.RequestId, context.Request.IpAddress, context.Operation.Name) ) \r\n                  </log-to-eventhub>\r\n    <quota-by-key calls=\"40\" counter-key=\"cc\" renewal-period=\"3600\" increment-count=\"@(context.Request.Method == &quot;POST&quot; ? 1:2)\" />\r\n    <base />\r\n  </inbound>\r\n  <backend>\r\n    <base />\r\n  </backend>\r\n  <outbound>\r\n    <base />\r\n  </outbound>\r\n</policies>"
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
/// $ pulumi import azure-native:apimanagement:ProductPolicy policy /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/products/{productId}/policies/{policyId}
/// ```
class ProductPolicy extends pulumi.CustomResource {
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

  /// Creates a new [ProductPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProductPolicy]. {@macro pulumi_apimanagement_product_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProductPolicy(
    String name, {
    ProductPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:apimanagement:ProductPolicy',
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
