import 'package:pulumi/pulumi.dart';
import 'storage_pool_args2.dart';

/// ## Example Usage
///
/// ### Storage Pool Create Doc
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// // Create a network or use datasource to reference existing network
/// const peeringNetwork = new gcp.compute.Network("peering_network", {name: "test-network"});
/// // Reserve a CIDR for NetApp Volumes to use
/// // When using shared-VPCs, this resource needs to be created in host project
/// const privateIpAlloc = new gcp.compute.GlobalAddress("private_ip_alloc", {
/// name: "test-address",
/// purpose: "VPC_PEERING",
/// addressType: "INTERNAL",
/// prefixLength: 16,
/// network: peeringNetwork.id,
/// });
/// // Create a Private Service Access connection
/// // When using shared-VPCs, this resource needs to be created in host project
/// const _default = new gcp.servicenetworking.Connection("default", {
/// network: peeringNetwork.id,
/// service: "netapp.servicenetworking.goog",
/// reservedPeeringRanges: [privateIpAlloc.name],
/// });
/// // Modify the PSA Connection to allow import/export of custom routes
/// // When using shared-VPCs, this resource needs to be created in host project
/// const routeUpdates = new gcp.compute.NetworkPeeringRoutesConfig("route_updates", {
/// peering: _default.peering,
/// network: peeringNetwork.name,
/// importCustomRoutes: true,
/// exportCustomRoutes: true,
/// });
/// // Create a storage pool
/// // Create this resource in the project which is expected to own the volumes
/// const testPool = new gcp.netapp.StoragePool("test_pool", {
/// name: "test-pool",
/// location: "us-central1",
/// serviceLevel: "PREMIUM",
/// capacityGib: "2048",
/// network: peeringNetwork.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// # Create a network or use datasource to reference existing network
/// peering_network = gcp.compute.Network("peering_network", name="test-network")
/// # Reserve a CIDR for NetApp Volumes to use
/// # When using shared-VPCs, this resource needs to be created in host project
/// private_ip_alloc = gcp.compute.GlobalAddress("private_ip_alloc",
/// name="test-address",
/// purpose="VPC_PEERING",
/// address_type="INTERNAL",
/// prefix_length=16,
/// network=peering_network.id)
/// # Create a Private Service Access connection
/// # When using shared-VPCs, this resource needs to be created in host project
/// default = gcp.servicenetworking.Connection("default",
/// network=peering_network.id,
/// service="netapp.servicenetworking.goog",
/// reserved_peering_ranges=[private_ip_alloc.name])
/// # Modify the PSA Connection to allow import/export of custom routes
/// # When using shared-VPCs, this resource needs to be created in host project
/// route_updates = gcp.compute.NetworkPeeringRoutesConfig("route_updates",
/// peering=default.peering,
/// network=peering_network.name,
/// import_custom_routes=True,
/// export_custom_routes=True)
/// # Create a storage pool
/// # Create this resource in the project which is expected to own the volumes
/// test_pool = gcp.netapp.StoragePool("test_pool",
/// name="test-pool",
/// location="us-central1",
/// service_level="PREMIUM",
/// capacity_gib="2048",
/// network=peering_network.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// // Create a network or use datasource to reference existing network
/// var peeringNetwork = new Gcp.Compute.Network("peering_network", new()
/// {
/// Name = "test-network",
/// });
///
/// // Reserve a CIDR for NetApp Volumes to use
/// // When using shared-VPCs, this resource needs to be created in host project
/// var privateIpAlloc = new Gcp.Compute.GlobalAddress("private_ip_alloc", new()
/// {
/// Name = "test-address",
/// Purpose = "VPC_PEERING",
/// AddressType = "INTERNAL",
/// PrefixLength = 16,
/// Network = peeringNetwork.Id,
/// });
///
/// // Create a Private Service Access connection
/// // When using shared-VPCs, this resource needs to be created in host project
/// var @default = new Gcp.ServiceNetworking.Connection("default", new()
/// {
/// Network = peeringNetwork.Id,
/// Service = "netapp.servicenetworking.goog",
/// ReservedPeeringRanges = new[]
/// {
/// privateIpAlloc.Name,
/// },
/// });
///
/// // Modify the PSA Connection to allow import/export of custom routes
/// // When using shared-VPCs, this resource needs to be created in host project
/// var routeUpdates = new Gcp.Compute.NetworkPeeringRoutesConfig("route_updates", new()
/// {
/// Peering = @default.Peering,
/// Network = peeringNetwork.Name,
/// ImportCustomRoutes = true,
/// ExportCustomRoutes = true,
/// });
///
/// // Create a storage pool
/// // Create this resource in the project which is expected to own the volumes
/// var testPool = new Gcp.Netapp.StoragePool("test_pool", new()
/// {
/// Name = "test-pool",
/// Location = "us-central1",
/// ServiceLevel = "PREMIUM",
/// CapacityGib = "2048",
/// Network = peeringNetwork.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/netapp"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/servicenetworking"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// // Create a network or use datasource to reference existing network
/// peeringNetwork, err := compute.NewNetwork(ctx, "peering_network", &compute.NetworkArgs{
/// Name: pulumi.String("test-network"),
/// })
/// if err != nil {
/// return err
/// }
/// // Reserve a CIDR for NetApp Volumes to use
/// // When using shared-VPCs, this resource needs to be created in host project
/// privateIpAlloc, err := compute.NewGlobalAddress(ctx, "private_ip_alloc", &compute.GlobalAddressArgs{
/// Name:         pulumi.String("test-address"),
/// Purpose:      pulumi.String("VPC_PEERING"),
/// AddressType:  pulumi.String("INTERNAL"),
/// PrefixLength: pulumi.Int(16),
/// Network:      peeringNetwork.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// // Create a Private Service Access connection
/// // When using shared-VPCs, this resource needs to be created in host project
/// _default, err := servicenetworking.NewConnection(ctx, "default", &servicenetworking.ConnectionArgs{
/// Network: peeringNetwork.ID(),
/// Service: pulumi.String("netapp.servicenetworking.goog"),
/// ReservedPeeringRanges: pulumi.StringArray{
/// privateIpAlloc.Name,
/// },
/// })
/// if err != nil {
/// return err
/// }
/// // Modify the PSA Connection to allow import/export of custom routes
/// // When using shared-VPCs, this resource needs to be created in host project
/// _, err = compute.NewNetworkPeeringRoutesConfig(ctx, "route_updates", &compute.NetworkPeeringRoutesConfigArgs{
/// Peering:            _default.Peering,
/// Network:            peeringNetwork.Name,
/// ImportCustomRoutes: pulumi.Bool(true),
/// ExportCustomRoutes: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// // Create a storage pool
/// // Create this resource in the project which is expected to own the volumes
/// _, err = netapp.NewStoragePool(ctx, "test_pool", &netapp.StoragePoolArgs{
/// Name:         pulumi.String("test-pool"),
/// Location:     pulumi.String("us-central1"),
/// ServiceLevel: pulumi.String("PREMIUM"),
/// CapacityGib:  pulumi.String("2048"),
/// Network:      peeringNetwork.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.GlobalAddress;
/// import com.pulumi.gcp.compute.GlobalAddressArgs;
/// import com.pulumi.gcp.servicenetworking.Connection;
/// import com.pulumi.gcp.servicenetworking.ConnectionArgs;
/// import com.pulumi.gcp.compute.NetworkPeeringRoutesConfig;
/// import com.pulumi.gcp.compute.NetworkPeeringRoutesConfigArgs;
/// import com.pulumi.gcp.netapp.StoragePool;
/// import com.pulumi.gcp.netapp.StoragePoolArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// // Create a network or use datasource to reference existing network
/// var peeringNetwork = new Network("peeringNetwork", NetworkArgs.builder()
/// .name("test-network")
/// .build());
///
/// // Reserve a CIDR for NetApp Volumes to use
/// // When using shared-VPCs, this resource needs to be created in host project
/// var privateIpAlloc = new GlobalAddress("privateIpAlloc", GlobalAddressArgs.builder()
/// .name("test-address")
/// .purpose("VPC_PEERING")
/// .addressType("INTERNAL")
/// .prefixLength(16)
/// .network(peeringNetwork.id())
/// .build());
///
/// // Create a Private Service Access connection
/// // When using shared-VPCs, this resource needs to be created in host project
/// var default_ = new Connection("default", ConnectionArgs.builder()
/// .network(peeringNetwork.id())
/// .service("netapp.servicenetworking.goog")
/// .reservedPeeringRanges(privateIpAlloc.name())
/// .build());
///
/// // Modify the PSA Connection to allow import/export of custom routes
/// // When using shared-VPCs, this resource needs to be created in host project
/// var routeUpdates = new NetworkPeeringRoutesConfig("routeUpdates", NetworkPeeringRoutesConfigArgs.builder()
/// .peering(default_.peering())
/// .network(peeringNetwork.name())
/// .importCustomRoutes(true)
/// .exportCustomRoutes(true)
/// .build());
///
/// // Create a storage pool
/// // Create this resource in the project which is expected to own the volumes
/// var testPool = new StoragePool("testPool", StoragePoolArgs.builder()
/// .name("test-pool")
/// .location("us-central1")
/// .serviceLevel("PREMIUM")
/// .capacityGib("2048")
/// .network(peeringNetwork.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// # Create a network or use datasource to reference existing network
/// peeringNetwork:
/// type: gcp:compute:Network
/// name: peering_network
/// properties:
/// name: test-network
/// # Reserve a CIDR for NetApp Volumes to use
/// # When using shared-VPCs, this resource needs to be created in host project
/// privateIpAlloc:
/// type: gcp:compute:GlobalAddress
/// name: private_ip_alloc
/// properties:
/// name: test-address
/// purpose: VPC_PEERING
/// addressType: INTERNAL
/// prefixLength: 16
/// network: ${peeringNetwork.id}
/// # Create a Private Service Access connection
/// # When using shared-VPCs, this resource needs to be created in host project
/// default:
/// type: gcp:servicenetworking:Connection
/// properties:
/// network: ${peeringNetwork.id}
/// service: netapp.servicenetworking.goog
/// reservedPeeringRanges:
/// - ${privateIpAlloc.name}
/// # Modify the PSA Connection to allow import/export of custom routes
/// # When using shared-VPCs, this resource needs to be created in host project
/// routeUpdates:
/// type: gcp:compute:NetworkPeeringRoutesConfig
/// name: route_updates
/// properties:
/// peering: ${default.peering}
/// network: ${peeringNetwork.name}
/// importCustomRoutes: true
/// exportCustomRoutes: true
/// # Create a storage pool
/// # Create this resource in the project which is expected to own the volumes
/// testPool:
/// type: gcp:netapp:StoragePool
/// name: test_pool
/// properties:
/// name: test-pool
/// location: us-central1
/// serviceLevel: PREMIUM
/// capacityGib: '2048'
/// network: ${peeringNetwork.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// StoragePool can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/storagePools/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, StoragePool can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:netapp/storagePool:StoragePool default projects/{{project}}/locations/{{location}}/storagePools/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:netapp/storagePool:StoragePool default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:netapp/storagePool:StoragePool default {{location}}/{{name}}
/// ```
class StoragePool2 extends CustomResource {
  /// Specifies the Active Directory policy to be used. Format: `projects/{{project}}/locations/{{location}}/activeDirectories/{{name}}`.
  /// The policy needs to be in the same location as the storage pool.
  late final Output<String?> activeDirectory;

