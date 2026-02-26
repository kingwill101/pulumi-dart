import 'package:pulumi/pulumi.dart';
import '../subnet_dhcp_address_range/subnet_dhcp_address_range.dart';
import 'subnet_args2.dart';

/// Subnet in a private cloud. A Private Cloud contains two types of subnets: <span pulumi-lang-nodejs="`management`" pulumi-lang-dotnet="`Management`" pulumi-lang-go="`management`" pulumi-lang-python="`management`" pulumi-lang-yaml="`management`" pulumi-lang-java="`management`">`management`</span> subnets (such as vMotion) that
/// are read-only,and `userDefined`, which can also be updated. This resource should be used to read and update `userDefined`
/// subnets. To read <span pulumi-lang-nodejs="`management`" pulumi-lang-dotnet="`Management`" pulumi-lang-go="`management`" pulumi-lang-python="`management`" pulumi-lang-yaml="`management`" pulumi-lang-java="`management`">`management`</span> subnets, please utilize the subnet data source.
///
///
/// To get more information about Subnet, see:
///
/// * [API documentation](https://cloud.google.com/vmware-engine/docs/reference/rest/v1/projects.locations.privateClouds.subnets)
///
/// ## Example Usage
///
/// ### Vmware Engine Subnet User Defined
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const subnet_nw = new gcp.vmwareengine.Network("subnet-nw", {
/// name: "pc-nw",
/// location: "global",
/// type: "STANDARD",
/// description: "PC network description.",
/// });
/// const subnet_pc = new gcp.vmwareengine.PrivateCloud("subnet-pc", {
/// location: "us-west1-a",
/// name: "sample-pc",
/// description: "Sample test PC.",
/// networkConfig: {
/// managementCidr: "192.168.50.0/24",
/// vmwareEngineNetwork: subnet_nw.id,
/// },
/// managementCluster: {
/// clusterId: "sample-mgmt-cluster",
/// nodeTypeConfigs: [{
/// nodeTypeId: "standard-72",
/// nodeCount: 3,
/// }],
/// },
/// });
/// const vmw_engine_subnet = new gcp.vmwareengine.Subnet("vmw-engine-subnet", {
/// name: "service-1",
/// parent: subnet_pc.id,
/// ipCidrRange: "192.168.100.0/26",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// subnet_nw = gcp.vmwareengine.Network("subnet-nw",
/// name="pc-nw",
/// location="global",
/// type="STANDARD",
/// description="PC network description.")
/// subnet_pc = gcp.vmwareengine.PrivateCloud("subnet-pc",
/// location="us-west1-a",
/// name="sample-pc",
/// description="Sample test PC.",
/// network_config={
/// "management_cidr": "192.168.50.0/24",
/// "vmware_engine_network": subnet_nw.id,
/// },
/// management_cluster={
/// "cluster_id": "sample-mgmt-cluster",
/// "node_type_configs": [{
/// "node_type_id": "standard-72",
/// "node_count": 3,
/// }],
/// })
/// vmw_engine_subnet = gcp.vmwareengine.Subnet("vmw-engine-subnet",
/// name="service-1",
/// parent=subnet_pc.id,
/// ip_cidr_range="192.168.100.0/26")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var subnet_nw = new Gcp.VMwareEngine.Network("subnet-nw", new()
/// {
/// Name = "pc-nw",
/// Location = "global",
/// Type = "STANDARD",
/// Description = "PC network description.",
/// });
///
/// var subnet_pc = new Gcp.VMwareEngine.PrivateCloud("subnet-pc", new()
/// {
/// Location = "us-west1-a",
/// Name = "sample-pc",
/// Description = "Sample test PC.",
/// NetworkConfig = new Gcp.VMwareEngine.Inputs.PrivateCloudNetworkConfigArgs
/// {
/// ManagementCidr = "192.168.50.0/24",
/// VmwareEngineNetwork = subnet_nw.Id,
/// },
/// ManagementCluster = new Gcp.VMwareEngine.Inputs.PrivateCloudManagementClusterArgs
/// {
/// ClusterId = "sample-mgmt-cluster",
/// NodeTypeConfigs = new[]
/// {
/// new Gcp.VMwareEngine.Inputs.PrivateCloudManagementClusterNodeTypeConfigArgs
/// {
/// NodeTypeId = "standard-72",
/// NodeCount = 3,
/// },
/// },
/// },
/// });
///
/// var vmw_engine_subnet = new Gcp.VMwareEngine.Subnet("vmw-engine-subnet", new()
/// {
/// Name = "service-1",
/// Parent = subnet_pc.Id,
/// IpCidrRange = "192.168.100.0/26",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vmwareengine"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// subnet_nw, err := vmwareengine.NewNetwork(ctx, "subnet-nw", &vmwareengine.NetworkArgs{
/// Name:        pulumi.String("pc-nw"),
/// Location:    pulumi.String("global"),
/// Type:        pulumi.String("STANDARD"),
/// Description: pulumi.String("PC network description."),
/// })
/// if err != nil {
/// return err
/// }
/// subnet_pc, err := vmwareengine.NewPrivateCloud(ctx, "subnet-pc", &vmwareengine.PrivateCloudArgs{
/// Location:    pulumi.String("us-west1-a"),
/// Name:        pulumi.String("sample-pc"),
/// Description: pulumi.String("Sample test PC."),
/// NetworkConfig: &vmwareengine.PrivateCloudNetworkConfigArgs{
/// ManagementCidr:      pulumi.String("192.168.50.0/24"),
/// VmwareEngineNetwork: subnet_nw.ID(),
/// },
/// ManagementCluster: &vmwareengine.PrivateCloudManagementClusterArgs{
/// ClusterId: pulumi.String("sample-mgmt-cluster"),
/// NodeTypeConfigs: vmwareengine.PrivateCloudManagementClusterNodeTypeConfigArray{
/// &vmwareengine.PrivateCloudManagementClusterNodeTypeConfigArgs{
/// NodeTypeId: pulumi.String("standard-72"),
/// NodeCount:  pulumi.Int(3),
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = vmwareengine.NewSubnet(ctx, "vmw-engine-subnet", &vmwareengine.SubnetArgs{
/// Name:        pulumi.String("service-1"),
/// Parent:      subnet_pc.ID(),
/// IpCidrRange: pulumi.String("192.168.100.0/26"),
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
/// import com.pulumi.gcp.vmwareengine.Network;
/// import com.pulumi.gcp.vmwareengine.NetworkArgs;
/// import com.pulumi.gcp.vmwareengine.PrivateCloud;
/// import com.pulumi.gcp.vmwareengine.PrivateCloudArgs;
/// import com.pulumi.gcp.vmwareengine.inputs.PrivateCloudNetworkConfigArgs;
/// import com.pulumi.gcp.vmwareengine.inputs.PrivateCloudManagementClusterArgs;
/// import com.pulumi.gcp.vmwareengine.Subnet;
/// import com.pulumi.gcp.vmwareengine.SubnetArgs;
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
/// var subnet_nw = new Network("subnet-nw", NetworkArgs.builder()
/// .name("pc-nw")
/// .location("global")
/// .type("STANDARD")
/// .description("PC network description.")
/// .build());
///
/// var subnet_pc = new PrivateCloud("subnet-pc", PrivateCloudArgs.builder()
/// .location("us-west1-a")
/// .name("sample-pc")
/// .description("Sample test PC.")
/// .networkConfig(PrivateCloudNetworkConfigArgs.builder()
/// .managementCidr("192.168.50.0/24")
/// .vmwareEngineNetwork(subnet_nw.id())
/// .build())
/// .managementCluster(PrivateCloudManagementClusterArgs.builder()
/// .clusterId("sample-mgmt-cluster")
/// .nodeTypeConfigs(PrivateCloudManagementClusterNodeTypeConfigArgs.builder()
/// .nodeTypeId("standard-72")
/// .nodeCount(3)
/// .build())
/// .build())
/// .build());
///
/// var vmw_engine_subnet = new Subnet("vmw-engine-subnet", SubnetArgs.builder()
/// .name("service-1")
/// .parent(subnet_pc.id())
/// .ipCidrRange("192.168.100.0/26")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// subnet-nw:
/// type: gcp:vmwareengine:Network
/// properties:
/// name: pc-nw
/// location: global
/// type: STANDARD
/// description: PC network description.
/// subnet-pc:
/// type: gcp:vmwareengine:PrivateCloud
/// properties:
/// location: us-west1-a
/// name: sample-pc
/// description: Sample test PC.
/// networkConfig:
/// managementCidr: 192.168.50.0/24
/// vmwareEngineNetwork: ${["subnet-nw"].id}
/// managementCluster:
/// clusterId: sample-mgmt-cluster
/// nodeTypeConfigs:
/// - nodeTypeId: standard-72
/// nodeCount: 3
/// vmw-engine-subnet:
/// type: gcp:vmwareengine:Subnet
/// properties:
/// name: service-1
/// parent: ${["subnet-pc"].id}
/// ipCidrRange: 192.168.100.0/26
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Subnet can be imported using any of these accepted formats:
///
/// * `{{parent}}/subnets/{{name}}`
///
/// When using the `pulumi import` command, Subnet can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vmwareengine/subnet:Subnet default {{parent}}/subnets/{{name}}
/// ```
class Subnet2 extends CustomResource {
  /// Creation time of this resource.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and
  /// up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final Output<String> createTime;

  /// DHCP address ranges.
  /// Structure is documented below.
  late final Output<List<SubnetDhcpAddressRange>> dhcpAddressRanges;

  /// The canonical identifier of the logical router that this subnet is attached to.
  late final Output<String> gatewayId;

  /// The IP address of the gateway of this subnet. Must fall within the IP prefix defined above.
  late final Output<String> gatewayIp;

  /// The IP address range of the subnet in CIDR format.
  late final Output<String> ipCidrRange;

  /// The ID of the subnet. For userDefined subnets, this name should be in the format of "service-n",
  /// where n ranges from 1 to 5.
  late final Output<String> name;

  /// The resource name of the private cloud to create a new subnet in.
  /// Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names.
  /// For example: projects/my-project/locations/us-west1-a/privateClouds/my-cloud
  late final Output<String> parent;

  /// Whether the NSX-T configuration in the backend follows the standard configuration supported by Google Cloud.
  /// If false, the subnet cannot be modified through Google Cloud, only through NSX-T directly.
  late final Output<bool> standardConfig;

  /// State of the subnet.
  late final Output<String> state;

  /// The type of the subnet.
  late final Output<String> type;

  /// System-generated unique identifier for the resource.
  late final Output<String> uid;

  /// Last updated time of this resource.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine
  /// fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final Output<String> updateTime;

  /// VLAN ID of the VLAN on which the subnet is configured.
  late final Output<int> vlanId;

  Subnet2(
    String name, {
    SubnetArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:vmwareengine/subnet:Subnet',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.dhcpAddressRanges =
        registerOutput<List<SubnetDhcpAddressRange>>('dhcpAddressRanges');
    this.gatewayId = registerOutput<String>('gatewayId');
    this.gatewayIp = registerOutput<String>('gatewayIp');
    this.ipCidrRange = registerOutput<String>('ipCidrRange');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String>('parent');
    this.standardConfig = registerOutput<bool>('standardConfig');
    this.state = registerOutput<String>('state');
    this.type = registerOutput<String>('type');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
    this.vlanId = registerOutput<int>('vlanId');
  }
}
