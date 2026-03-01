import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_args.dart';

/// Policy Contract details.
///
/// Uses Azure REST API version 2022-09-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-08-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-05-01, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreatePolicy
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = new AzureNative.ApiManagement.Policy("policy", new()
///     {
///         Format = AzureNative.ApiManagement.PolicyContentFormat.Xml,
///         PolicyId = "policy",
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
///         Value = @"<policies>
///   <inbound />
///   <backend>
///     <forward-request />
///   </backend>
///   <outbound />
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
/// 		_, err := apimanagement.NewPolicy(ctx, "policy", &apimanagement.PolicyArgs{
/// 			Format:            pulumi.String(apimanagement.PolicyContentFormatXml),
/// 			PolicyId:          pulumi.String("policy"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
/// 			Value: pulumi.String(`<policies>
///   <inbound />
///   <backend>
///     <forward-request />
///   </backend>
///   <outbound />
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
/// import com.pulumi.azurenative.apimanagement.Policy;
/// import com.pulumi.azurenative.apimanagement.PolicyArgs;
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
///         var policy = new Policy("policy", PolicyArgs.builder()
///             .format("xml")
///             .policyId("policy")
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
///             .value("""
/// <policies>
///   <inbound />
///   <backend>
///     <forward-request />
///   </backend>
///   <outbound />
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
/// const policy = new azure_native.apimanagement.Policy("policy", {
///     format: azure_native.apimanagement.PolicyContentFormat.Xml,
///     policyId: "policy",
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
///     value: `<policies>\x0d
///   <inbound />\x0d
///   <backend>\x0d
///     <forward-request />\x0d
///   </backend>\x0d
///   <outbound />\x0d
/// </policies>`,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// policy = azure_native.apimanagement.Policy("policy",
///     format=azure_native.apimanagement.PolicyContentFormat.XML,
///     policy_id="policy",
///     resource_group_name="rg1",
///     service_name="apimService1",
///     value="""<policies>\x0d
///   <inbound />\x0d
///   <backend>\x0d
///     <forward-request />\x0d
///   </backend>\x0d
///   <outbound />\x0d
/// </policies>""")
///
/// ```
///
/// ```yaml
/// resources:
///   policy:
///     type: azure-native:apimanagement:Policy
///     properties:
///       format: xml
///       policyId: policy
///       resourceGroupName: rg1
///       serviceName: apimService1
///       value: "<policies>\r\n  <inbound />\r\n  <backend>\r\n    <forward-request />\r\n  </backend>\r\n  <outbound />\r\n</policies>"
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
/// $ pulumi import azure-native:apimanagement:Policy policy /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/policies/{policyId}
/// ```
class Policy extends pulumi.CustomResource {
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

  /// Creates a new [Policy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Policy]. {@macro pulumi_apimanagement_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Policy(
    String name, {
    PolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:apimanagement:Policy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.format = registerOutput<String?>('format');
    this.name = registerOutput<String>('name');
    this.type = registerOutput<String>('type');
    this.value = registerOutput<String>('value');
  }
}
