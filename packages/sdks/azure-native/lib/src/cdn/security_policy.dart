import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_args.dart';
import 'security_policy_web_application_firewall_parameters_response.dart';
import 'system_data_response.dart';

/// SecurityPolicy association for AzureFrontDoor profile
///
/// Uses Azure REST API version 2025-06-01. In version 2.x of the Azure Native provider, it used API version 2023-05-01.
///
/// Other available API versions: 2023-05-01, 2023-07-01-preview, 2024-02-01, 2024-05-01-preview, 2024-06-01-preview, 2024-09-01, 2025-01-01-preview, 2025-04-15, 2025-07-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cdn [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### SecurityPolicies_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var securityPolicy = new AzureNative.Cdn.SecurityPolicy("securityPolicy", new()
///     {
///         Parameters = new AzureNative.Cdn.Inputs.SecurityPolicyWebApplicationFirewallParametersArgs
///         {
///             Associations = new[]
///             {
///                 new AzureNative.Cdn.Inputs.SecurityPolicyWebApplicationFirewallAssociationArgs
///                 {
///                     Domains = new[]
///                     {
///                         new AzureNative.Cdn.Inputs.ActivatedResourceReferenceArgs
///                         {
///                             Id = "/subscriptions/subid/resourcegroups/RG/providers/Microsoft.Cdn/profiles/profile1/customdomains/testdomain1",
///                         },
///                         new AzureNative.Cdn.Inputs.ActivatedResourceReferenceArgs
///                         {
///                             Id = "/subscriptions/subid/resourcegroups/RG/providers/Microsoft.Cdn/profiles/profile1/customdomains/testdomain2",
///                         },
///                     },
///                     PatternsToMatch = new[]
///                     {
///                         "/*",
///                     },
///                 },
///             },
///             Type = "WebApplicationFirewall",
///             WafPolicy = new AzureNative.Cdn.Inputs.ResourceReferenceArgs
///             {
///                 Id = "/subscriptions/subid/resourcegroups/RG/providers/Microsoft.Network/frontdoorwebapplicationfirewallpolicies/wafTest",
///             },
///         },
///         ProfileName = "profile1",
///         ResourceGroupName = "RG",
///         SecurityPolicyName = "securityPolicy1",
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
/// 	cdn "github.com/pulumi/pulumi-azure-native-sdk/cdn/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cdn.NewSecurityPolicy(ctx, "securityPolicy", &cdn.SecurityPolicyArgs{
/// 			Parameters: &cdn.SecurityPolicyWebApplicationFirewallParametersArgs{
/// 				Associations: cdn.SecurityPolicyWebApplicationFirewallAssociationArray{
/// 					&cdn.SecurityPolicyWebApplicationFirewallAssociationArgs{
/// 						Domains: cdn.ActivatedResourceReferenceArray{
/// 							&cdn.ActivatedResourceReferenceArgs{
/// 								Id: pulumi.String("/subscriptions/subid/resourcegroups/RG/providers/Microsoft.Cdn/profiles/profile1/customdomains/testdomain1"),
/// 							},
/// 							&cdn.ActivatedResourceReferenceArgs{
/// 								Id: pulumi.String("/subscriptions/subid/resourcegroups/RG/providers/Microsoft.Cdn/profiles/profile1/customdomains/testdomain2"),
/// 							},
/// 						},
/// 						PatternsToMatch: pulumi.StringArray{
/// 							pulumi.String("/*"),
/// 						},
/// 					},
/// 				},
/// 				Type: pulumi.String("WebApplicationFirewall"),
/// 				WafPolicy: &cdn.ResourceReferenceArgs{
/// 					Id: pulumi.String("/subscriptions/subid/resourcegroups/RG/providers/Microsoft.Network/frontdoorwebapplicationfirewallpolicies/wafTest"),
/// 				},
/// 			},
/// 			ProfileName:        pulumi.String("profile1"),
/// 			ResourceGroupName:  pulumi.String("RG"),
/// 			SecurityPolicyName: pulumi.String("securityPolicy1"),
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
/// import com.pulumi.azurenative.cdn.SecurityPolicy;
/// import com.pulumi.azurenative.cdn.SecurityPolicyArgs;
/// import com.pulumi.azurenative.cdn.inputs.SecurityPolicyWebApplicationFirewallParametersArgs;
/// import com.pulumi.azurenative.cdn.inputs.ResourceReferenceArgs;
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
///         var securityPolicy = new SecurityPolicy("securityPolicy", SecurityPolicyArgs.builder()
///             .parameters(SecurityPolicyWebApplicationFirewallParametersArgs.builder()
///                 .associations(SecurityPolicyWebApplicationFirewallAssociationArgs.builder()
///                     .domains(
///                         ActivatedResourceReferenceArgs.builder()
///                             .id("/subscriptions/subid/resourcegroups/RG/providers/Microsoft.Cdn/profiles/profile1/customdomains/testdomain1")
///                             .build(),
///                         ActivatedResourceReferenceArgs.builder()
///                             .id("/subscriptions/subid/resourcegroups/RG/providers/Microsoft.Cdn/profiles/profile1/customdomains/testdomain2")
///                             .build())
///                     .patternsToMatch("/*")
///                     .build())
///                 .type("WebApplicationFirewall")
///                 .wafPolicy(ResourceReferenceArgs.builder()
///                     .id("/subscriptions/subid/resourcegroups/RG/providers/Microsoft.Network/frontdoorwebapplicationfirewallpolicies/wafTest")
///                     .build())
///                 .build())
///             .profileName("profile1")
///             .resourceGroupName("RG")
///             .securityPolicyName("securityPolicy1")
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
/// const securityPolicy = new azure_native.cdn.SecurityPolicy("securityPolicy", {
///     parameters: {
///         associations: [{
///             domains: [
///                 {
///                     id: "/subscriptions/subid/resourcegroups/RG/providers/Microsoft.Cdn/profiles/profile1/customdomains/testdomain1",
///                 },
///                 {
///                     id: "/subscriptions/subid/resourcegroups/RG/providers/Microsoft.Cdn/profiles/profile1/customdomains/testdomain2",
///                 },
///             ],
///             patternsToMatch: ["/*"],
///         }],
///         type: "WebApplicationFirewall",
///         wafPolicy: {
///             id: "/subscriptions/subid/resourcegroups/RG/providers/Microsoft.Network/frontdoorwebapplicationfirewallpolicies/wafTest",
///         },
///     },
///     profileName: "profile1",
///     resourceGroupName: "RG",
///     securityPolicyName: "securityPolicy1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// security_policy = azure_native.cdn.SecurityPolicy("securityPolicy",
///     parameters={
///         "associations": [{
///             "domains": [
///                 {
///                     "id": "/subscriptions/subid/resourcegroups/RG/providers/Microsoft.Cdn/profiles/profile1/customdomains/testdomain1",
///                 },
///                 {
///                     "id": "/subscriptions/subid/resourcegroups/RG/providers/Microsoft.Cdn/profiles/profile1/customdomains/testdomain2",
///                 },
///             ],
///             "patterns_to_match": ["/*"],
///         }],
///         "type": "WebApplicationFirewall",
///         "waf_policy": {
///             "id": "/subscriptions/subid/resourcegroups/RG/providers/Microsoft.Network/frontdoorwebapplicationfirewallpolicies/wafTest",
///         },
///     },
///     profile_name="profile1",
///     resource_group_name="RG",
///     security_policy_name="securityPolicy1")
///
/// ```
///
/// ```yaml
/// resources:
///   securityPolicy:
///     type: azure-native:cdn:SecurityPolicy
///     properties:
///       parameters:
///         associations:
///           - domains:
///               - id: /subscriptions/subid/resourcegroups/RG/providers/Microsoft.Cdn/profiles/profile1/customdomains/testdomain1
///               - id: /subscriptions/subid/resourcegroups/RG/providers/Microsoft.Cdn/profiles/profile1/customdomains/testdomain2
///             patternsToMatch:
///               - /*
///         type: WebApplicationFirewall
///         wafPolicy:
///           id: /subscriptions/subid/resourcegroups/RG/providers/Microsoft.Network/frontdoorwebapplicationfirewallpolicies/wafTest
///       profileName: profile1
///       resourceGroupName: RG
///       securityPolicyName: securityPolicy1
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
/// $ pulumi import azure-native:cdn:SecurityPolicy securityPolicy1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Cdn/profiles/{profileName}/securityPolicies/{securityPolicyName}
/// ```
class SecurityPolicy extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  late final pulumi.Output<String> deploymentStatus;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// object which contains security policy parameters
  late final pulumi.Output<SecurityPolicyWebApplicationFirewallParametersResponse?> parameters;
  /// The name of the profile which holds the security policy.
  late final pulumi.Output<String> profileName;
  /// Provisioning status
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [SecurityPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecurityPolicy]. {@macro pulumi_cdn_security_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecurityPolicy(
    String name, {
    SecurityPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:cdn:SecurityPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    deploymentStatus = registerOutput<String>('deploymentStatus');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<SecurityPolicyWebApplicationFirewallParametersResponse?>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecurityPolicyWebApplicationFirewallParametersResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    profileName = registerOutput<String>('profileName');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
