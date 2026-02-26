import 'package:pulumi/pulumi.dart';
import '../vmware_cluster_anti_affinity_groups/vmware_cluster_anti_affinity_groups.dart';
import '../vmware_cluster_authorization/vmware_cluster_authorization.dart';
import '../vmware_cluster_auto_repair_config/vmware_cluster_auto_repair_config.dart';
import '../vmware_cluster_control_plane_node/vmware_cluster_control_plane_node.dart';
import '../vmware_cluster_dataplane_v2/vmware_cluster_dataplane_v2.dart';
import '../vmware_cluster_fleet/vmware_cluster_fleet.dart';
import '../vmware_cluster_load_balancer/vmware_cluster_load_balancer.dart';
import '../vmware_cluster_network_config/vmware_cluster_network_config.dart';
import '../vmware_cluster_status/vmware_cluster_status.dart';
import '../vmware_cluster_storage/vmware_cluster_storage.dart';
import '../vmware_cluster_upgrade_policy/vmware_cluster_upgrade_policy.dart';
import '../vmware_cluster_validation_check/vmware_cluster_validation_check.dart';
import '../vmware_cluster_vcenter/vmware_cluster_vcenter.dart';
import 'vmware_cluster_args.dart';

/// A Google VMware User Cluster.
///
///
/// To get more information about VmwareCluster, see:
///
/// * [API documentation](https://cloud.google.com/kubernetes-engine/distributed-cloud/reference/on-prem-api/rest/v1/projects.locations.vmwareClusters)
///
/// ## Example Usage
///
/// ### Gkeonprem Vmware Cluster Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const cluster_basic = new gcp.gkeonprem.VMwareCluster("cluster-basic", {
/// name: "cluster-basic",
/// location: "us-west1",
/// adminClusterMembership: "projects/870316890899/locations/global/memberships/gkeonprem-terraform-test",
/// description: "test cluster",
/// onPremVersion: "1.13.1-gke.35",
/// annotations: {},
/// networkConfig: {
/// serviceAddressCidrBlocks: ["10.96.0.0/12"],
/// podAddressCidrBlocks: ["192.168.0.0/16"],
/// dhcpIpConfig: {
/// enabled: true,
/// },
/// },
/// controlPlaneNode: {
/// cpus: 4,
/// memory: 8192,
/// replicas: 1,
/// },
/// loadBalancer: {
/// vipConfig: {
/// controlPlaneVip: "10.251.133.5",
/// ingressVip: "10.251.135.19",
/// },
/// metalLbConfig: {
/// addressPools: [
/// {
/// pool: "ingress-ip",
/// manualAssign: true,
/// addresses: ["10.251.135.19"],
/// avoidBuggyIps: true,
/// },
/// {
/// pool: "lb-test-ip",
/// manualAssign: true,
/// addresses: ["10.251.135.19"],
/// avoidBuggyIps: true,
/// },
/// ],
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// cluster_basic = gcp.gkeonprem.VMwareCluster("cluster-basic",
/// name="cluster-basic",
/// location="us-west1",
/// admin_cluster_membership="projects/870316890899/locations/global/memberships/gkeonprem-terraform-test",
/// description="test cluster",
/// on_prem_version="1.13.1-gke.35",
/// annotations={},
/// network_config={
/// "service_address_cidr_blocks": ["10.96.0.0/12"],
/// "pod_address_cidr_blocks": ["192.168.0.0/16"],
/// "dhcp_ip_config": {
/// "enabled": True,
/// },
/// },
/// control_plane_node={
/// "cpus": 4,
/// "memory": 8192,
/// "replicas": 1,
/// },
/// load_balancer={
/// "vip_config": {
/// "control_plane_vip": "10.251.133.5",
/// "ingress_vip": "10.251.135.19",
/// },
/// "metal_lb_config": {
/// "address_pools": [
/// {
/// "pool": "ingress-ip",
/// "manual_assign": True,
/// "addresses": ["10.251.135.19"],
/// "avoid_buggy_ips": True,
/// },
/// {
/// "pool": "lb-test-ip",
/// "manual_assign": True,
/// "addresses": ["10.251.135.19"],
/// "avoid_buggy_ips": True,
/// },
/// ],
/// },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var cluster_basic = new Gcp.GkeOnPrem.VMwareCluster("cluster-basic", new()
/// {
/// Name = "cluster-basic",
/// Location = "us-west1",
/// AdminClusterMembership = "projects/870316890899/locations/global/memberships/gkeonprem-terraform-test",
/// Description = "test cluster",
/// OnPremVersion = "1.13.1-gke.35",
/// Annotations = null,
/// NetworkConfig = new Gcp.GkeOnPrem.Inputs.VMwareClusterNetworkConfigArgs
/// {
/// ServiceAddressCidrBlocks = new[]
/// {
/// "10.96.0.0/12",
/// },
/// PodAddressCidrBlocks = new[]
/// {
/// "192.168.0.0/16",
/// },
/// DhcpIpConfig = new Gcp.GkeOnPrem.Inputs.VMwareClusterNetworkConfigDhcpIpConfigArgs
/// {
/// Enabled = true,
/// },
/// },
/// ControlPlaneNode = new Gcp.GkeOnPrem.Inputs.VMwareClusterControlPlaneNodeArgs
/// {
/// Cpus = 4,
/// Memory = 8192,
/// Replicas = 1,
/// },
/// LoadBalancer = new Gcp.GkeOnPrem.Inputs.VMwareClusterLoadBalancerArgs
/// {
/// VipConfig = new Gcp.GkeOnPrem.Inputs.VMwareClusterLoadBalancerVipConfigArgs
/// {
/// ControlPlaneVip = "10.251.133.5",
/// IngressVip = "10.251.135.19",
/// },
/// MetalLbConfig = new Gcp.GkeOnPrem.Inputs.VMwareClusterLoadBalancerMetalLbConfigArgs
/// {
/// AddressPools = new[]
/// {
/// new Gcp.GkeOnPrem.Inputs.VMwareClusterLoadBalancerMetalLbConfigAddressPoolArgs
/// {
/// Pool = "ingress-ip",
/// ManualAssign = true,
/// Addresses = new[]
/// {
/// "10.251.135.19",
/// },
/// AvoidBuggyIps = true,
/// },
/// new Gcp.GkeOnPrem.Inputs.VMwareClusterLoadBalancerMetalLbConfigAddressPoolArgs
/// {
/// Pool = "lb-test-ip",
/// ManualAssign = true,
/// Addresses = new[]
/// {
/// "10.251.135.19",
/// },
/// AvoidBuggyIps = true,
/// },
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkeonprem"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := gkeonprem.NewVMwareCluster(ctx, "cluster-basic", &gkeonprem.VMwareClusterArgs{
/// Name:                   pulumi.String("cluster-basic"),
/// Location:               pulumi.String("us-west1"),
/// AdminClusterMembership: pulumi.String("projects/870316890899/locations/global/memberships/gkeonprem-terraform-test"),
/// Description:            pulumi.String("test cluster"),
/// OnPremVersion:          pulumi.String("1.13.1-gke.35"),
/// Annotations:            pulumi.StringMap{},
/// NetworkConfig: &gkeonprem.VMwareClusterNetworkConfigArgs{
/// ServiceAddressCidrBlocks: pulumi.StringArray{
/// pulumi.String("10.96.0.0/12"),
/// },
/// PodAddressCidrBlocks: pulumi.StringArray{
/// pulumi.String("192.168.0.0/16"),
/// },
/// DhcpIpConfig: &gkeonprem.VMwareClusterNetworkConfigDhcpIpConfigArgs{
/// Enabled: pulumi.Bool(true),
/// },
/// },
/// ControlPlaneNode: &gkeonprem.VMwareClusterControlPlaneNodeArgs{
/// Cpus:     pulumi.Int(4),
/// Memory:   pulumi.Int(8192),
/// Replicas: pulumi.Int(1),
/// },
/// LoadBalancer: &gkeonprem.VMwareClusterLoadBalancerArgs{
/// VipConfig: &gkeonprem.VMwareClusterLoadBalancerVipConfigArgs{
/// ControlPlaneVip: pulumi.String("10.251.133.5"),
/// IngressVip:      pulumi.String("10.251.135.19"),
/// },
/// MetalLbConfig: &gkeonprem.VMwareClusterLoadBalancerMetalLbConfigArgs{
/// AddressPools: gkeonprem.VMwareClusterLoadBalancerMetalLbConfigAddressPoolArray{
/// &gkeonprem.VMwareClusterLoadBalancerMetalLbConfigAddressPoolArgs{
/// Pool:         pulumi.String("ingress-ip"),
/// ManualAssign: pulumi.Bool(true),
/// Addresses: pulumi.StringArray{
/// pulumi.String("10.251.135.19"),
/// },
/// AvoidBuggyIps: pulumi.Bool(true),
/// },
/// &gkeonprem.VMwareClusterLoadBalancerMetalLbConfigAddressPoolArgs{
/// Pool:         pulumi.String("lb-test-ip"),
/// ManualAssign: pulumi.Bool(true),
/// Addresses: pulumi.StringArray{
/// pulumi.String("10.251.135.19"),
/// },
/// AvoidBuggyIps: pulumi.Bool(true),
/// },
/// },
/// },
/// },
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
/// import com.pulumi.gcp.gkeonprem.VMwareCluster;
/// import com.pulumi.gcp.gkeonprem.VMwareClusterArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VMwareClusterNetworkConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VMwareClusterNetworkConfigDhcpIpConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VMwareClusterControlPlaneNodeArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VMwareClusterLoadBalancerArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VMwareClusterLoadBalancerVipConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VMwareClusterLoadBalancerMetalLbConfigArgs;
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
/// var cluster_basic = new VMwareCluster("cluster-basic", VMwareClusterArgs.builder()
/// .name("cluster-basic")
/// .location("us-west1")
/// .adminClusterMembership("projects/870316890899/locations/global/memberships/gkeonprem-terraform-test")
/// .description("test cluster")
/// .onPremVersion("1.13.1-gke.35")
/// .annotations(Map.ofEntries(
/// ))
/// .networkConfig(VMwareClusterNetworkConfigArgs.builder()
/// .serviceAddressCidrBlocks("10.96.0.0/12")
/// .podAddressCidrBlocks("192.168.0.0/16")
/// .dhcpIpConfig(VMwareClusterNetworkConfigDhcpIpConfigArgs.builder()
/// .enabled(true)
/// .build())
/// .build())
/// .controlPlaneNode(VMwareClusterControlPlaneNodeArgs.builder()
/// .cpus(4)
/// .memory(8192)
/// .replicas(1)
/// .build())
/// .loadBalancer(VMwareClusterLoadBalancerArgs.builder()
/// .vipConfig(VMwareClusterLoadBalancerVipConfigArgs.builder()
/// .controlPlaneVip("10.251.133.5")
/// .ingressVip("10.251.135.19")
/// .build())
/// .metalLbConfig(VMwareClusterLoadBalancerMetalLbConfigArgs.builder()
/// .addressPools(
/// VMwareClusterLoadBalancerMetalLbConfigAddressPoolArgs.builder()
/// .pool("ingress-ip")
/// .manualAssign(true)
/// .addresses("10.251.135.19")
/// .avoidBuggyIps(true)
/// .build(),
/// VMwareClusterLoadBalancerMetalLbConfigAddressPoolArgs.builder()
/// .pool("lb-test-ip")
/// .manualAssign(true)
/// .addresses("10.251.135.19")
/// .avoidBuggyIps(true)
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// cluster-basic:
/// type: gcp:gkeonprem:VMwareCluster
/// properties:
/// name: cluster-basic
/// location: us-west1
/// adminClusterMembership: projects/870316890899/locations/global/memberships/gkeonprem-terraform-test
/// description: test cluster
/// onPremVersion: 1.13.1-gke.35
/// annotations: {}
/// networkConfig:
/// serviceAddressCidrBlocks:
/// - 10.96.0.0/12
/// podAddressCidrBlocks:
/// - 192.168.0.0/16
/// dhcpIpConfig:
/// enabled: true
/// controlPlaneNode:
/// cpus: 4
/// memory: 8192
/// replicas: 1
/// loadBalancer:
/// vipConfig:
/// controlPlaneVip: 10.251.133.5
/// ingressVip: 10.251.135.19
/// metalLbConfig:
/// addressPools:
/// - pool: ingress-ip
/// manualAssign: 'true'
/// addresses:
/// - 10.251.135.19
/// avoidBuggyIps: true
/// - pool: lb-test-ip
/// manualAssign: 'true'
/// addresses:
/// - 10.251.135.19
/// avoidBuggyIps: true
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Gkeonprem Vmware Cluster F5lb
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const cluster_f5lb = new gcp.gkeonprem.VMwareCluster("cluster-f5lb", {
/// name: "cluster-f5lb",
/// location: "us-west1",
/// adminClusterMembership: "projects/870316890899/locations/global/memberships/gkeonprem-terraform-test",
/// description: "test cluster",
/// onPremVersion: "1.13.1-gke.35",
/// annotations: {},
/// networkConfig: {
/// serviceAddressCidrBlocks: ["10.96.0.0/12"],
/// podAddressCidrBlocks: ["192.168.0.0/16"],
/// dhcpIpConfig: {
/// enabled: true,
/// },
/// controlPlaneV2Config: {
/// controlPlaneIpBlock: {
/// ips: [{
/// hostname: "test-hostname",
/// ip: "10.0.0.1",
/// }],
/// netmask: "10.0.0.1/32",
/// gateway: "test-gateway",
/// },
/// },
/// vcenterNetwork: "test-vcenter-network",
/// },
/// controlPlaneNode: {
/// cpus: 4,
/// memory: 8192,
/// replicas: 1,
/// autoResizeConfig: {
/// enabled: true,
/// },
/// },
/// loadBalancer: {
/// vipConfig: {
/// controlPlaneVip: "10.251.133.5",
/// ingressVip: "10.251.135.19",
/// },
/// f5Config: {
/// address: "10.0.0.1",
/// partition: "test-partition",
/// snatPool: "test-snap-pool",
/// },
/// },
/// dataplaneV2: {
/// dataplaneV2Enabled: true,
/// windowsDataplaneV2Enabled: true,
/// advancedNetworking: true,
/// },
/// vmTrackingEnabled: true,
/// enableControlPlaneV2: true,
/// disableBundledIngress: true,
/// authorization: {
/// adminUsers: [{
/// username: "testuser@gmail.com",
/// }],
/// },
/// antiAffinityGroups: {
/// aagConfigDisabled: true,
/// },
/// autoRepairConfig: {
/// enabled: true,
/// },
/// storage: {
/// vsphereCsiDisabled: true,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// cluster_f5lb = gcp.gkeonprem.VMwareCluster("cluster-f5lb",
/// name="cluster-f5lb",
/// location="us-west1",
/// admin_cluster_membership="projects/870316890899/locations/global/memberships/gkeonprem-terraform-test",
/// description="test cluster",
/// on_prem_version="1.13.1-gke.35",
/// annotations={},
/// network_config={
/// "service_address_cidr_blocks": ["10.96.0.0/12"],
/// "pod_address_cidr_blocks": ["192.168.0.0/16"],
/// "dhcp_ip_config": {
/// "enabled": True,
/// },
/// "control_plane_v2_config": {
/// "control_plane_ip_block": {
/// "ips": [{
/// "hostname": "test-hostname",
/// "ip": "10.0.0.1",
/// }],
/// "netmask": "10.0.0.1/32",
/// "gateway": "test-gateway",
/// },
/// },
/// "vcenter_network": "test-vcenter-network",
/// },
/// control_plane_node={
/// "cpus": 4,
/// "memory": 8192,
/// "replicas": 1,
/// "auto_resize_config": {
/// "enabled": True,
/// },
/// },
/// load_balancer={
/// "vip_config": {
/// "control_plane_vip": "10.251.133.5",
/// "ingress_vip": "10.251.135.19",
/// },
/// "f5_config": {
/// "address": "10.0.0.1",
/// "partition": "test-partition",
/// "snat_pool": "test-snap-pool",
/// },
/// },
/// dataplane_v2={
/// "dataplane_v2_enabled": True,
/// "windows_dataplane_v2_enabled": True,
/// "advanced_networking": True,
/// },
/// vm_tracking_enabled=True,
/// enable_control_plane_v2=True,
/// disable_bundled_ingress=True,
/// authorization={
/// "admin_users": [{
/// "username": "testuser@gmail.com",
/// }],
/// },
/// anti_affinity_groups={
/// "aag_config_disabled": True,
/// },
/// auto_repair_config={
/// "enabled": True,
/// },
/// storage={
/// "vsphere_csi_disabled": True,
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var cluster_f5lb = new Gcp.GkeOnPrem.VMwareCluster("cluster-f5lb", new()
/// {
/// Name = "cluster-f5lb",
/// Location = "us-west1",
/// AdminClusterMembership = "projects/870316890899/locations/global/memberships/gkeonprem-terraform-test",
/// Description = "test cluster",
/// OnPremVersion = "1.13.1-gke.35",
/// Annotations = null,
/// NetworkConfig = new Gcp.GkeOnPrem.Inputs.VMwareClusterNetworkConfigArgs
/// {
/// ServiceAddressCidrBlocks = new[]
/// {
/// "10.96.0.0/12",
/// },
/// PodAddressCidrBlocks = new[]
/// {
/// "192.168.0.0/16",
/// },
/// DhcpIpConfig = new Gcp.GkeOnPrem.Inputs.VMwareClusterNetworkConfigDhcpIpConfigArgs
/// {
/// Enabled = true,
/// },
/// ControlPlaneV2Config = new Gcp.GkeOnPrem.Inputs.VMwareClusterNetworkConfigControlPlaneV2ConfigArgs
/// {
/// ControlPlaneIpBlock = new Gcp.GkeOnPrem.Inputs.VMwareClusterNetworkConfigControlPlaneV2ConfigControlPlaneIpBlockArgs
/// {
/// Ips = new[]
/// {
/// new Gcp.GkeOnPrem.Inputs.VMwareClusterNetworkConfigControlPlaneV2ConfigControlPlaneIpBlockIpArgs
/// {
/// Hostname = "test-hostname",
/// Ip = "10.0.0.1",
/// },
/// },
/// Netmask = "10.0.0.1/32",
/// Gateway = "test-gateway",
/// },
/// },
/// VcenterNetwork = "test-vcenter-network",
/// },
/// ControlPlaneNode = new Gcp.GkeOnPrem.Inputs.VMwareClusterControlPlaneNodeArgs
/// {
/// Cpus = 4,
/// Memory = 8192,
/// Replicas = 1,
/// AutoResizeConfig = new Gcp.GkeOnPrem.Inputs.VMwareClusterControlPlaneNodeAutoResizeConfigArgs
/// {
/// Enabled = true,
/// },
/// },
/// LoadBalancer = new Gcp.GkeOnPrem.Inputs.VMwareClusterLoadBalancerArgs
/// {
/// VipConfig = new Gcp.GkeOnPrem.Inputs.VMwareClusterLoadBalancerVipConfigArgs
/// {
/// ControlPlaneVip = "10.251.133.5",
/// IngressVip = "10.251.135.19",
/// },
/// F5Config = new Gcp.GkeOnPrem.Inputs.VMwareClusterLoadBalancerF5ConfigArgs
/// {
/// Address = "10.0.0.1",
/// Partition = "test-partition",
/// SnatPool = "test-snap-pool",
/// },
/// },
/// DataplaneV2 = new Gcp.GkeOnPrem.Inputs.VMwareClusterDataplaneV2Args
/// {
/// DataplaneV2Enabled = true,
/// WindowsDataplaneV2Enabled = true,
/// AdvancedNetworking = true,
/// },
/// VmTrackingEnabled = true,
/// EnableControlPlaneV2 = true,
/// DisableBundledIngress = true,
/// Authorization = new Gcp.GkeOnPrem.Inputs.VMwareClusterAuthorizationArgs
/// {
/// AdminUsers = new[]
/// {
/// new Gcp.GkeOnPrem.Inputs.VMwareClusterAuthorizationAdminUserArgs
/// {
/// Username = "testuser@gmail.com",
/// },
/// },
/// },
/// AntiAffinityGroups = new Gcp.GkeOnPrem.Inputs.VMwareClusterAntiAffinityGroupsArgs
/// {
/// AagConfigDisabled = true,
/// },
/// AutoRepairConfig = new Gcp.GkeOnPrem.Inputs.VMwareClusterAutoRepairConfigArgs
/// {
/// Enabled = true,
/// },
/// Storage = new Gcp.GkeOnPrem.Inputs.VMwareClusterStorageArgs
/// {
/// VsphereCsiDisabled = true,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkeonprem"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := gkeonprem.NewVMwareCluster(ctx, "cluster-f5lb", &gkeonprem.VMwareClusterArgs{
/// Name:                   pulumi.String("cluster-f5lb"),
/// Location:               pulumi.String("us-west1"),
/// AdminClusterMembership: pulumi.String("projects/870316890899/locations/global/memberships/gkeonprem-terraform-test"),
/// Description:            pulumi.String("test cluster"),
/// OnPremVersion:          pulumi.String("1.13.1-gke.35"),
/// Annotations:            pulumi.StringMap{},
/// NetworkConfig: &gkeonprem.VMwareClusterNetworkConfigArgs{
/// ServiceAddressCidrBlocks: pulumi.StringArray{
/// pulumi.String("10.96.0.0/12"),
/// },
/// PodAddressCidrBlocks: pulumi.StringArray{
/// pulumi.String("192.168.0.0/16"),
/// },
/// DhcpIpConfig: &gkeonprem.VMwareClusterNetworkConfigDhcpIpConfigArgs{
/// Enabled: pulumi.Bool(true),
/// },
/// ControlPlaneV2Config: &gkeonprem.VMwareClusterNetworkConfigControlPlaneV2ConfigArgs{
/// ControlPlaneIpBlock: &gkeonprem.VMwareClusterNetworkConfigControlPlaneV2ConfigControlPlaneIpBlockArgs{
/// Ips: gkeonprem.VMwareClusterNetworkConfigControlPlaneV2ConfigControlPlaneIpBlockIpArray{
/// &gkeonprem.VMwareClusterNetworkConfigControlPlaneV2ConfigControlPlaneIpBlockIpArgs{
/// Hostname: pulumi.String("test-hostname"),
/// Ip:       pulumi.String("10.0.0.1"),
/// },
/// },
/// Netmask: pulumi.String("10.0.0.1/32"),
/// Gateway: pulumi.String("test-gateway"),
/// },
/// },
/// VcenterNetwork: pulumi.String("test-vcenter-network"),
/// },
/// ControlPlaneNode: &gkeonprem.VMwareClusterControlPlaneNodeArgs{
/// Cpus:     pulumi.Int(4),
/// Memory:   pulumi.Int(8192),
/// Replicas: pulumi.Int(1),
/// AutoResizeConfig: &gkeonprem.VMwareClusterControlPlaneNodeAutoResizeConfigArgs{
/// Enabled: pulumi.Bool(true),
/// },
/// },
/// LoadBalancer: &gkeonprem.VMwareClusterLoadBalancerArgs{
/// VipConfig: &gkeonprem.VMwareClusterLoadBalancerVipConfigArgs{
/// ControlPlaneVip: pulumi.String("10.251.133.5"),
/// IngressVip:      pulumi.String("10.251.135.19"),
/// },
/// F5Config: &gkeonprem.VMwareClusterLoadBalancerF5ConfigArgs{
/// Address:   pulumi.String("10.0.0.1"),
/// Partition: pulumi.String("test-partition"),
/// SnatPool:  pulumi.String("test-snap-pool"),
/// },
/// },
/// DataplaneV2: &gkeonprem.VMwareClusterDataplaneV2Args{
/// DataplaneV2Enabled:        pulumi.Bool(true),
/// WindowsDataplaneV2Enabled: pulumi.Bool(true),
/// AdvancedNetworking:        pulumi.Bool(true),
/// },
/// VmTrackingEnabled:     pulumi.Bool(true),
/// EnableControlPlaneV2:  pulumi.Bool(true),
/// DisableBundledIngress: pulumi.Bool(true),
/// Authorization: &gkeonprem.VMwareClusterAuthorizationArgs{
/// AdminUsers: gkeonprem.VMwareClusterAuthorizationAdminUserArray{
/// &gkeonprem.VMwareClusterAuthorizationAdminUserArgs{
/// Username: pulumi.String("testuser@gmail.com"),
/// },
/// },
/// },
/// AntiAffinityGroups: &gkeonprem.VMwareClusterAntiAffinityGroupsArgs{
/// AagConfigDisabled: pulumi.Bool(true),
/// },
/// AutoRepairConfig: &gkeonprem.VMwareClusterAutoRepairConfigArgs{
/// Enabled: pulumi.Bool(true),
/// },
/// Storage: &gkeonprem.VMwareClusterStorageArgs{
/// VsphereCsiDisabled: pulumi.Bool(true),
/// },
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
/// import com.pulumi.gcp.gkeonprem.VMwareCluster;
/// import com.pulumi.gcp.gkeonprem.VMwareClusterArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VMwareClusterNetworkConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VMwareClusterNetworkConfigDhcpIpConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VMwareClusterNetworkConfigControlPlaneV2ConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VMwareClusterNetworkConfigControlPlaneV2ConfigControlPlaneIpBlockArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VMwareClusterControlPlaneNodeArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VMwareClusterControlPlaneNodeAutoResizeConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VMwareClusterLoadBalancerArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VMwareClusterLoadBalancerVipConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VMwareClusterLoadBalancerF5ConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VMwareClusterDataplaneV2Args;
/// import com.pulumi.gcp.gkeonprem.inputs.VMwareClusterAuthorizationArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VMwareClusterAntiAffinityGroupsArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VMwareClusterAutoRepairConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VMwareClusterStorageArgs;
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
/// var cluster_f5lb = new VMwareCluster("cluster-f5lb", VMwareClusterArgs.builder()
/// .name("cluster-f5lb")
/// .location("us-west1")
/// .adminClusterMembership("projects/870316890899/locations/global/memberships/gkeonprem-terraform-test")
/// .description("test cluster")
/// .onPremVersion("1.13.1-gke.35")
/// .annotations(Map.ofEntries(
/// ))
/// .networkConfig(VMwareClusterNetworkConfigArgs.builder()
/// .serviceAddressCidrBlocks("10.96.0.0/12")
/// .podAddressCidrBlocks("192.168.0.0/16")
/// .dhcpIpConfig(VMwareClusterNetworkConfigDhcpIpConfigArgs.builder()
/// .enabled(true)
/// .build())
/// .controlPlaneV2Config(VMwareClusterNetworkConfigControlPlaneV2ConfigArgs.builder()
/// .controlPlaneIpBlock(VMwareClusterNetworkConfigControlPlaneV2ConfigControlPlaneIpBlockArgs.builder()
/// .ips(VMwareClusterNetworkConfigControlPlaneV2ConfigControlPlaneIpBlockIpArgs.builder()
/// .hostname("test-hostname")
/// .ip("10.0.0.1")
/// .build())
/// .netmask("10.0.0.1/32")
/// .gateway("test-gateway")
/// .build())
/// .build())
/// .vcenterNetwork("test-vcenter-network")
/// .build())
/// .controlPlaneNode(VMwareClusterControlPlaneNodeArgs.builder()
/// .cpus(4)
/// .memory(8192)
/// .replicas(1)
/// .autoResizeConfig(VMwareClusterControlPlaneNodeAutoResizeConfigArgs.builder()
/// .enabled(true)
/// .build())
/// .build())
/// .loadBalancer(VMwareClusterLoadBalancerArgs.builder()
/// .vipConfig(VMwareClusterLoadBalancerVipConfigArgs.builder()
/// .controlPlaneVip("10.251.133.5")
/// .ingressVip("10.251.135.19")
/// .build())
/// .f5Config(VMwareClusterLoadBalancerF5ConfigArgs.builder()
/// .address("10.0.0.1")
/// .partition("test-partition")
/// .snatPool("test-snap-pool")
/// .build())
/// .build())
/// .dataplaneV2(VMwareClusterDataplaneV2Args.builder()
/// .dataplaneV2Enabled(true)
/// .windowsDataplaneV2Enabled(true)
/// .advancedNetworking(true)
/// .build())
/// .vmTrackingEnabled(true)
/// .enableControlPlaneV2(true)
/// .disableBundledIngress(true)
/// .authorization(VMwareClusterAuthorizationArgs.builder()
/// .adminUsers(VMwareClusterAuthorizationAdminUserArgs.builder()
/// .username("testuser@gmail.com")
/// .build())
/// .build())
/// .antiAffinityGroups(VMwareClusterAntiAffinityGroupsArgs.builder()
/// .aagConfigDisabled(true)
/// .build())
/// .autoRepairConfig(VMwareClusterAutoRepairConfigArgs.builder()
/// .enabled(true)
/// .build())
/// .storage(VMwareClusterStorageArgs.builder()
/// .vsphereCsiDisabled(true)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// cluster-f5lb:
/// type: gcp:gkeonprem:VMwareCluster
/// properties:
/// name: cluster-f5lb
/// location: us-west1
/// adminClusterMembership: projects/870316890899/locations/global/memberships/gkeonprem-terraform-test
/// description: test cluster
/// onPremVersion: 1.13.1-gke.35
/// annotations: {}
/// networkConfig:
/// serviceAddressCidrBlocks:
/// - 10.96.0.0/12
/// podAddressCidrBlocks:
/// - 192.168.0.0/16
/// dhcpIpConfig:
/// enabled: true
/// controlPlaneV2Config:
/// controlPlaneIpBlock:
/// ips:
/// - hostname: test-hostname
/// ip: 10.0.0.1
/// netmask: 10.0.0.1/32
/// gateway: test-gateway
/// vcenterNetwork: test-vcenter-network
/// controlPlaneNode:
/// cpus: 4
/// memory: 8192
/// replicas: 1
/// autoResizeConfig:
/// enabled: true
/// loadBalancer:
/// vipConfig:
/// controlPlaneVip: 10.251.133.5
/// ingressVip: 10.251.135.19
/// f5Config:
/// address: 10.0.0.1
/// partition: test-partition
/// snatPool: test-snap-pool
/// dataplaneV2:
/// dataplaneV2Enabled: true
/// windowsDataplaneV2Enabled: true
/// advancedNetworking: true
/// vmTrackingEnabled: true
/// enableControlPlaneV2: true
/// disableBundledIngress: true
/// authorization:
/// adminUsers:
/// - username: testuser@gmail.com
/// antiAffinityGroups:
/// aagConfigDisabled: true
/// autoRepairConfig:
/// enabled: true
/// storage:
/// vsphereCsiDisabled: true
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Gkeonprem Vmware Cluster Manuallb
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const cluster_manuallb = new gcp.gkeonprem.VMwareCluster("cluster-manuallb", {
/// name: "cluster-manuallb",
/// location: "us-west1",
/// adminClusterMembership: "projects/870316890899/locations/global/memberships/gkeonprem-terraform-test",
/// description: "test cluster",
/// onPremVersion: "1.13.1-gke.35",
/// annotations: {},
/// networkConfig: {
/// serviceAddressCidrBlocks: ["10.96.0.0/12"],
/// podAddressCidrBlocks: ["192.168.0.0/16"],
/// hostConfig: {
/// dnsServers: ["10.254.41.1"],
/// ntpServers: ["216.239.35.8"],
/// dnsSearchDomains: ["test-domain"],
/// },
/// staticIpConfig: {
/// ipBlocks: [{
/// netmask: "255.255.252.0",
/// gateway: "10.251.31.254",
/// ips: [
/// {
/// ip: "10.251.30.153",
/// hostname: "test-hostname1",
/// },
/// {
/// ip: "10.251.31.206",
/// hostname: "test-hostname2",
/// },
/// {
/// ip: "10.251.31.193",
/// hostname: "test-hostname3",
/// },
/// {
/// ip: "10.251.30.230",
/// hostname: "test-hostname4",
/// },
/// ],
/// }],
/// },
/// },
/// controlPlaneNode: {
/// cpus: 4,
/// memory: 8192,
/// replicas: 1,
/// autoResizeConfig: {
/// enabled: true,
/// },
/// },
/// loadBalancer: {
/// vipConfig: {
/// controlPlaneVip: "10.251.133.5",
/// ingressVip: "10.251.135.19",
/// },
/// manualLbConfig: {
/// ingressHttpNodePort: 30005,
/// ingressHttpsNodePort: 30006,
/// controlPlaneNodePort: 30007,
/// konnectivityServerNodePort: 30008,
/// },
/// },
/// vcenter: {
/// resourcePool: "test-resource-pool",
/// datastore: "test-datastore",
/// datacenter: "test-datacenter",
/// cluster: "test-cluster",
/// folder: "test-folder",
/// caCertData: "test-ca-cert-data",
/// storagePolicyName: "test-storage-policy-name",
/// },
/// dataplaneV2: {
/// dataplaneV2Enabled: true,
/// windowsDataplaneV2Enabled: true,
/// advancedNetworking: true,
/// },
/// vmTrackingEnabled: true,
/// enableControlPlaneV2: true,
/// enableAdvancedCluster: true,
/// upgradePolicy: {
/// controlPlaneOnly: true,
/// },
/// authorization: {
/// adminUsers: [{
/// username: "testuser@gmail.com",
/// }],
/// },
/// antiAffinityGroups: {
/// aagConfigDisabled: true,
/// },
/// autoRepairConfig: {
/// enabled: true,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// cluster_manuallb = gcp.gkeonprem.VMwareCluster("cluster-manuallb",
/// name="cluster-manuallb",
/// location="us-west1",
/// admin_cluster_membership="projects/870316890899/locations/global/memberships/gkeonprem-terraform-test",
/// description="test cluster",
/// on_prem_version="1.13.1-gke.35",
/// annotations={},
/// network_config={
/// "service_address_cidr_blocks": ["10.96.0.0/12"],
/// "pod_address_cidr_blocks": ["192.168.0.0/16"],
/// "host_config": {
/// "dns_servers": ["10.254.41.1"],
/// "ntp_servers": ["216.239.35.8"],
/// "dns_search_domains": ["test-domain"],
/// },
/// "static_ip_config": {
/// "ip_blocks": [{
/// "netmask": "255.255.252.0",
/// "gateway": "10.251.31.254",
/// "ips": [
/// {
/// "ip": "10.251.30.153",
/// "hostname": "test-hostname1",
/// },
/// {
/// "ip": "10.251.31.206",
/// "hostname": "test-hostname2",
/// },
/// {
/// "ip": "10.251.31.193",
/// "hostname": "test-hostname3",
/// },
/// {
/// "ip": "10.251.30.230",
/// "hostname": "test-hostname4",
/// },
/// ],
/// }],
/// },
/// },
/// control_plane_node={
/// "cpus": 4,
/// "memory": 8192,
/// "replicas": 1,
/// "auto_resize_config": {
/// "enabled": True,
/// },
/// },
/// load_balancer={
/// "vip_config": {
/// "control_plane_vip": "10.251.133.5",
/// "ingress_vip": "10.251.135.19",
/// },
/// "manual_lb_config": {
/// "ingress_http_node_port": 30005,
/// "ingress_https_node_port": 30006,
/// "control_plane_node_port": 30007,
/// "konnectivity_server_node_port": 30008,
/// },
/// },
/// vcenter={
/// "resource_pool": "test-resource-pool",
/// "datastore": "test-datastore",
/// "datacenter": "test-datacenter",
/// "cluster": "test-cluster",
/// "folder": "test-folder",
/// "ca_cert_data": "test-ca-cert-data",
/// "storage_policy_name": "test-storage-policy-name",
/// },
/// dataplane_v2={
/// "dataplane_v2_enabled": True,
/// "windows_dataplane_v2_enabled": True,
/// "advanced_networking": True,
/// },
/// vm_tracking_enabled=True,
/// enable_control_plane_v2=True,
/// enable_advanced_cluster=True,
/// upgrade_policy={
/// "control_plane_only": True,
/// },
/// authorization={
/// "admin_users": [{
/// "username": "testuser@gmail.com",
/// }],
/// },
/// anti_affinity_groups={
/// "aag_config_disabled": True,
/// },
/// auto_repair_config={
/// "enabled": True,
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var cluster_manuallb = new Gcp.GkeOnPrem.VMwareCluster("cluster-manuallb", new()
/// {
/// Name = "cluster-manuallb",
/// Location = "us-west1",
/// AdminClusterMembership = "projects/870316890899/locations/global/memberships/gkeonprem-terraform-test",
/// Description = "test cluster",
/// OnPremVersion = "1.13.1-gke.35",
/// Annotations = null,
/// NetworkConfig = new Gcp.GkeOnPrem.Inputs.VMwareClusterNetworkConfigArgs
/// {
/// ServiceAddressCidrBlocks = new[]
/// {
/// "10.96.0.0/12",
/// },
/// PodAddressCidrBlocks = new[]
/// {
/// "192.168.0.0/16",
/// },
/// HostConfig = new Gcp.GkeOnPrem.Inputs.VMwareClusterNetworkConfigHostConfigArgs
/// {
/// DnsServers = new[]
/// {
/// "10.254.41.1",
/// },
/// NtpServers = new[]
/// {
/// "216.239.35.8",
/// },
/// DnsSearchDomains = new[]
/// {
/// "test-domain",
/// },
/// },
/// StaticIpConfig = new Gcp.GkeOnPrem.Inputs.VMwareClusterNetworkConfigStaticIpConfigArgs
/// {
/// IpBlocks = new[]
/// {
/// new Gcp.GkeOnPrem.Inputs.VMwareClusterNetworkConfigStaticIpConfigIpBlockArgs
/// {
/// Netmask = "255.255.252.0",
/// Gateway = "10.251.31.254",
/// Ips = new[]
/// {
/// new Gcp.GkeOnPrem.Inputs.VMwareClusterNetworkConfigStaticIpConfigIpBlockIpArgs
/// {
/// Ip = "10.251.30.153",
/// Hostname = "test-hostname1",
/// },
/// new Gcp.GkeOnPrem.Inputs.VMwareClusterNetworkConfigStaticIpConfigIpBlockIpArgs
/// {
/// Ip = "10.251.31.206",
/// Hostname = "test-hostname2",
/// },
/// new Gcp.GkeOnPrem.Inputs.VMwareClusterNetworkConfigStaticIpConfigIpBlockIpArgs
/// {
/// Ip = "10.251.31.193",
/// Hostname = "test-hostname3",
/// },
/// new Gcp.GkeOnPrem.Inputs.VMwareClusterNetworkConfigStaticIpConfigIpBlockIpArgs
/// {
/// Ip = "10.251.30.230",
/// Hostname = "test-hostname4",
/// },
/// },
/// },
/// },
/// },
/// },
/// ControlPlaneNode = new Gcp.GkeOnPrem.Inputs.VMwareClusterControlPlaneNodeArgs
/// {
/// Cpus = 4,
/// Memory = 8192,
/// Replicas = 1,
/// AutoResizeConfig = new Gcp.GkeOnPrem.Inputs.VMwareClusterControlPlaneNodeAutoResizeConfigArgs
/// {
/// Enabled = true,
/// },
/// },
/// LoadBalancer = new Gcp.GkeOnPrem.Inputs.VMwareClusterLoadBalancerArgs
/// {
/// VipConfig = new Gcp.GkeOnPrem.Inputs.VMwareClusterLoadBalancerVipConfigArgs
/// {
/// ControlPlaneVip = "10.251.133.5",
/// IngressVip = "10.251.135.19",
/// },
/// ManualLbConfig = new Gcp.GkeOnPrem.Inputs.VMwareClusterLoadBalancerManualLbConfigArgs
/// {
/// IngressHttpNodePort = 30005,
/// IngressHttpsNodePort = 30006,
/// ControlPlaneNodePort = 30007,
/// KonnectivityServerNodePort = 30008,
/// },
/// },
/// Vcenter = new Gcp.GkeOnPrem.Inputs.VMwareClusterVcenterArgs
/// {
/// ResourcePool = "test-resource-pool",
/// Datastore = "test-datastore",
/// Datacenter = "test-datacenter",
/// Cluster = "test-cluster",
/// Folder = "test-folder",
/// CaCertData = "test-ca-cert-data",
/// StoragePolicyName = "test-storage-policy-name",
/// },
/// DataplaneV2 = new Gcp.GkeOnPrem.Inputs.VMwareClusterDataplaneV2Args
/// {
/// DataplaneV2Enabled = true,
/// WindowsDataplaneV2Enabled = true,
/// AdvancedNetworking = true,
/// },
/// VmTrackingEnabled = true,
/// EnableControlPlaneV2 = true,
/// EnableAdvancedCluster = true,
/// UpgradePolicy = new Gcp.GkeOnPrem.Inputs.VMwareClusterUpgradePolicyArgs
/// {
/// ControlPlaneOnly = true,
/// },
/// Authorization = new Gcp.GkeOnPrem.Inputs.VMwareClusterAuthorizationArgs
/// {
/// AdminUsers = new[]
/// {
/// new Gcp.GkeOnPrem.Inputs.VMwareClusterAuthorizationAdminUserArgs
/// {
/// Username = "testuser@gmail.com",
/// },
/// },
/// },
/// AntiAffinityGroups = new Gcp.GkeOnPrem.Inputs.VMwareClusterAntiAffinityGroupsArgs
/// {
/// AagConfigDisabled = true,
/// },
/// AutoRepairConfig = new Gcp.GkeOnPrem.Inputs.VMwareClusterAutoRepairConfigArgs
/// {
/// Enabled = true,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkeonprem"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := gkeonprem.NewVMwareCluster(ctx, "cluster-manuallb", &gkeonprem.VMwareClusterArgs{
/// Name:                   pulumi.String("cluster-manuallb"),
/// Location:               pulumi.String("us-west1"),
/// AdminClusterMembership: pulumi.String("projects/870316890899/locations/global/memberships/gkeonprem-terraform-test"),
/// Description:            pulumi.String("test cluster"),
/// OnPremVersion:          pulumi.String("1.13.1-gke.35"),
/// Annotations:            pulumi.StringMap{},
/// NetworkConfig: &gkeonprem.VMwareClusterNetworkConfigArgs{
/// ServiceAddressCidrBlocks: pulumi.StringArray{
/// pulumi.String("10.96.0.0/12"),
/// },
/// PodAddressCidrBlocks: pulumi.StringArray{
/// pulumi.String("192.168.0.0/16"),
/// },
/// HostConfig: &gkeonprem.VMwareClusterNetworkConfigHostConfigArgs{
/// DnsServers: pulumi.StringArray{
/// pulumi.String("10.254.41.1"),
/// },
/// NtpServers: pulumi.StringArray{
/// pulumi.String("216.239.35.8"),
/// },
/// DnsSearchDomains: pulumi.StringArray{
/// pulumi.String("test-domain"),
/// },
/// },
/// StaticIpConfig: &gkeonprem.VMwareClusterNetworkConfigStaticIpConfigArgs{
/// IpBlocks: gkeonprem.VMwareClusterNetworkConfigStaticIpConfigIpBlockArray{
/// &gkeonprem.VMwareClusterNetworkConfigStaticIpConfigIpBlockArgs{
/// Netmask: pulumi.String("255.255.252.0"),
/// Gateway: pulumi.String("10.251.31.254"),
/// Ips: gkeonprem.VMwareClusterNetworkConfigStaticIpConfigIpBlockIpArray{
/// &gkeonprem.VMwareClusterNetworkConfigStaticIpConfigIpBlockIpArgs{
/// Ip:       pulumi.String("10.251.30.153"),
/// Hostname: pulumi.String("test-hostname1"),
/// },
/// &gkeonprem.VMwareClusterNetworkConfigStaticIpConfigIpBlockIpArgs{
/// Ip:       pulumi.String("10.251.31.206"),
/// Hostname: pulumi.String("test-hostname2"),
/// },
/// &gkeonprem.VMwareClusterNetworkConfigStaticIpConfigIpBlockIpArgs{
/// Ip:       pulumi.String("10.251.31.193"),
/// Hostname: pulumi.String("test-hostname3"),
/// },
/// &gkeonprem.VMwareClusterNetworkConfigStaticIpConfigIpBlockIpArgs{
/// Ip:       pulumi.String("10.251.30.230"),
/// Hostname: pulumi.String("test-hostname4"),
/// },
/// },
/// },
/// },
/// },
/// },
/// ControlPlaneNode: &gkeonprem.VMwareClusterControlPlaneNodeArgs{
/// Cpus:     pulumi.Int(4),
/// Memory:   pulumi.Int(8192),
/// Replicas: pulumi.Int(1),
/// AutoResizeConfig: &gkeonprem.VMwareClusterControlPlaneNodeAutoResizeConfigArgs{
/// Enabled: pulumi.Bool(true),
/// },
/// },
/// LoadBalancer: &gkeonprem.VMwareClusterLoadBalancerArgs{
/// VipConfig: &gkeonprem.VMwareClusterLoadBalancerVipConfigArgs{
/// ControlPlaneVip: pulumi.String("10.251.133.5"),
/// IngressVip:      pulumi.String("10.251.135.19"),
/// },
/// ManualLbConfig: &gkeonprem.VMwareClusterLoadBalancerManualLbConfigArgs{
/// IngressHttpNodePort:        pulumi.Int(30005),
/// IngressHttpsNodePort:       pulumi.Int(30006),
/// ControlPlaneNodePort:       pulumi.Int(30007),
/// KonnectivityServerNodePort: pulumi.Int(30008),
/// },
/// },
/// Vcenter: &gkeonprem.VMwareClusterVcenterArgs{
/// ResourcePool:      pulumi.String("test-resource-pool"),
/// Datastore:         pulumi.String("test-datastore"),
/// Datacenter:        pulumi.String("test-datacenter"),
/// Cluster:           pulumi.String("test-cluster"),
/// Folder:            pulumi.String("test-folder"),
/// CaCertData:        pulumi.String("test-ca-cert-data"),
/// StoragePolicyName: pulumi.String("test-storage-policy-name"),
/// },
/// DataplaneV2: &gkeonprem.VMwareClusterDataplaneV2Args{
/// DataplaneV2Enabled:        pulumi.Bool(true),
/// WindowsDataplaneV2Enabled: pulumi.Bool(true),
/// AdvancedNetworking:        pulumi.Bool(true),
/// },
/// VmTrackingEnabled:     pulumi.Bool(true),
/// EnableControlPlaneV2:  pulumi.Bool(true),
/// EnableAdvancedCluster: pulumi.Bool(true),
/// UpgradePolicy: &gkeonprem.VMwareClusterUpgradePolicyArgs{
/// ControlPlaneOnly: pulumi.Bool(true),
/// },
/// Authorization: &gkeonprem.VMwareClusterAuthorizationArgs{
/// AdminUsers: gkeonprem.VMwareClusterAuthorizationAdminUserArray{
/// &gkeonprem.VMwareClusterAuthorizationAdminUserArgs{
/// Username: pulumi.String("testuser@gmail.com"),
/// },
/// },
/// },
/// AntiAffinityGroups: &gkeonprem.VMwareClusterAntiAffinityGroupsArgs{
/// AagConfigDisabled: pulumi.Bool(true),
/// },
/// AutoRepairConfig: &gkeonprem.VMwareClusterAutoRepairConfigArgs{
/// Enabled: pulumi.Bool(true),
/// },
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
/// import com.pulumi.gcp.gkeonprem.VMwareCluster;
/// import com.pulumi.gcp.gkeonprem.VMwareClusterArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VMwareClusterNetworkConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VMwareClusterNetworkConfigHostConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VMwareClusterNetworkConfigStaticIpConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VMwareClusterControlPlaneNodeArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VMwareClusterControlPlaneNodeAutoResizeConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VMwareClusterLoadBalancerArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VMwareClusterLoadBalancerVipConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VMwareClusterLoadBalancerManualLbConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VMwareClusterVcenterArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VMwareClusterDataplaneV2Args;
/// import com.pulumi.gcp.gkeonprem.inputs.VMwareClusterUpgradePolicyArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VMwareClusterAuthorizationArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VMwareClusterAntiAffinityGroupsArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VMwareClusterAutoRepairConfigArgs;
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
/// var cluster_manuallb = new VMwareCluster("cluster-manuallb", VMwareClusterArgs.builder()
/// .name("cluster-manuallb")
/// .location("us-west1")
/// .adminClusterMembership("projects/870316890899/locations/global/memberships/gkeonprem-terraform-test")
/// .description("test cluster")
/// .onPremVersion("1.13.1-gke.35")
/// .annotations(Map.ofEntries(
/// ))
/// .networkConfig(VMwareClusterNetworkConfigArgs.builder()
/// .serviceAddressCidrBlocks("10.96.0.0/12")
/// .podAddressCidrBlocks("192.168.0.0/16")
/// .hostConfig(VMwareClusterNetworkConfigHostConfigArgs.builder()
/// .dnsServers("10.254.41.1")
/// .ntpServers("216.239.35.8")
/// .dnsSearchDomains("test-domain")
/// .build())
/// .staticIpConfig(VMwareClusterNetworkConfigStaticIpConfigArgs.builder()
/// .ipBlocks(VMwareClusterNetworkConfigStaticIpConfigIpBlockArgs.builder()
/// .netmask("255.255.252.0")
/// .gateway("10.251.31.254")
/// .ips(
/// VMwareClusterNetworkConfigStaticIpConfigIpBlockIpArgs.builder()
/// .ip("10.251.30.153")
/// .hostname("test-hostname1")
/// .build(),
/// VMwareClusterNetworkConfigStaticIpConfigIpBlockIpArgs.builder()
/// .ip("10.251.31.206")
/// .hostname("test-hostname2")
/// .build(),
/// VMwareClusterNetworkConfigStaticIpConfigIpBlockIpArgs.builder()
/// .ip("10.251.31.193")
/// .hostname("test-hostname3")
/// .build(),
/// VMwareClusterNetworkConfigStaticIpConfigIpBlockIpArgs.builder()
/// .ip("10.251.30.230")
/// .hostname("test-hostname4")
/// .build())
/// .build())
/// .build())
/// .build())
/// .controlPlaneNode(VMwareClusterControlPlaneNodeArgs.builder()
/// .cpus(4)
/// .memory(8192)
/// .replicas(1)
/// .autoResizeConfig(VMwareClusterControlPlaneNodeAutoResizeConfigArgs.builder()
/// .enabled(true)
/// .build())
/// .build())
/// .loadBalancer(VMwareClusterLoadBalancerArgs.builder()
/// .vipConfig(VMwareClusterLoadBalancerVipConfigArgs.builder()
/// .controlPlaneVip("10.251.133.5")
/// .ingressVip("10.251.135.19")
/// .build())
/// .manualLbConfig(VMwareClusterLoadBalancerManualLbConfigArgs.builder()
/// .ingressHttpNodePort(30005)
/// .ingressHttpsNodePort(30006)
/// .controlPlaneNodePort(30007)
/// .konnectivityServerNodePort(30008)
/// .build())
/// .build())
/// .vcenter(VMwareClusterVcenterArgs.builder()
/// .resourcePool("test-resource-pool")
/// .datastore("test-datastore")
/// .datacenter("test-datacenter")
/// .cluster("test-cluster")
/// .folder("test-folder")
/// .caCertData("test-ca-cert-data")
/// .storagePolicyName("test-storage-policy-name")
/// .build())
/// .dataplaneV2(VMwareClusterDataplaneV2Args.builder()
/// .dataplaneV2Enabled(true)
/// .windowsDataplaneV2Enabled(true)
/// .advancedNetworking(true)
/// .build())
/// .vmTrackingEnabled(true)
/// .enableControlPlaneV2(true)
/// .enableAdvancedCluster(true)
/// .upgradePolicy(VMwareClusterUpgradePolicyArgs.builder()
/// .controlPlaneOnly(true)
/// .build())
/// .authorization(VMwareClusterAuthorizationArgs.builder()
/// .adminUsers(VMwareClusterAuthorizationAdminUserArgs.builder()
/// .username("testuser@gmail.com")
/// .build())
/// .build())
/// .antiAffinityGroups(VMwareClusterAntiAffinityGroupsArgs.builder()
/// .aagConfigDisabled(true)
/// .build())
/// .autoRepairConfig(VMwareClusterAutoRepairConfigArgs.builder()
/// .enabled(true)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// cluster-manuallb:
/// type: gcp:gkeonprem:VMwareCluster
/// properties:
/// name: cluster-manuallb
/// location: us-west1
/// adminClusterMembership: projects/870316890899/locations/global/memberships/gkeonprem-terraform-test
/// description: test cluster
/// onPremVersion: 1.13.1-gke.35
/// annotations: {}
/// networkConfig:
/// serviceAddressCidrBlocks:
/// - 10.96.0.0/12
/// podAddressCidrBlocks:
/// - 192.168.0.0/16
/// hostConfig:
/// dnsServers:
/// - 10.254.41.1
/// ntpServers:
/// - 216.239.35.8
/// dnsSearchDomains:
/// - test-domain
/// staticIpConfig:
/// ipBlocks:
/// - netmask: 255.255.252.0
/// gateway: 10.251.31.254
/// ips:
/// - ip: 10.251.30.153
/// hostname: test-hostname1
/// - ip: 10.251.31.206
/// hostname: test-hostname2
/// - ip: 10.251.31.193
/// hostname: test-hostname3
/// - ip: 10.251.30.230
/// hostname: test-hostname4
/// controlPlaneNode:
/// cpus: 4
/// memory: 8192
/// replicas: 1
/// autoResizeConfig:
/// enabled: true
/// loadBalancer:
/// vipConfig:
/// controlPlaneVip: 10.251.133.5
/// ingressVip: 10.251.135.19
/// manualLbConfig:
/// ingressHttpNodePort: 30005
/// ingressHttpsNodePort: 30006
/// controlPlaneNodePort: 30007
/// konnectivityServerNodePort: 30008
/// vcenter:
/// resourcePool: test-resource-pool
/// datastore: test-datastore
/// datacenter: test-datacenter
/// cluster: test-cluster
/// folder: test-folder
/// caCertData: test-ca-cert-data
/// storagePolicyName: test-storage-policy-name
/// dataplaneV2:
/// dataplaneV2Enabled: true
/// windowsDataplaneV2Enabled: true
/// advancedNetworking: true
/// vmTrackingEnabled: true
/// enableControlPlaneV2: true
/// enableAdvancedCluster: true
/// upgradePolicy:
/// controlPlaneOnly: true
/// authorization:
/// adminUsers:
/// - username: testuser@gmail.com
/// antiAffinityGroups:
/// aagConfigDisabled: true
/// autoRepairConfig:
/// enabled: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// VmwareCluster can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/vmwareClusters/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, VmwareCluster can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gkeonprem/vMwareCluster:VMwareCluster default projects/{{project}}/locations/{{location}}/vmwareClusters/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gkeonprem/vMwareCluster:VMwareCluster default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gkeonprem/vMwareCluster:VMwareCluster default {{location}}/{{name}}
/// ```
class VMwareCluster extends CustomResource {
  /// The admin cluster this VMware User Cluster belongs to.
  /// This is the full resource name of the admin cluster's hub membership.
  /// In the future, references to other resource types might be allowed if
  /// admin clusters are modeled as their own resources.
  late final Output<String> adminClusterMembership;

  /// Annotations on the VMware User Cluster.
  /// This field has the same restrictions as Kubernetes annotations.
  /// The total size of all keys and values combined is limited to 256k.
  /// Key can have 2 segments: prefix (optional) and name (required),
  /// separated by a slash (/).
  /// Prefix must be a DNS subdomain.
  /// Name must be 63 characters or less, begin and end with alphanumerics,
  /// with dashes (-), underscores (_), dots (.), and alphanumerics between.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveAnnotations`" pulumi-lang-dotnet="`EffectiveAnnotations`" pulumi-lang-go="`effectiveAnnotations`" pulumi-lang-python="`effective_annotations`" pulumi-lang-yaml="`effectiveAnnotations`" pulumi-lang-java="`effectiveAnnotations`">`effective_annotations`</span> for all of the annotations present on the resource.
  late final Output<Map<String, String>?> annotations;

  /// AAGConfig specifies whether to spread VMware User Cluster nodes across at
  /// least three physical hosts in the datacenter.
  /// Structure is documented below.
  late final Output<VMwareClusterAntiAffinityGroups> antiAffinityGroups;

  /// RBAC policy that will be applied and managed by GKE On-Prem.
  /// Structure is documented below.
  late final Output<VMwareClusterAuthorization?> authorization;

  /// Configuration for auto repairing.
  /// Structure is documented below.
  late final Output<VMwareClusterAutoRepairConfig> autoRepairConfig;

  /// VMware User Cluster control plane nodes must have either 1 or 3 replicas.
  /// Structure is documented below.
  late final Output<VMwareClusterControlPlaneNode> controlPlaneNode;

  /// The time at which VMware User Cluster was created.
  late final Output<String> createTime;

  /// VmwareDataplaneV2Config specifies configuration for Dataplane V2.
  /// Structure is documented below.
  late final Output<VMwareClusterDataplaneV2> dataplaneV2;

  /// The time at which VMware User Cluster was deleted.
  late final Output<String> deleteTime;

  /// A human readable description of this VMware User Cluster.
  late final Output<String?> description;

  /// Disable bundled ingress.
  late final Output<bool?> disableBundledIngress;
  late final Output<Map<String, String>> effectiveAnnotations;

  /// Enable advanced cluster. Default to false.
  late final Output<bool?> enableAdvancedCluster;

  /// Enable control plane V2. Default to false.
  late final Output<bool?> enableControlPlaneV2;

  /// The DNS name of VMware User Cluster's API server.
  late final Output<String> endpoint;

  /// This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the
  /// client has an up-to-date value before proceeding.
  /// Allows clients to perform consistent read-modify-writes
  /// through optimistic concurrency control.
  late final Output<String> etag;

  /// Fleet configuration for the cluster.
  /// Structure is documented below.
  late final Output<List<VMwareClusterFleet>> fleets;

  /// Load Balancer configuration.
  /// Structure is documented below.
  late final Output<VMwareClusterLoadBalancer?> loadBalancer;

  /// The object name of the VMware OnPremUserCluster custom resource on the
  /// associated admin cluster. This field is used to support conflicting
  /// names when enrolling existing clusters to the API. When used as a part of
  /// cluster enrollment, this field will differ from the ID in the resource
  /// name. For new clusters, this field will match the user provided cluster ID
  /// and be visible in the last component of the resource name. It is not
  /// modifiable.
  /// All users should use this name to access their cluster using gkectl or
  /// kubectl and should expect to see the local name when viewing admin
  /// cluster controller logs.
  late final Output<String> localName;

  /// The location of the resource.
  late final Output<String> location;

  /// The VMware cluster name.
  late final Output<String> name;

  /// The VMware User Cluster network configuration.
  /// Structure is documented below.
  late final Output<VMwareClusterNetworkConfig?> networkConfig;

  /// The Anthos clusters on the VMware version for your user cluster.
  late final Output<String> onPremVersion;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// If set, there are currently changes in flight to the VMware User Cluster.
  late final Output<bool> reconciling;

  /// (Output)
  /// The lifecycle state of the condition.
  late final Output<String> state;

  /// (Output)
  /// Specifies the detailed validation check status
  /// Structure is documented below.
  late final Output<List<VMwareClusterStatus>> statuses;

  /// Storage configuration.
  /// Structure is documented below.
  late final Output<VMwareClusterStorage> storage;

  /// The unique identifier of the VMware User Cluster.
  late final Output<String> uid;

  /// The time at which VMware User Cluster was last updated.
  late final Output<String> updateTime;

  /// Specifies upgrade policy for the cluster.
  /// Structure is documented below.
  late final Output<VMwareClusterUpgradePolicy?> upgradePolicy;

  /// ValidationCheck represents the result of the preflight check job.
  /// Structure is documented below.
  late final Output<List<VMwareClusterValidationCheck>> validationChecks;

  /// VmwareVCenterConfig specifies vCenter config for the user cluster.
  /// Inherited from the admin cluster.
  /// Structure is documented below.
  late final Output<VMwareClusterVcenter> vcenter;

  /// Enable VM tracking.
  late final Output<bool> vmTrackingEnabled;

  VMwareCluster(
    String name, {
    VMwareClusterArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:gkeonprem/vMwareCluster:VMwareCluster',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.adminClusterMembership = Output.createUnknown<String>();
    this.annotations = Output.createUnknown<Map<String, String>?>();
    this.antiAffinityGroups =
        Output.createUnknown<VMwareClusterAntiAffinityGroups>();
    this.authorization = Output.createUnknown<VMwareClusterAuthorization?>();
    this.autoRepairConfig =
        Output.createUnknown<VMwareClusterAutoRepairConfig>();
    this.controlPlaneNode =
        Output.createUnknown<VMwareClusterControlPlaneNode>();
    this.createTime = Output.createUnknown<String>();
    this.dataplaneV2 = Output.createUnknown<VMwareClusterDataplaneV2>();
    this.deleteTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.disableBundledIngress = Output.createUnknown<bool?>();
    this.effectiveAnnotations = Output.createUnknown<Map<String, String>>();
    this.enableAdvancedCluster = Output.createUnknown<bool?>();
    this.enableControlPlaneV2 = Output.createUnknown<bool?>();
    this.endpoint = Output.createUnknown<String>();
    this.etag = Output.createUnknown<String>();
    this.fleets = Output.createUnknown<List<VMwareClusterFleet>>();
    this.loadBalancer = Output.createUnknown<VMwareClusterLoadBalancer?>();
    this.localName = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.networkConfig = Output.createUnknown<VMwareClusterNetworkConfig?>();
    this.onPremVersion = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.reconciling = Output.createUnknown<bool>();
    this.state = Output.createUnknown<String>();
    this.statuses = Output.createUnknown<List<VMwareClusterStatus>>();
    this.storage = Output.createUnknown<VMwareClusterStorage>();
    this.uid = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
    this.upgradePolicy = Output.createUnknown<VMwareClusterUpgradePolicy?>();
    this.validationChecks =
        Output.createUnknown<List<VMwareClusterValidationCheck>>();
    this.vcenter = Output.createUnknown<VMwareClusterVcenter>();
    this.vmTrackingEnabled = Output.createUnknown<bool>();
  }
}