  /// Optional. True if the storage pool supports Auto Tiering enabled volumes. Default is false.
  /// Auto-tiering can be enabled after storage pool creation but it can't be disabled once enabled.
  late final Output<bool?> allowAutoTiering;

  /// Available throughput of the storage pool (in MiB/s).
  late final Output<double> availableThroughputMibps;

  /// Capacity of the storage pool (in GiB).
  late final Output<String> capacityGib;

  /// Total cold tier data rounded down to the nearest GiB used by the storage pool.
  late final Output<String> coldTierSizeUsedGib;

  /// Optional. True if using Independent Scaling of capacity and performance (Hyperdisk). Default is false.
  late final Output<bool> customPerformanceEnabled;

  /// An optional description of this resource.
  late final Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Flag indicating that the hot-tier threshold will be auto-increased by 10% of the hot-tier when it hits 100%. Default is true.
  /// The increment will kick in only if the new size after increment is still less than or equal to storage pool size.
  late final Output<bool?> enableHotTierAutoResize;

  /// Reports if volumes in the pool are encrypted using a Google-managed encryption key or CMEK.
  late final Output<String> encryptionType;

  /// Total hot tier capacity for the Storage Pool. It is applicable only to Flex service level.
  /// It should be less than the minimum storage pool size and cannot be more than the current storage pool size. It cannot be decreased once set.
  late final Output<String?> hotTierSizeGib;

