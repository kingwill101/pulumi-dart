import 'package:pulumi/pulumi.dart' as pulumi;
import 'l2_isolation_domain_args.dart';
import 'system_data_response.dart';

/// The L2 Isolation Domain resource definition.
///
/// Uses Azure REST API version 2023-06-15. In version 2.x of the Azure Native provider, it used API version 2023-02-01-preview.
///
/// Other available API versions: 2023-02-01-preview, 2024-02-15-preview, 2024-06-15-preview, 2025-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native managednetworkfabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### L2IsolationDomains_Create_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var l2IsolationDomain = new AzureNative.ManagedNetworkFabric.L2IsolationDomain("l2IsolationDomain", new()
///     {
///         Annotation = "annotation",
///         L2IsolationDomainName = "example-l2domain",
///         Location = "eastus",
///         Mtu = 1500,
///         NetworkFabricId = "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabrics/example-fabric",
///         ResourceGroupName = "example-rg",
///         Tags =
///         {
///             { "keyID", "keyValue" },
///         },
///         VlanId = 501,
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
/// 		_, err := managednetworkfabric.NewL2IsolationDomain(ctx, "l2IsolationDomain", &managednetworkfabric.L2IsolationDomainArgs{
/// 			Annotation:            pulumi.String("annotation"),
/// 			L2IsolationDomainName: pulumi.String("example-l2domain"),
/// 			Location:              pulumi.String("eastus"),
/// 			Mtu:                   pulumi.Int(1500),
/// 			NetworkFabricId:       pulumi.String("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabrics/example-fabric"),
/// 			ResourceGroupName:     pulumi.String("example-rg"),
/// 			Tags: pulumi.StringMap{
/// 				"keyID": pulumi.String("keyValue"),
/// 			},
/// 			VlanId: pulumi.Int(501),
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
/// resource "azure-native_managednetworkfabric_l2isolationdomain" "l2IsolationDomain" {
///   annotation               = "annotation"
///   l2_isolation_domain_name = "example-l2domain"
///   location                 = "eastus"
///   mtu                      = 1500
///   network_fabric_id        = "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabrics/example-fabric"
///   resource_group_name      = "example-rg"
///   tags = {
///     "keyID" = "keyValue"
///   }
///   vlan_id = 501
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
/// import com.pulumi.azurenative.managednetworkfabric.L2IsolationDomain;
/// import com.pulumi.azurenative.managednetworkfabric.L2IsolationDomainArgs;
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
///         var l2IsolationDomain = new L2IsolationDomain("l2IsolationDomain", L2IsolationDomainArgs.builder()
///             .annotation("annotation")
///             .l2IsolationDomainName("example-l2domain")
///             .location("eastus")
///             .mtu(1500)
///             .networkFabricId("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabrics/example-fabric")
///             .resourceGroupName("example-rg")
///             .tags(Map.of("keyID", "keyValue"))
///             .vlanId(501)
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
/// const l2IsolationDomain = new azure_native.managednetworkfabric.L2IsolationDomain("l2IsolationDomain", {
///     annotation: "annotation",
///     l2IsolationDomainName: "example-l2domain",
///     location: "eastus",
///     mtu: 1500,
///     networkFabricId: "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabrics/example-fabric",
///     resourceGroupName: "example-rg",
///     tags: {
///         keyID: "keyValue",
///     },
///     vlanId: 501,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// l2_isolation_domain = azure_native.managednetworkfabric.L2IsolationDomain("l2IsolationDomain",
///     annotation="annotation",
///     l2_isolation_domain_name="example-l2domain",
///     location="eastus",
///     mtu=1500,
///     network_fabric_id="/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabrics/example-fabric",
///     resource_group_name="example-rg",
///     tags={
///         "keyID": "keyValue",
///     },
///     vlan_id=501)
///
/// ```
///
/// ```yaml
/// resources:
///   l2IsolationDomain:
///     type: azure-native:managednetworkfabric:L2IsolationDomain
///     properties:
///       annotation: annotation
///       l2IsolationDomainName: example-l2domain
///       location: eastus
///       mtu: 1500
///       networkFabricId: /subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabrics/example-fabric
///       resourceGroupName: example-rg
///       tags:
///         keyID: keyValue
///       vlanId: 501
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
/// $ pulumi import azure-native:managednetworkfabric:L2IsolationDomain example-l2domain /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedNetworkFabric/l2IsolationDomains/{l2IsolationDomainName}
/// ```
class L2IsolationDomain extends pulumi.CustomResource {
  /// Administrative state of the resource.
  late final pulumi.Output<String> administrativeState;
  /// Switch configuration description.
  late final pulumi.Output<String?> annotation;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Configuration state of the resource.
  late final pulumi.Output<String> configurationState;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// Maximum transmission unit. Default value is 1500.
  late final pulumi.Output<int?> mtu;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// ARM Resource ID of the Network Fabric.
  late final pulumi.Output<String> networkFabricId;
  /// Provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Vlan Identifier of the Network Fabric. Example: 501.
  late final pulumi.Output<int> vlanId;

  /// Creates a new [L2IsolationDomain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [L2IsolationDomain]. {@macro pulumi_managednetworkfabric_l2_isolation_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  L2IsolationDomain(
    String name, {
    L2IsolationDomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:managednetworkfabric:L2IsolationDomain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    administrativeState = registerOutput<String>('administrativeState');
    annotation = registerOutput<String?>('annotation');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    configurationState = registerOutput<String>('configurationState');
    location = registerOutput<String>('location');
    mtu = registerOutput<int?>('mtu');
    this.name = registerOutput<String>('name');
    networkFabricId = registerOutput<String>('networkFabricId');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    vlanId = registerOutput<int>('vlanId');
  }

  /// Creates a typed reference to an existing [L2IsolationDomain] resource.
  L2IsolationDomain.reference(String urn)
    : super(
        'azure-native:managednetworkfabric:L2IsolationDomain',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    administrativeState = registerOutput<String>('administrativeState');
    annotation = registerOutput<String?>('annotation');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    configurationState = registerOutput<String>('configurationState');
    location = registerOutput<String>('location');
    mtu = registerOutput<int?>('mtu');
    this.name = registerOutput<String>('name');
    networkFabricId = registerOutput<String>('networkFabricId');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    vlanId = registerOutput<int>('vlanId');
  }
}
