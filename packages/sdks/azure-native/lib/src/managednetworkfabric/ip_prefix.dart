import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_prefix_args.dart';
import 'system_data_response.dart';

/// The IP Prefix resource definition.
///
/// Uses Azure REST API version 2023-06-15. In version 2.x of the Azure Native provider, it used API version 2023-02-01-preview.
///
/// Other available API versions: 2023-02-01-preview, 2024-02-15-preview, 2024-06-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native managednetworkfabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### IpPrefixes_Create_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ipPrefix = new AzureNative.ManagedNetworkFabric.IpPrefix("ipPrefix", new()
///     {
///         Annotation = "annotation",
///         IpPrefixName = "example-ipPrefix",
///         IpPrefixRules = new[]
///         {
///             new AzureNative.ManagedNetworkFabric.Inputs.IpPrefixRuleArgs
///             {
///                 Action = AzureNative.ManagedNetworkFabric.CommunityActionTypes.Permit,
///                 Condition = AzureNative.ManagedNetworkFabric.Condition.GreaterThanOrEqualTo,
///                 NetworkPrefix = "10.10.10.10/30",
///                 SequenceNumber = 4155123341,
///                 SubnetMaskLength = "10",
///             },
///         },
///         Location = "eastus",
///         ResourceGroupName = "example-rg",
///         Tags =
///         {
///             { "keyID", "KeyValue" },
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
/// 	managednetworkfabric "github.com/pulumi/pulumi-azure-native-sdk/managednetworkfabric/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := managednetworkfabric.NewIpPrefix(ctx, "ipPrefix", &managednetworkfabric.IpPrefixArgs{
/// 			Annotation:   pulumi.String("annotation"),
/// 			IpPrefixName: pulumi.String("example-ipPrefix"),
/// 			IpPrefixRules: managednetworkfabric.IpPrefixRuleArray{
/// 				&managednetworkfabric.IpPrefixRuleArgs{
/// 					Action:           pulumi.String(managednetworkfabric.CommunityActionTypesPermit),
/// 					Condition:        pulumi.String(managednetworkfabric.ConditionGreaterThanOrEqualTo),
/// 					NetworkPrefix:    pulumi.String("10.10.10.10/30"),
/// 					SequenceNumber:   pulumi.Float64(4155123341),
/// 					SubnetMaskLength: pulumi.String("10"),
/// 				},
/// 			},
/// 			Location:          pulumi.String("eastus"),
/// 			ResourceGroupName: pulumi.String("example-rg"),
/// 			Tags: pulumi.StringMap{
/// 				"keyID": pulumi.String("KeyValue"),
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
/// import com.pulumi.azurenative.managednetworkfabric.IpPrefix;
/// import com.pulumi.azurenative.managednetworkfabric.IpPrefixArgs;
/// import com.pulumi.azurenative.managednetworkfabric.inputs.IpPrefixRuleArgs;
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
///         var ipPrefix = new IpPrefix("ipPrefix", IpPrefixArgs.builder()
///             .annotation("annotation")
///             .ipPrefixName("example-ipPrefix")
///             .ipPrefixRules(IpPrefixRuleArgs.builder()
///                 .action("Permit")
///                 .condition("GreaterThanOrEqualTo")
///                 .networkPrefix("10.10.10.10/30")
///                 .sequenceNumber(4155123341.0)
///                 .subnetMaskLength("10")
///                 .build())
///             .location("eastus")
///             .resourceGroupName("example-rg")
///             .tags(Map.of("keyID", "KeyValue"))
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
/// const ipPrefix = new azure_native.managednetworkfabric.IpPrefix("ipPrefix", {
///     annotation: "annotation",
///     ipPrefixName: "example-ipPrefix",
///     ipPrefixRules: [{
///         action: azure_native.managednetworkfabric.CommunityActionTypes.Permit,
///         condition: azure_native.managednetworkfabric.Condition.GreaterThanOrEqualTo,
///         networkPrefix: "10.10.10.10/30",
///         sequenceNumber: 4155123341,
///         subnetMaskLength: "10",
///     }],
///     location: "eastus",
///     resourceGroupName: "example-rg",
///     tags: {
///         keyID: "KeyValue",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// ip_prefix = azure_native.managednetworkfabric.IpPrefix("ipPrefix",
///     annotation="annotation",
///     ip_prefix_name="example-ipPrefix",
///     ip_prefix_rules=[{
///         "action": azure_native.managednetworkfabric.CommunityActionTypes.PERMIT,
///         "condition": azure_native.managednetworkfabric.Condition.GREATER_THAN_OR_EQUAL_TO,
///         "network_prefix": "10.10.10.10/30",
///         "sequence_number": 4155123341,
///         "subnet_mask_length": "10",
///     }],
///     location="eastus",
///     resource_group_name="example-rg",
///     tags={
///         "keyID": "KeyValue",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   ipPrefix:
///     type: azure-native:managednetworkfabric:IpPrefix
///     properties:
///       annotation: annotation
///       ipPrefixName: example-ipPrefix
///       ipPrefixRules:
///         - action: Permit
///           condition: GreaterThanOrEqualTo
///           networkPrefix: 10.10.10.10/30
///           sequenceNumber: 4.155123341e+09
///           subnetMaskLength: '10'
///       location: eastus
///       resourceGroupName: example-rg
///       tags:
///         keyID: KeyValue
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
/// $ pulumi import azure-native:managednetworkfabric:IpPrefix example-ipPrefix /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedNetworkFabric/ipPrefixes/{ipPrefixName}
/// ```
class IpPrefix extends pulumi.CustomResource {
  /// Administrative state of the resource.
  late final pulumi.Output<String> administrativeState;

  /// Switch configuration description.
  late final pulumi.Output<String?> annotation;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Configuration state of the resource.
  late final pulumi.Output<String> configurationState;

  /// The list of IP Prefix Rules.
  late final pulumi.Output<List<Map<String, dynamic>>> ipPrefixRules;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [IpPrefix].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IpPrefix]. {@macro pulumi_managednetworkfabric_ip_prefix_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IpPrefix(
    String name, {
    IpPrefixArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:managednetworkfabric:IpPrefix',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    administrativeState = registerOutput<String>('administrativeState');
    annotation = registerOutput<String?>('annotation');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    configurationState = registerOutput<String>('configurationState');
    ipPrefixRules = registerOutput<List<Map<String, dynamic>>>('ipPrefixRules');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