  /// Total hot tier data rounded down to the nearest GiB used by the storage pool.
  late final Output<String> hotTierSizeUsedGib;

  /// Specifies the CMEK policy to be used for volume encryption. Format: `projects/{{project}}/locations/{{location}}/kmsConfigs/{{name}}`.
  /// The policy needs to be in the same location as the storage pool.
  late final Output<String?> kmsConfig;

  /// Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// When enabled, the volumes uses Active Directory as LDAP name service for UID/GID lookups. Required to enable extended group support for NFSv3,
  /// using security identifiers for NFSv4.1 or principal names for kerberized NFSv4.1.
  late final Output<bool?> ldapEnabled;

  /// Name of the location. For zonal Flex pools specify a zone name, in all other cases a region name.
  late final Output<String> location;

  /// The resource name of the storage pool. Needs to be unique per location/region.
  late final Output<String> name;

  /// VPC network name with format: `projects/{{project}}/global/networks/{{network}}`
  late final Output<String> network;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// QoS (Quality of Service) type of the storage pool.
  /// Possible values are: AUTO, MANUAL.
  /// Possible values are: `QOS_TYPE_UNSPECIFIED`, `AUTO`, `MANUAL`.
  late final Output<String> qosType;

  /// Specifies the replica zone for regional Flex pools. <span pulumi-lang-nodejs="`zone`" pulumi-lang-dotnet="`Zone`" pulumi-lang-go="`zone`" pulumi-lang-python="`zone`" pulumi-lang-yaml="`zone`" pulumi-lang-java="`zone`">`zone`</span> and <span pulumi-lang-nodejs="`replicaZone`" pulumi-lang-dotnet="`ReplicaZone`" pulumi-lang-go="`replicaZone`" pulumi-lang-python="`replica_zone`" pulumi-lang-yaml="`replicaZone`" pulumi-lang-java="`replicaZone`">`replica_zone`</span> values can be swapped to initiate a
  /// [zone switch](https://cloud.google.com/netapp/volumes/docs/configure-and-use/storage-pools/edit-or-delete-storage-pool#switch_active_and_replica_zones).
  late final Output<String?> replicaZone;

