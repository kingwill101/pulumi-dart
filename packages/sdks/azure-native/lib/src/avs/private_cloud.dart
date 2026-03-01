import 'package:pulumi/pulumi.dart' as pulumi;
import 'availability_properties_response.dart';
import 'circuit_response.dart';
import 'encryption_response.dart';
import 'endpoints_response.dart';
import 'identity_source_response.dart';
import 'management_cluster_response.dart';
import 'private_cloud_args.dart';
import 'sku_response.dart';
import 'system_assigned_service_identity_response.dart';
import 'system_data_response.dart';

/// A private cloud resource
///
/// Uses Azure REST API version 2023-09-01. In version 2.x of the Azure Native provider, it used API version 2022-05-01.
///
/// Other available API versions: 2022-05-01, 2023-03-01, 2024-09-01, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native avs [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PrivateClouds_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateCloud = new AzureNative.AVS.PrivateCloud("privateCloud", new()
///     {
///         Identity = new AzureNative.AVS.Inputs.SystemAssignedServiceIdentityArgs
///         {
///             Type = AzureNative.AVS.SystemAssignedServiceIdentityType.SystemAssigned,
///         },
///         Location = "eastus2",
///         ManagementCluster = new AzureNative.AVS.Inputs.ManagementClusterArgs
///         {
///             ClusterSize = 4,
///         },
///         NetworkBlock = "192.168.48.0/22",
///         PrivateCloudName = "cloud1",
///         ResourceGroupName = "group1",
///         Sku = new AzureNative.AVS.Inputs.SkuArgs
///         {
///             Name = "AV36",
///         },
///         Tags = null,
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
/// 	avs "github.com/pulumi/pulumi-azure-native-sdk/avs/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := avs.NewPrivateCloud(ctx, "privateCloud", &avs.PrivateCloudArgs{
/// 			Identity: &avs.SystemAssignedServiceIdentityArgs{
/// 				Type: pulumi.String(avs.SystemAssignedServiceIdentityTypeSystemAssigned),
/// 			},
/// 			Location: pulumi.String("eastus2"),
/// 			ManagementCluster: &avs.ManagementClusterArgs{
/// 				ClusterSize: pulumi.Int(4),
/// 			},
/// 			NetworkBlock:      pulumi.String("192.168.48.0/22"),
/// 			PrivateCloudName:  pulumi.String("cloud1"),
/// 			ResourceGroupName: pulumi.String("group1"),
/// 			Sku: &avs.SkuArgs{
/// 				Name: pulumi.String("AV36"),
/// 			},
/// 			Tags: pulumi.StringMap{},
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
/// import com.pulumi.azurenative.avs.PrivateCloud;
/// import com.pulumi.azurenative.avs.PrivateCloudArgs;
/// import com.pulumi.azurenative.avs.inputs.SystemAssignedServiceIdentityArgs;
/// import com.pulumi.azurenative.avs.inputs.ManagementClusterArgs;
/// import com.pulumi.azurenative.avs.inputs.SkuArgs;
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
///         var privateCloud = new PrivateCloud("privateCloud", PrivateCloudArgs.builder()
///             .identity(SystemAssignedServiceIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .location("eastus2")
///             .managementCluster(ManagementClusterArgs.builder()
///                 .clusterSize(4)
///                 .build())
///             .networkBlock("192.168.48.0/22")
///             .privateCloudName("cloud1")
///             .resourceGroupName("group1")
///             .sku(SkuArgs.builder()
///                 .name("AV36")
///                 .build())
///             .tags(Map.ofEntries(
///             ))
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
/// const privateCloud = new azure_native.avs.PrivateCloud("privateCloud", {
///     identity: {
///         type: azure_native.avs.SystemAssignedServiceIdentityType.SystemAssigned,
///     },
///     location: "eastus2",
///     managementCluster: {
///         clusterSize: 4,
///     },
///     networkBlock: "192.168.48.0/22",
///     privateCloudName: "cloud1",
///     resourceGroupName: "group1",
///     sku: {
///         name: "AV36",
///     },
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_cloud = azure_native.avs.PrivateCloud("privateCloud",
///     identity={
///         "type": azure_native.avs.SystemAssignedServiceIdentityType.SYSTEM_ASSIGNED,
///     },
///     location="eastus2",
///     management_cluster={
///         "cluster_size": 4,
///     },
///     network_block="192.168.48.0/22",
///     private_cloud_name="cloud1",
///     resource_group_name="group1",
///     sku={
///         "name": "AV36",
///     },
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   privateCloud:
///     type: azure-native:avs:PrivateCloud
///     properties:
///       identity:
///         type: SystemAssigned
///       location: eastus2
///       managementCluster:
///         clusterSize: 4
///       networkBlock: 192.168.48.0/22
///       privateCloudName: cloud1
///       resourceGroupName: group1
///       sku:
///         name: AV36
///       tags: {}
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### PrivateClouds_CreateOrUpdate_Stretched
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateCloud = new AzureNative.AVS.PrivateCloud("privateCloud", new()
///     {
///         Availability = new AzureNative.AVS.Inputs.AvailabilityPropertiesArgs
///         {
///             SecondaryZone = 2,
///             Strategy = AzureNative.AVS.AvailabilityStrategy.DualZone,
///             Zone = 1,
///         },
///         Location = "eastus2",
///         ManagementCluster = new AzureNative.AVS.Inputs.ManagementClusterArgs
///         {
///             ClusterSize = 4,
///         },
///         NetworkBlock = "192.168.48.0/22",
///         PrivateCloudName = "cloud1",
///         ResourceGroupName = "group1",
///         Sku = new AzureNative.AVS.Inputs.SkuArgs
///         {
///             Name = "AV36",
///         },
///         Tags = null,
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
/// 	avs "github.com/pulumi/pulumi-azure-native-sdk/avs/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := avs.NewPrivateCloud(ctx, "privateCloud", &avs.PrivateCloudArgs{
/// 			Availability: &avs.AvailabilityPropertiesArgs{
/// 				SecondaryZone: pulumi.Int(2),
/// 				Strategy:      pulumi.String(avs.AvailabilityStrategyDualZone),
/// 				Zone:          pulumi.Int(1),
/// 			},
/// 			Location: pulumi.String("eastus2"),
/// 			ManagementCluster: &avs.ManagementClusterArgs{
/// 				ClusterSize: pulumi.Int(4),
/// 			},
/// 			NetworkBlock:      pulumi.String("192.168.48.0/22"),
/// 			PrivateCloudName:  pulumi.String("cloud1"),
/// 			ResourceGroupName: pulumi.String("group1"),
/// 			Sku: &avs.SkuArgs{
/// 				Name: pulumi.String("AV36"),
/// 			},
/// 			Tags: pulumi.StringMap{},
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
/// import com.pulumi.azurenative.avs.PrivateCloud;
/// import com.pulumi.azurenative.avs.PrivateCloudArgs;
/// import com.pulumi.azurenative.avs.inputs.AvailabilityPropertiesArgs;
/// import com.pulumi.azurenative.avs.inputs.ManagementClusterArgs;
/// import com.pulumi.azurenative.avs.inputs.SkuArgs;
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
///         var privateCloud = new PrivateCloud("privateCloud", PrivateCloudArgs.builder()
///             .availability(AvailabilityPropertiesArgs.builder()
///                 .secondaryZone(2)
///                 .strategy("DualZone")
///                 .zone(1)
///                 .build())
///             .location("eastus2")
///             .managementCluster(ManagementClusterArgs.builder()
///                 .clusterSize(4)
///                 .build())
///             .networkBlock("192.168.48.0/22")
///             .privateCloudName("cloud1")
///             .resourceGroupName("group1")
///             .sku(SkuArgs.builder()
///                 .name("AV36")
///                 .build())
///             .tags(Map.ofEntries(
///             ))
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
/// const privateCloud = new azure_native.avs.PrivateCloud("privateCloud", {
///     availability: {
///         secondaryZone: 2,
///         strategy: azure_native.avs.AvailabilityStrategy.DualZone,
///         zone: 1,
///     },
///     location: "eastus2",
///     managementCluster: {
///         clusterSize: 4,
///     },
///     networkBlock: "192.168.48.0/22",
///     privateCloudName: "cloud1",
///     resourceGroupName: "group1",
///     sku: {
///         name: "AV36",
///     },
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_cloud = azure_native.avs.PrivateCloud("privateCloud",
///     availability={
///         "secondary_zone": 2,
///         "strategy": azure_native.avs.AvailabilityStrategy.DUAL_ZONE,
///         "zone": 1,
///     },
///     location="eastus2",
///     management_cluster={
///         "cluster_size": 4,
///     },
///     network_block="192.168.48.0/22",
///     private_cloud_name="cloud1",
///     resource_group_name="group1",
///     sku={
///         "name": "AV36",
///     },
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   privateCloud:
///     type: azure-native:avs:PrivateCloud
///     properties:
///       availability:
///         secondaryZone: 2
///         strategy: DualZone
///         zone: 1
///       location: eastus2
///       managementCluster:
///         clusterSize: 4
///       networkBlock: 192.168.48.0/22
///       privateCloudName: cloud1
///       resourceGroupName: group1
///       sku:
///         name: AV36
///       tags: {}
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
/// $ pulumi import azure-native:avs:PrivateCloud cloud1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AVS/privateClouds/{privateCloudName}
/// ```
class PrivateCloud extends pulumi.CustomResource {
  /// Properties describing how the cloud is distributed across availability zones
  late final pulumi.Output<AvailabilityPropertiesResponse?> availability;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// An ExpressRoute Circuit
  late final pulumi.Output<CircuitResponse?> circuit;
  /// The type of DNS zone to use.
  late final pulumi.Output<String?> dnsZoneType;
  /// Customer managed key encryption, can be enabled or disabled
  late final pulumi.Output<EncryptionResponse?> encryption;
  /// The endpoints
  late final pulumi.Output<EndpointsResponse> endpoints;
  /// Array of additional networks noncontiguous with networkBlock. Networks must be
  /// unique and non-overlapping across VNet in your subscription, on-premise, and
  /// this privateCloud networkBlock attribute. Make sure the CIDR format conforms to
  /// (A.B.C.D/X).
  late final pulumi.Output<List<String>?> extendedNetworkBlocks;
  /// Array of cloud link IDs from other clouds that connect to this one
  late final pulumi.Output<List<String>> externalCloudLinks;
  /// The managed service identities assigned to this resource.
  late final pulumi.Output<SystemAssignedServiceIdentityResponse?> identity;
  /// vCenter Single Sign On Identity Sources
  late final pulumi.Output<List<IdentitySourceResponse>?> identitySources;
  /// Connectivity to internet is enabled or disabled
  late final pulumi.Output<String?> internet;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The default cluster used for management
  late final pulumi.Output<ManagementClusterResponse> managementCluster;
  /// Network used to access vCenter Server and NSX-T Manager
  late final pulumi.Output<String> managementNetwork;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The block of addresses should be unique across VNet in your subscription as
  /// well as on-premise. Make sure the CIDR format is conformed to (A.B.C.D/X) where
  /// A,B,C,D are between 0 and 255, and X is between 0 and 22
  late final pulumi.Output<String> networkBlock;
  /// Flag to indicate whether the private cloud has the quota for provisioned NSX
  /// Public IP count raised from 64 to 1024
  late final pulumi.Output<String> nsxPublicIpQuotaRaised;
  /// Thumbprint of the NSX-T Manager SSL certificate
  late final pulumi.Output<String> nsxtCertificateThumbprint;
  /// Optionally, set the NSX-T Manager password when the private cloud is created
  late final pulumi.Output<String?> nsxtPassword;
  /// Used for virtual machine cold migration, cloning, and snapshot migration
  late final pulumi.Output<String> provisioningNetwork;
  /// The provisioning state
  late final pulumi.Output<String> provisioningState;
  /// A secondary expressRoute circuit from a separate AZ. Only present in a
  /// stretched private cloud
  late final pulumi.Output<CircuitResponse?> secondaryCircuit;
  /// The SKU (Stock Keeping Unit) assigned to this resource.
  late final pulumi.Output<SkuResponse> sku;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Thumbprint of the vCenter Server SSL certificate
  late final pulumi.Output<String> vcenterCertificateThumbprint;
  /// Optionally, set the vCenter admin password when the private cloud is created
  late final pulumi.Output<String?> vcenterPassword;
  /// Azure resource ID of the virtual network
  late final pulumi.Output<String?> virtualNetworkId;
  /// Used for live migration of virtual machines
  late final pulumi.Output<String> vmotionNetwork;

  /// Creates a new [PrivateCloud].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateCloud]. {@macro pulumi_avs_private_cloud_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateCloud(
    String name, {
    PrivateCloudArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:avs:PrivateCloud',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.availability = registerOutput<AvailabilityPropertiesResponse?>('availability');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.circuit = registerOutput<CircuitResponse?>('circuit');
    this.dnsZoneType = registerOutput<String?>('dnsZoneType');
    this.encryption = registerOutput<EncryptionResponse?>('encryption');
    this.endpoints = registerOutput<EndpointsResponse>('endpoints');
    this.extendedNetworkBlocks = registerOutput<List<String>?>('extendedNetworkBlocks');
    this.externalCloudLinks = registerOutput<List<String>>('externalCloudLinks');
    this.identity = registerOutput<SystemAssignedServiceIdentityResponse?>('identity');
    this.identitySources = registerOutput<List<IdentitySourceResponse>?>('identitySources');
    this.internet = registerOutput<String?>('internet');
    this.location = registerOutput<String>('location');
    this.managementCluster = registerOutput<ManagementClusterResponse>('managementCluster');
    this.managementNetwork = registerOutput<String>('managementNetwork');
    this.name = registerOutput<String>('name');
    this.networkBlock = registerOutput<String>('networkBlock');
    this.nsxPublicIpQuotaRaised = registerOutput<String>('nsxPublicIpQuotaRaised');
    this.nsxtCertificateThumbprint = registerOutput<String>('nsxtCertificateThumbprint');
    this.nsxtPassword = registerOutput<String?>('nsxtPassword');
    this.provisioningNetwork = registerOutput<String>('provisioningNetwork');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.secondaryCircuit = registerOutput<CircuitResponse?>('secondaryCircuit');
    this.sku = registerOutput<SkuResponse>('sku');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
    this.vcenterCertificateThumbprint = registerOutput<String>('vcenterCertificateThumbprint');
    this.vcenterPassword = registerOutput<String?>('vcenterPassword');
    this.virtualNetworkId = registerOutput<String?>('virtualNetworkId');
    this.vmotionNetwork = registerOutput<String>('vmotionNetwork');
  }
}
