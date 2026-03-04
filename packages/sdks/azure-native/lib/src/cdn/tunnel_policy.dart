import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'tunnel_policy_args.dart';

/// Tunnel Policy maps domains to target endpoints to process traffic over the tunnelling protocol.
///
/// Uses Azure REST API version 2024-06-01-preview. In version 2.x of the Azure Native provider, it used API version 2024-06-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### TunnelPolicies_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var tunnelPolicy = new AzureNative.Cdn.TunnelPolicy("tunnelPolicy", new()
///     {
///         Domains = new[]
///         {
///             new AzureNative.Cdn.Inputs.ActivatedResourceReferenceArgs
///             {
///                 Id = "/subscriptions/subid/resourcegroups/RG/providers/Microsoft.Cdn/profiles/profile1/customdomains/testdomain1",
///             },
///             new AzureNative.Cdn.Inputs.ActivatedResourceReferenceArgs
///             {
///                 Id = "/subscriptions/subid/resourcegroups/RG/providers/Microsoft.Cdn/profiles/profile1/customdomains/testdomain2",
///             },
///         },
///         ProfileName = "profile1",
///         ResourceGroupName = "RG",
///         TargetGroups = new[]
///         {
///             new AzureNative.Cdn.Inputs.ResourceReferenceArgs
///             {
///                 Id = "/subscriptions/subid/resourcegroups/RG/providers/Microsoft.Cdn/profiles/profile1/targetgroups/targetgroup1",
///             },
///             new AzureNative.Cdn.Inputs.ResourceReferenceArgs
///             {
///                 Id = "/subscriptions/subid/resourcegroups/RG/providers/Microsoft.Cdn/profiles/profile1/targetgroups/targetgroup2",
///             },
///         },
///         TunnelPolicyName = "tunnelPolicy1",
///         TunnelType = AzureNative.Cdn.TunnelType.HttpConnect,
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
/// 		_, err := cdn.NewTunnelPolicy(ctx, "tunnelPolicy", &cdn.TunnelPolicyArgs{
/// 			Domains: cdn.ActivatedResourceReferenceArray{
/// 				&cdn.ActivatedResourceReferenceArgs{
/// 					Id: pulumi.String("/subscriptions/subid/resourcegroups/RG/providers/Microsoft.Cdn/profiles/profile1/customdomains/testdomain1"),
/// 				},
/// 				&cdn.ActivatedResourceReferenceArgs{
/// 					Id: pulumi.String("/subscriptions/subid/resourcegroups/RG/providers/Microsoft.Cdn/profiles/profile1/customdomains/testdomain2"),
/// 				},
/// 			},
/// 			ProfileName:       pulumi.String("profile1"),
/// 			ResourceGroupName: pulumi.String("RG"),
/// 			TargetGroups: cdn.ResourceReferenceArray{
/// 				&cdn.ResourceReferenceArgs{
/// 					Id: pulumi.String("/subscriptions/subid/resourcegroups/RG/providers/Microsoft.Cdn/profiles/profile1/targetgroups/targetgroup1"),
/// 				},
/// 				&cdn.ResourceReferenceArgs{
/// 					Id: pulumi.String("/subscriptions/subid/resourcegroups/RG/providers/Microsoft.Cdn/profiles/profile1/targetgroups/targetgroup2"),
/// 				},
/// 			},
/// 			TunnelPolicyName: pulumi.String("tunnelPolicy1"),
/// 			TunnelType:       pulumi.String(cdn.TunnelTypeHttpConnect),
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
/// import com.pulumi.azurenative.cdn.TunnelPolicy;
/// import com.pulumi.azurenative.cdn.TunnelPolicyArgs;
/// import com.pulumi.azurenative.cdn.inputs.ActivatedResourceReferenceArgs;
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
///         var tunnelPolicy = new TunnelPolicy("tunnelPolicy", TunnelPolicyArgs.builder()
///             .domains(
///                 ActivatedResourceReferenceArgs.builder()
///                     .id("/subscriptions/subid/resourcegroups/RG/providers/Microsoft.Cdn/profiles/profile1/customdomains/testdomain1")
///                     .build(),
///                 ActivatedResourceReferenceArgs.builder()
///                     .id("/subscriptions/subid/resourcegroups/RG/providers/Microsoft.Cdn/profiles/profile1/customdomains/testdomain2")
///                     .build())
///             .profileName("profile1")
///             .resourceGroupName("RG")
///             .targetGroups(
///                 ResourceReferenceArgs.builder()
///                     .id("/subscriptions/subid/resourcegroups/RG/providers/Microsoft.Cdn/profiles/profile1/targetgroups/targetgroup1")
///                     .build(),
///                 ResourceReferenceArgs.builder()
///                     .id("/subscriptions/subid/resourcegroups/RG/providers/Microsoft.Cdn/profiles/profile1/targetgroups/targetgroup2")
///                     .build())
///             .tunnelPolicyName("tunnelPolicy1")
///             .tunnelType("HttpConnect")
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
/// const tunnelPolicy = new azure_native.cdn.TunnelPolicy("tunnelPolicy", {
///     domains: [
///         {
///             id: "/subscriptions/subid/resourcegroups/RG/providers/Microsoft.Cdn/profiles/profile1/customdomains/testdomain1",
///         },
///         {
///             id: "/subscriptions/subid/resourcegroups/RG/providers/Microsoft.Cdn/profiles/profile1/customdomains/testdomain2",
///         },
///     ],
///     profileName: "profile1",
///     resourceGroupName: "RG",
///     targetGroups: [
///         {
///             id: "/subscriptions/subid/resourcegroups/RG/providers/Microsoft.Cdn/profiles/profile1/targetgroups/targetgroup1",
///         },
///         {
///             id: "/subscriptions/subid/resourcegroups/RG/providers/Microsoft.Cdn/profiles/profile1/targetgroups/targetgroup2",
///         },
///     ],
///     tunnelPolicyName: "tunnelPolicy1",
///     tunnelType: azure_native.cdn.TunnelType.HttpConnect,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// tunnel_policy = azure_native.cdn.TunnelPolicy("tunnelPolicy",
///     domains=[
///         {
///             "id": "/subscriptions/subid/resourcegroups/RG/providers/Microsoft.Cdn/profiles/profile1/customdomains/testdomain1",
///         },
///         {
///             "id": "/subscriptions/subid/resourcegroups/RG/providers/Microsoft.Cdn/profiles/profile1/customdomains/testdomain2",
///         },
///     ],
///     profile_name="profile1",
///     resource_group_name="RG",
///     target_groups=[
///         {
///             "id": "/subscriptions/subid/resourcegroups/RG/providers/Microsoft.Cdn/profiles/profile1/targetgroups/targetgroup1",
///         },
///         {
///             "id": "/subscriptions/subid/resourcegroups/RG/providers/Microsoft.Cdn/profiles/profile1/targetgroups/targetgroup2",
///         },
///     ],
///     tunnel_policy_name="tunnelPolicy1",
///     tunnel_type=azure_native.cdn.TunnelType.HTTP_CONNECT)
///
/// ```
///
/// ```yaml
/// resources:
///   tunnelPolicy:
///     type: azure-native:cdn:TunnelPolicy
///     properties:
///       domains:
///         - id: /subscriptions/subid/resourcegroups/RG/providers/Microsoft.Cdn/profiles/profile1/customdomains/testdomain1
///         - id: /subscriptions/subid/resourcegroups/RG/providers/Microsoft.Cdn/profiles/profile1/customdomains/testdomain2
///       profileName: profile1
///       resourceGroupName: RG
///       targetGroups:
///         - id: /subscriptions/subid/resourcegroups/RG/providers/Microsoft.Cdn/profiles/profile1/targetgroups/targetgroup1
///         - id: /subscriptions/subid/resourcegroups/RG/providers/Microsoft.Cdn/profiles/profile1/targetgroups/targetgroup2
///       tunnelPolicyName: tunnelPolicy1
///       tunnelType: HttpConnect
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
/// $ pulumi import azure-native:cdn:TunnelPolicy tunnelPolicy1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Cdn/profiles/{profileName}/tunnelPolicies/{tunnelPolicyName}
/// ```
class TunnelPolicy extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  late final pulumi.Output<String> deploymentStatus;

  /// Domains referenced by this tunnel policy.
  late final pulumi.Output<List<Map<String, dynamic>>> domains;

  /// Resource name.
  late final pulumi.Output<String> name;

  /// Provisioning status
  late final pulumi.Output<String> provisioningState;

  /// Read only system data
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Target Groups referenced by this tunnel policy.
  late final pulumi.Output<List<Map<String, dynamic>>?> targetGroups;

  /// Protocol this tunnel will use for allowing traffic to backends.
  late final pulumi.Output<String?> tunnelType;

  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [TunnelPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TunnelPolicy]. {@macro pulumi_cdn_tunnel_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TunnelPolicy(
    String name, {
    TunnelPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:cdn:TunnelPolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    deploymentStatus = registerOutput<String>('deploymentStatus');
    domains = registerOutput<List<Map<String, dynamic>>>('domains');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData');
    targetGroups = registerOutput<List<Map<String, dynamic>>?>('targetGroups');
    tunnelType = registerOutput<String?>('tunnelType');
    type = registerOutput<String>('type');
  }
}