  /// Service level of the storage pool.
  /// Possible values are: `PREMIUM`, `EXTREME`, `STANDARD`, `FLEX`.
  late final Output<String> serviceLevel;

  /// Optional. Custom Performance Total IOPS of the pool If not provided, it will be calculated based on the totalThroughputMibps
  late final Output<String> totalIops;

  /// Optional. Custom Performance Total Throughput of the pool (in MiB/s).
  late final Output<String> totalThroughputMibps;

  /// Type of the storage pool.
  /// This field is used to control whether the pool supports FILE based volumes only or UNIFIED (both FILE and BLOCK) volumes.
  /// If not specified during creation, it defaults to FILE.
  /// Possible values are: `STORAGE_POOL_TYPE_UNSPECIFIED`, `FILE`, `UNIFIED`.
  late final Output<String> type;

  /// Size allocated to volumes in the storage pool (in GiB).
  late final Output<String> volumeCapacityGib;

  /// Number of volume in the storage pool.
  late final Output<int> volumeCount;

  /// Specifies the active zone for regional Flex pools. <span pulumi-lang-nodejs="`zone`" pulumi-lang-dotnet="`Zone`" pulumi-lang-go="`zone`" pulumi-lang-python="`zone`" pulumi-lang-yaml="`zone`" pulumi-lang-java="`zone`">`zone`</span> and <span pulumi-lang-nodejs="`replicaZone`" pulumi-lang-dotnet="`ReplicaZone`" pulumi-lang-go="`replicaZone`" pulumi-lang-python="`replica_zone`" pulumi-lang-yaml="`replicaZone`" pulumi-lang-java="`replicaZone`">`replica_zone`</span> values can be swapped to initiate a
  /// [zone switch](https://cloud.google.com/netapp/volumes/docs/configure-and-use/storage-pools/edit-or-delete-storage-pool#switch_active_and_replica_zones).
  /// If you want to create a zonal Flex pool, specify a zone name for <span pulumi-lang-nodejs="`location`" pulumi-lang-dotnet="`Location`" pulumi-lang-go="`location`" pulumi-lang-python="`location`" pulumi-lang-yaml="`location`" pulumi-lang-java="`location`">`location`</span> and omit <span pulumi-lang-nodejs="`zone`" pulumi-lang-dotnet="`Zone`" pulumi-lang-go="`zone`" pulumi-lang-python="`zone`" pulumi-lang-yaml="`zone`" pulumi-lang-java="`zone`">`zone`</span>.
  late final Output<String> zone;

