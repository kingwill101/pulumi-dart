import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policies_interface_args.dart';
import 'system_data_response.dart';
import 'waf_policy_response.dart';

/// SecurityPolicy Subresource of Traffic Controller.
///
/// Uses Azure REST API version 2025-01-01. In version 2.x of the Azure Native provider, it used API version 2024-05-01-preview.
///
/// Other available API versions: 2024-05-01-preview, 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native servicenetworking [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Put SecurityPolicy
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var securityPoliciesInterface = new AzureNative.ServiceNetworking.SecurityPoliciesInterface("securityPoliciesInterface", new()
///     {
///         Location = "NorthCentralUS",
///         ResourceGroupName = "rg1",
///         SecurityPolicyName = "sp1",
///         TrafficControllerName = "tc1",
///         WafPolicy = new AzureNative.ServiceNetworking.Inputs.WafPolicyArgs
///         {
///             Id = "/subscriptions/subid/resourcegroups/rg1/providers/Microsoft.Network/applicationGatewayWebApplicationFirewallPolicies/wp-0",
///         },
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
/// 	servicenetworking "github.com/pulumi/pulumi-azure-native-sdk/servicenetworking/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := servicenetworking.NewSecurityPoliciesInterface(ctx, "securityPoliciesInterface", &servicenetworking.SecurityPoliciesInterfaceArgs{
/// 			Location:              pulumi.String("NorthCentralUS"),
/// 			ResourceGroupName:     pulumi.String("rg1"),
/// 			SecurityPolicyName:    pulumi.String("sp1"),
/// 			TrafficControllerName: pulumi.String("tc1"),
/// 			WafPolicy: &servicenetworking.WafPolicyArgs{
/// 				Id: pulumi.String("/subscriptions/subid/resourcegroups/rg1/providers/Microsoft.Network/applicationGatewayWebApplicationFirewallPolicies/wp-0"),
/// 			},
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
/// import com.pulumi.azurenative.servicenetworking.SecurityPoliciesInterface;
/// import com.pulumi.azurenative.servicenetworking.SecurityPoliciesInterfaceArgs;
/// import com.pulumi.azurenative.servicenetworking.inputs.WafPolicyArgs;
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
///         var securityPoliciesInterface = new SecurityPoliciesInterface("securityPoliciesInterface", SecurityPoliciesInterfaceArgs.builder()
///             .location("NorthCentralUS")
///             .resourceGroupName("rg1")
///             .securityPolicyName("sp1")
///             .trafficControllerName("tc1")
///             .wafPolicy(WafPolicyArgs.builder()
///                 .id("/subscriptions/subid/resourcegroups/rg1/providers/Microsoft.Network/applicationGatewayWebApplicationFirewallPolicies/wp-0")
///                 .build())
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
/// const securityPoliciesInterface = new azure_native.servicenetworking.SecurityPoliciesInterface("securityPoliciesInterface", {
///     location: "NorthCentralUS",
///     resourceGroupName: "rg1",
///     securityPolicyName: "sp1",
///     trafficControllerName: "tc1",
///     wafPolicy: {
///         id: "/subscriptions/subid/resourcegroups/rg1/providers/Microsoft.Network/applicationGatewayWebApplicationFirewallPolicies/wp-0",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// security_policies_interface = azure_native.servicenetworking.SecurityPoliciesInterface("securityPoliciesInterface",
///     location="NorthCentralUS",
///     resource_group_name="rg1",
///     security_policy_name="sp1",
///     traffic_controller_name="tc1",
///     waf_policy={
///         "id": "/subscriptions/subid/resourcegroups/rg1/providers/Microsoft.Network/applicationGatewayWebApplicationFirewallPolicies/wp-0",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   securityPoliciesInterface:
///     type: azure-native:servicenetworking:SecurityPoliciesInterface
///     properties:
///       location: NorthCentralUS
///       resourceGroupName: rg1
///       securityPolicyName: sp1
///       trafficControllerName: tc1
///       wafPolicy:
///         id: /subscriptions/subid/resourcegroups/rg1/providers/Microsoft.Network/applicationGatewayWebApplicationFirewallPolicies/wp-0
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
/// $ pulumi import azure-native:servicenetworking:SecurityPoliciesInterface waf-0 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceNetworking/trafficControllers/{trafficControllerName}/securityPolicies/{securityPolicyName}
/// ```
class SecurityPoliciesInterface extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Type of the Traffic Controller Security Policy
  late final pulumi.Output<String> policyType;
  /// Provisioning State of Traffic Controller SecurityPolicy Resource
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Web Application Firewall Policy of the Traffic Controller Security Policy. Single Security Policy can have only one policy type set.
  late final pulumi.Output<WafPolicyResponse?> wafPolicy;

  /// Creates a new [SecurityPoliciesInterface].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecurityPoliciesInterface]. {@macro pulumi_servicenetworking_security_policies_interface_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecurityPoliciesInterface(
    String name, {
    SecurityPoliciesInterfaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:servicenetworking:SecurityPoliciesInterface',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.policyType = registerOutput<String>('policyType');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
    this.wafPolicy = registerOutput<WafPolicyResponse?>('wafPolicy');
  }
}
