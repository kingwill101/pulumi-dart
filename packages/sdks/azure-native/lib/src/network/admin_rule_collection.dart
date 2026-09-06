import 'package:pulumi/pulumi.dart' as pulumi;
import 'admin_rule_collection_args.dart';
import 'network_manager_security_group_item_response.dart';
import 'system_data_response.dart';

/// Defines the admin rule collection.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2021-02-01-preview, 2022-01-01, 2022-02-01-preview, 2022-04-01-preview, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-01-01-preview, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or Update an admin rule collection
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var adminRuleCollection = new AzureNative.Network.AdminRuleCollection("adminRuleCollection", new()
///     {
///         AppliesToGroups = new[]
///         {
///             new AzureNative.Network.Inputs.NetworkManagerSecurityGroupItemArgs
///             {
///                 NetworkGroupId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/networkManagers/testNetworkManager/networkGroups/testGroup",
///             },
///         },
///         ConfigurationName = "myTestSecurityConfig",
///         Description = "A sample policy",
///         NetworkManagerName = "testNetworkManager",
///         ResourceGroupName = "rg1",
///         RuleCollectionName = "testRuleCollection",
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
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewAdminRuleCollection(ctx, "adminRuleCollection", &network.AdminRuleCollectionArgs{
/// 			AppliesToGroups: network.NetworkManagerSecurityGroupItemArray{
/// 				&network.NetworkManagerSecurityGroupItemArgs{
/// 					NetworkGroupId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/networkManagers/testNetworkManager/networkGroups/testGroup"),
/// 				},
/// 			},
/// 			ConfigurationName:  pulumi.String("myTestSecurityConfig"),
/// 			Description:        pulumi.String("A sample policy"),
/// 			NetworkManagerName: pulumi.String("testNetworkManager"),
/// 			ResourceGroupName:  pulumi.String("rg1"),
/// 			RuleCollectionName: pulumi.String("testRuleCollection"),
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
/// resource "azure-native_network_adminrulecollection" "adminRuleCollection" {
///   applies_to_groups {
///     network_group_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/networkManagers/testNetworkManager/networkGroups/testGroup"
///   }
///   configuration_name   = "myTestSecurityConfig"
///   description          = "A sample policy"
///   network_manager_name = "testNetworkManager"
///   resource_group_name  = "rg1"
///   rule_collection_name = "testRuleCollection"
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
/// import com.pulumi.azurenative.network.AdminRuleCollection;
/// import com.pulumi.azurenative.network.AdminRuleCollectionArgs;
/// import com.pulumi.azurenative.network.inputs.NetworkManagerSecurityGroupItemArgs;
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
///         var adminRuleCollection = new AdminRuleCollection("adminRuleCollection", AdminRuleCollectionArgs.builder()
///             .appliesToGroups(NetworkManagerSecurityGroupItemArgs.builder()
///                 .networkGroupId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/networkManagers/testNetworkManager/networkGroups/testGroup")
///                 .build())
///             .configurationName("myTestSecurityConfig")
///             .description("A sample policy")
///             .networkManagerName("testNetworkManager")
///             .resourceGroupName("rg1")
///             .ruleCollectionName("testRuleCollection")
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
/// const adminRuleCollection = new azure_native.network.AdminRuleCollection("adminRuleCollection", {
///     appliesToGroups: [{
///         networkGroupId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/networkManagers/testNetworkManager/networkGroups/testGroup",
///     }],
///     configurationName: "myTestSecurityConfig",
///     description: "A sample policy",
///     networkManagerName: "testNetworkManager",
///     resourceGroupName: "rg1",
///     ruleCollectionName: "testRuleCollection",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// admin_rule_collection = azure_native.network.AdminRuleCollection("adminRuleCollection",
///     applies_to_groups=[{
///         "network_group_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/networkManagers/testNetworkManager/networkGroups/testGroup",
///     }],
///     configuration_name="myTestSecurityConfig",
///     description="A sample policy",
///     network_manager_name="testNetworkManager",
///     resource_group_name="rg1",
///     rule_collection_name="testRuleCollection")
///
/// ```
///
/// ```yaml
/// resources:
///   adminRuleCollection:
///     type: azure-native:network:AdminRuleCollection
///     properties:
///       appliesToGroups:
///         - networkGroupId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/networkManagers/testNetworkManager/networkGroups/testGroup
///       configurationName: myTestSecurityConfig
///       description: A sample policy
///       networkManagerName: testNetworkManager
///       resourceGroupName: rg1
///       ruleCollectionName: testRuleCollection
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
/// $ pulumi import azure-native:network:AdminRuleCollection myTestSecurityConfig /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkManagers/{networkManagerName}/securityAdminConfigurations/{configurationName}/ruleCollections/{ruleCollectionName}
/// ```
class AdminRuleCollection extends pulumi.CustomResource {
  /// Groups for configuration
  late final pulumi.Output<List<NetworkManagerSecurityGroupItemResponse>> appliesToGroups;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// A description of the admin rule collection.
  late final pulumi.Output<String?> description;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// The provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// Unique identifier for this resource.
  late final pulumi.Output<String> resourceGuid;
  /// The system metadata related to this resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [AdminRuleCollection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AdminRuleCollection]. {@macro pulumi_network_admin_rule_collection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AdminRuleCollection(
    String name, {
    AdminRuleCollectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:AdminRuleCollection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    appliesToGroups = registerOutput<List<NetworkManagerSecurityGroupItemResponse>>('appliesToGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<NetworkManagerSecurityGroupItemResponse>(guardedValue, (value) => NetworkManagerSecurityGroupItemResponse.fromMap((value as Map).cast<String, dynamic>())); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    resourceGuid = registerOutput<String>('resourceGuid');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [AdminRuleCollection] resource.
  AdminRuleCollection.reference(String urn)
    : super(
        'azure-native:network:AdminRuleCollection',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    appliesToGroups = registerOutput<List<NetworkManagerSecurityGroupItemResponse>>('appliesToGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<NetworkManagerSecurityGroupItemResponse>(guardedValue, (value) => NetworkManagerSecurityGroupItemResponse.fromMap((value as Map).cast<String, dynamic>())); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    resourceGuid = registerOutput<String>('resourceGuid');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