  StoragePool2(
    String name, {
    StoragePoolArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:netapp/storagePool:StoragePool',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.activeDirectory = Output.createUnknown<String?>();
    this.allowAutoTiering = Output.createUnknown<bool?>();
    this.availableThroughputMibps = Output.createUnknown<double>();
    this.capacityGib = Output.createUnknown<String>();
    this.coldTierSizeUsedGib = Output.createUnknown<String>();
    this.customPerformanceEnabled = Output.createUnknown<bool>();
    this.description = Output.createUnknown<String?>();
    this.effectiveLabels = Output.createUnknown<Map<String, String>>();
    this.enableHotTierAutoResize = Output.createUnknown<bool?>();
    this.encryptionType = Output.createUnknown<String>();
    this.hotTierSizeGib = Output.createUnknown<String?>();
    this.hotTierSizeUsedGib = Output.createUnknown<String>();
    this.kmsConfig = Output.createUnknown<String?>();
    this.labels = Output.createUnknown<Map<String, String>?>();
    this.ldapEnabled = Output.createUnknown<bool?>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.network = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.pulumiLabels = Output.createUnknown<Map<String, String>>();
    this.qosType = Output.createUnknown<String>();
    this.replicaZone = Output.createUnknown<String?>();
    this.serviceLevel = Output.createUnknown<String>();
    this.totalIops = Output.createUnknown<String>();
    this.totalThroughputMibps = Output.createUnknown<String>();
    this.type = Output.createUnknown<String>();
    this.volumeCapacityGib = Output.createUnknown<String>();
    this.volumeCount = Output.createUnknown<int>();
    this.zone = Output.createUnknown<String>();
  }
}
