import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_admin_cluster_addon_node.dart';
import 'vmware_admin_cluster_anti_affinity_groups.dart';
import 'vmware_admin_cluster_args.dart';
import 'vmware_admin_cluster_authorization.dart';
import 'vmware_admin_cluster_auto_repair_config.dart';
import 'vmware_admin_cluster_control_plane_node.dart';
import 'vmware_admin_cluster_fleet.dart';
import 'vmware_admin_cluster_load_balancer.dart';
import 'vmware_admin_cluster_network_config.dart';
import 'vmware_admin_cluster_platform_config.dart';
import 'vmware_admin_cluster_private_registry_config.dart';
import 'vmware_admin_cluster_proxy.dart';
import 'vmware_admin_cluster_status.dart';
import 'vmware_admin_cluster_vcenter.dart';

/// A Google VMware Admin Cluster.
///
///
/// To get more information about VmwareAdminCluster, see:
///
/// * [API documentation](https://cloud.google.com/kubernetes-engine/distributed-cloud/reference/on-prem-api/rest/v1/projects.locations.vmwareAdminClusters)
///
/// ## Example Usage
///
/// ### Gkeonprem Vmware Admin Cluster Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin_cluster_basic = new gcp.gkeonprem.VmwareAdminCluster("admin-cluster-basic", {
///     name: "basic",
///     location: "us-west1",
///     description: "test admin cluster",
///     bootstrapClusterMembership: "projects/870316890899/locations/global/memberships/gkeonprem-terraform-test",
///     onPremVersion: "1.31.0-gke.35",
///     imageType: "ubuntu_containerd",
///     vcenter: {
///         resourcePool: "test resource pool",
///         datastore: "test data store",
///         datacenter: "test data center",
///         cluster: "test cluster",
///         folder: "test folder",
///         caCertData: "test ca cert data",
///         address: "10.0.0.1",
///         dataDisk: "test data disk",
///     },
///     networkConfig: {
///         serviceAddressCidrBlocks: ["10.96.0.0/12"],
///         podAddressCidrBlocks: ["192.168.0.0/16"],
///         dhcpIpConfig: {
///             enabled: true,
///         },
///     },
///     controlPlaneNode: {
///         cpus: 4,
///         memory: 8192,
///     },
///     loadBalancer: {
///         vipConfig: {
///             controlPlaneVip: "10.251.133.5",
///             addonsVip: "10.251.135.19",
///         },
///         f5Config: {
///             address: "10.251.135.22",
///             partition: "test-parition",
///             snatPool: "test-snat-pool",
///         },
///     },
///     privateRegistryConfig: {
///         address: "test-address",
///         caCert: "test-ca-cert",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin_cluster_basic = gcp.gkeonprem.VmwareAdminCluster("admin-cluster-basic",
///     name="basic",
///     location="us-west1",
///     description="test admin cluster",
///     bootstrap_cluster_membership="projects/870316890899/locations/global/memberships/gkeonprem-terraform-test",
///     on_prem_version="1.31.0-gke.35",
///     image_type="ubuntu_containerd",
///     vcenter={
///         "resource_pool": "test resource pool",
///         "datastore": "test data store",
///         "datacenter": "test data center",
///         "cluster": "test cluster",
///         "folder": "test folder",
///         "ca_cert_data": "test ca cert data",
///         "address": "10.0.0.1",
///         "data_disk": "test data disk",
///     },
///     network_config={
///         "service_address_cidr_blocks": ["10.96.0.0/12"],
///         "pod_address_cidr_blocks": ["192.168.0.0/16"],
///         "dhcp_ip_config": {
///             "enabled": True,
///         },
///     },
///     control_plane_node={
///         "cpus": 4,
///         "memory": 8192,
///     },
///     load_balancer={
///         "vip_config": {
///             "control_plane_vip": "10.251.133.5",
///             "addons_vip": "10.251.135.19",
///         },
///         "f5_config": {
///             "address": "10.251.135.22",
///             "partition": "test-parition",
///             "snat_pool": "test-snat-pool",
///         },
///     },
///     private_registry_config={
///         "address": "test-address",
///         "ca_cert": "test-ca-cert",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var admin_cluster_basic = new Gcp.GkeOnPrem.VmwareAdminCluster("admin-cluster-basic", new()
///     {
///         Name = "basic",
///         Location = "us-west1",
///         Description = "test admin cluster",
///         BootstrapClusterMembership = "projects/870316890899/locations/global/memberships/gkeonprem-terraform-test",
///         OnPremVersion = "1.31.0-gke.35",
///         ImageType = "ubuntu_containerd",
///         Vcenter = new Gcp.GkeOnPrem.Inputs.VmwareAdminClusterVcenterArgs
///         {
///             ResourcePool = "test resource pool",
///             Datastore = "test data store",
///             Datacenter = "test data center",
///             Cluster = "test cluster",
///             Folder = "test folder",
///             CaCertData = "test ca cert data",
///             Address = "10.0.0.1",
///             DataDisk = "test data disk",
///         },
///         NetworkConfig = new Gcp.GkeOnPrem.Inputs.VmwareAdminClusterNetworkConfigArgs
///         {
///             ServiceAddressCidrBlocks = new[]
///             {
///                 "10.96.0.0/12",
///             },
///             PodAddressCidrBlocks = new[]
///             {
///                 "192.168.0.0/16",
///             },
///             DhcpIpConfig = new Gcp.GkeOnPrem.Inputs.VmwareAdminClusterNetworkConfigDhcpIpConfigArgs
///             {
///                 Enabled = true,
///             },
///         },
///         ControlPlaneNode = new Gcp.GkeOnPrem.Inputs.VmwareAdminClusterControlPlaneNodeArgs
///         {
///             Cpus = 4,
///             Memory = 8192,
///         },
///         LoadBalancer = new Gcp.GkeOnPrem.Inputs.VmwareAdminClusterLoadBalancerArgs
///         {
///             VipConfig = new Gcp.GkeOnPrem.Inputs.VmwareAdminClusterLoadBalancerVipConfigArgs
///             {
///                 ControlPlaneVip = "10.251.133.5",
///                 AddonsVip = "10.251.135.19",
///             },
///             F5Config = new Gcp.GkeOnPrem.Inputs.VmwareAdminClusterLoadBalancerF5ConfigArgs
///             {
///                 Address = "10.251.135.22",
///                 Partition = "test-parition",
///                 SnatPool = "test-snat-pool",
///             },
///         },
///         PrivateRegistryConfig = new Gcp.GkeOnPrem.Inputs.VmwareAdminClusterPrivateRegistryConfigArgs
///         {
///             Address = "test-address",
///             CaCert = "test-ca-cert",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkeonprem"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := gkeonprem.NewVmwareAdminCluster(ctx, "admin-cluster-basic", &gkeonprem.VmwareAdminClusterArgs{
/// 			Name:                       pulumi.String("basic"),
/// 			Location:                   pulumi.String("us-west1"),
/// 			Description:                pulumi.String("test admin cluster"),
/// 			BootstrapClusterMembership: pulumi.String("projects/870316890899/locations/global/memberships/gkeonprem-terraform-test"),
/// 			OnPremVersion:              pulumi.String("1.31.0-gke.35"),
/// 			ImageType:                  pulumi.String("ubuntu_containerd"),
/// 			Vcenter: &gkeonprem.VmwareAdminClusterVcenterArgs{
/// 				ResourcePool: pulumi.String("test resource pool"),
/// 				Datastore:    pulumi.String("test data store"),
/// 				Datacenter:   pulumi.String("test data center"),
/// 				Cluster:      pulumi.String("test cluster"),
/// 				Folder:       pulumi.String("test folder"),
/// 				CaCertData:   pulumi.String("test ca cert data"),
/// 				Address:      pulumi.String("10.0.0.1"),
/// 				DataDisk:     pulumi.String("test data disk"),
/// 			},
/// 			NetworkConfig: &gkeonprem.VmwareAdminClusterNetworkConfigArgs{
/// 				ServiceAddressCidrBlocks: pulumi.StringArray{
/// 					pulumi.String("10.96.0.0/12"),
/// 				},
/// 				PodAddressCidrBlocks: pulumi.StringArray{
/// 					pulumi.String("192.168.0.0/16"),
/// 				},
/// 				DhcpIpConfig: &gkeonprem.VmwareAdminClusterNetworkConfigDhcpIpConfigArgs{
/// 					Enabled: pulumi.Bool(true),
/// 				},
/// 			},
/// 			ControlPlaneNode: &gkeonprem.VmwareAdminClusterControlPlaneNodeArgs{
/// 				Cpus:   pulumi.Int(4),
/// 				Memory: pulumi.Int(8192),
/// 			},
/// 			LoadBalancer: &gkeonprem.VmwareAdminClusterLoadBalancerArgs{
/// 				VipConfig: &gkeonprem.VmwareAdminClusterLoadBalancerVipConfigArgs{
/// 					ControlPlaneVip: pulumi.String("10.251.133.5"),
/// 					AddonsVip:       pulumi.String("10.251.135.19"),
/// 				},
/// 				F5Config: &gkeonprem.VmwareAdminClusterLoadBalancerF5ConfigArgs{
/// 					Address:   pulumi.String("10.251.135.22"),
/// 					Partition: pulumi.String("test-parition"),
/// 					SnatPool:  pulumi.String("test-snat-pool"),
/// 				},
/// 			},
/// 			PrivateRegistryConfig: &gkeonprem.VmwareAdminClusterPrivateRegistryConfigArgs{
/// 				Address: pulumi.String("test-address"),
/// 				CaCert:  pulumi.String("test-ca-cert"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.gkeonprem.VmwareAdminCluster;
/// import com.pulumi.gcp.gkeonprem.VmwareAdminClusterArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VmwareAdminClusterVcenterArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VmwareAdminClusterNetworkConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VmwareAdminClusterNetworkConfigDhcpIpConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VmwareAdminClusterControlPlaneNodeArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VmwareAdminClusterLoadBalancerArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VmwareAdminClusterLoadBalancerVipConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VmwareAdminClusterLoadBalancerF5ConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VmwareAdminClusterPrivateRegistryConfigArgs;
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
///         var admin_cluster_basic = new VmwareAdminCluster("admin-cluster-basic", VmwareAdminClusterArgs.builder()
///             .name("basic")
///             .location("us-west1")
///             .description("test admin cluster")
///             .bootstrapClusterMembership("projects/870316890899/locations/global/memberships/gkeonprem-terraform-test")
///             .onPremVersion("1.31.0-gke.35")
///             .imageType("ubuntu_containerd")
///             .vcenter(VmwareAdminClusterVcenterArgs.builder()
///                 .resourcePool("test resource pool")
///                 .datastore("test data store")
///                 .datacenter("test data center")
///                 .cluster("test cluster")
///                 .folder("test folder")
///                 .caCertData("test ca cert data")
///                 .address("10.0.0.1")
///                 .dataDisk("test data disk")
///                 .build())
///             .networkConfig(VmwareAdminClusterNetworkConfigArgs.builder()
///                 .serviceAddressCidrBlocks("10.96.0.0/12")
///                 .podAddressCidrBlocks("192.168.0.0/16")
///                 .dhcpIpConfig(VmwareAdminClusterNetworkConfigDhcpIpConfigArgs.builder()
///                     .enabled(true)
///                     .build())
///                 .build())
///             .controlPlaneNode(VmwareAdminClusterControlPlaneNodeArgs.builder()
///                 .cpus(4)
///                 .memory(8192)
///                 .build())
///             .loadBalancer(VmwareAdminClusterLoadBalancerArgs.builder()
///                 .vipConfig(VmwareAdminClusterLoadBalancerVipConfigArgs.builder()
///                     .controlPlaneVip("10.251.133.5")
///                     .addonsVip("10.251.135.19")
///                     .build())
///                 .f5Config(VmwareAdminClusterLoadBalancerF5ConfigArgs.builder()
///                     .address("10.251.135.22")
///                     .partition("test-parition")
///                     .snatPool("test-snat-pool")
///                     .build())
///                 .build())
///             .privateRegistryConfig(VmwareAdminClusterPrivateRegistryConfigArgs.builder()
///                 .address("test-address")
///                 .caCert("test-ca-cert")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   admin-cluster-basic:
///     type: gcp:gkeonprem:VmwareAdminCluster
///     properties:
///       name: basic
///       location: us-west1
///       description: test admin cluster
///       bootstrapClusterMembership: projects/870316890899/locations/global/memberships/gkeonprem-terraform-test
///       onPremVersion: 1.31.0-gke.35
///       imageType: ubuntu_containerd
///       vcenter:
///         resourcePool: test resource pool
///         datastore: test data store
///         datacenter: test data center
///         cluster: test cluster
///         folder: test folder
///         caCertData: test ca cert data
///         address: 10.0.0.1
///         dataDisk: test data disk
///       networkConfig:
///         serviceAddressCidrBlocks:
///           - 10.96.0.0/12
///         podAddressCidrBlocks:
///           - 192.168.0.0/16
///         dhcpIpConfig:
///           enabled: true
///       controlPlaneNode:
///         cpus: 4
///         memory: 8192
///       loadBalancer:
///         vipConfig:
///           controlPlaneVip: 10.251.133.5
///           addonsVip: 10.251.135.19
///         f5Config:
///           address: 10.251.135.22
///           partition: test-parition
///           snatPool: test-snat-pool
///       privateRegistryConfig:
///         address: test-address
///         caCert: test-ca-cert
/// ```
///
/// ### Gkeonprem Vmware Admin Cluster Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin_cluster_full = new gcp.gkeonprem.VmwareAdminCluster("admin-cluster-full", {
///     name: "full",
///     location: "us-west1",
///     description: "test admin cluster",
///     bootstrapClusterMembership: "projects/870316890899/locations/global/memberships/gkeonprem-terraform-test",
///     onPremVersion: "1.31.0-gke.35",
///     imageType: "ubuntu_containerd",
///     annotations: {},
///     vcenter: {
///         resourcePool: "test resource pool",
///         datastore: "test data store",
///         datacenter: "test data center",
///         cluster: "test cluster",
///         folder: "test folder",
///         caCertData: "test ca cert data",
///         address: "10.0.0.1",
///         dataDisk: "test data disk",
///         storagePolicyName: "storage_policy_name",
///     },
///     networkConfig: {
///         serviceAddressCidrBlocks: ["10.96.0.0/12"],
///         podAddressCidrBlocks: ["192.168.0.0/16"],
///         haControlPlaneConfig: {
///             controlPlaneIpBlock: {
///                 gateway: "10.0.0.3",
///                 ips: [{
///                     hostname: "hostname",
///                     ip: "10.0.0.4",
///                 }],
///                 netmask: "10.0.0.3/32",
///             },
///         },
///         hostConfig: {
///             dnsServers: ["10.254.41.1"],
///             ntpServers: ["216.239.35.8"],
///             dnsSearchDomains: ["test-domain"],
///         },
///         staticIpConfig: {
///             ipBlocks: [{
///                 gateway: "10.0.0.1",
///                 ips: [{
///                     hostname: "hostname",
///                     ip: "10.0.0.2",
///                 }],
///                 netmask: "10.0.0.3/32",
///             }],
///         },
///         vcenterNetwork: "test-vcenter-network",
///     },
///     controlPlaneNode: {
///         cpus: 4,
///         memory: 8192,
///         replicas: 3,
///     },
///     loadBalancer: {
///         vipConfig: {
///             controlPlaneVip: "10.251.133.5",
///             addonsVip: "10.251.135.19",
///         },
///         manualLbConfig: {
///             addonsNodePort: 30005,
///             controlPlaneNodePort: 30006,
///             ingressHttpNodePort: 30007,
///             ingressHttpsNodePort: 30008,
///             konnectivityServerNodePort: 30009,
///         },
///     },
///     addonNode: {
///         autoResizeConfig: {
///             enabled: true,
///         },
///     },
///     antiAffinityGroups: {
///         aagConfigDisabled: true,
///     },
///     authorization: {
///         viewerUsers: [{
///             username: "user1@gmail.com",
///         }],
///     },
///     autoRepairConfig: {
///         enabled: true,
///     },
///     platformConfig: {
///         requiredPlatformVersion: "1.31.0",
///     },
///     privateRegistryConfig: {
///         address: "test-address",
///         caCert: "test-ca-cert",
///     },
///     proxy: {
///         url: "http://my-proxy.example.local:80",
///         noProxy: "10.151.222.0/24,my-host.example.local,10.151.2.1",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin_cluster_full = gcp.gkeonprem.VmwareAdminCluster("admin-cluster-full",
///     name="full",
///     location="us-west1",
///     description="test admin cluster",
///     bootstrap_cluster_membership="projects/870316890899/locations/global/memberships/gkeonprem-terraform-test",
///     on_prem_version="1.31.0-gke.35",
///     image_type="ubuntu_containerd",
///     annotations={},
///     vcenter={
///         "resource_pool": "test resource pool",
///         "datastore": "test data store",
///         "datacenter": "test data center",
///         "cluster": "test cluster",
///         "folder": "test folder",
///         "ca_cert_data": "test ca cert data",
///         "address": "10.0.0.1",
///         "data_disk": "test data disk",
///         "storage_policy_name": "storage_policy_name",
///     },
///     network_config={
///         "service_address_cidr_blocks": ["10.96.0.0/12"],
///         "pod_address_cidr_blocks": ["192.168.0.0/16"],
///         "ha_control_plane_config": {
///             "control_plane_ip_block": {
///                 "gateway": "10.0.0.3",
///                 "ips": [{
///                     "hostname": "hostname",
///                     "ip": "10.0.0.4",
///                 }],
///                 "netmask": "10.0.0.3/32",
///             },
///         },
///         "host_config": {
///             "dns_servers": ["10.254.41.1"],
///             "ntp_servers": ["216.239.35.8"],
///             "dns_search_domains": ["test-domain"],
///         },
///         "static_ip_config": {
///             "ip_blocks": [{
///                 "gateway": "10.0.0.1",
///                 "ips": [{
///                     "hostname": "hostname",
///                     "ip": "10.0.0.2",
///                 }],
///                 "netmask": "10.0.0.3/32",
///             }],
///         },
///         "vcenter_network": "test-vcenter-network",
///     },
///     control_plane_node={
///         "cpus": 4,
///         "memory": 8192,
///         "replicas": 3,
///     },
///     load_balancer={
///         "vip_config": {
///             "control_plane_vip": "10.251.133.5",
///             "addons_vip": "10.251.135.19",
///         },
///         "manual_lb_config": {
///             "addons_node_port": 30005,
///             "control_plane_node_port": 30006,
///             "ingress_http_node_port": 30007,
///             "ingress_https_node_port": 30008,
///             "konnectivity_server_node_port": 30009,
///         },
///     },
///     addon_node={
///         "auto_resize_config": {
///             "enabled": True,
///         },
///     },
///     anti_affinity_groups={
///         "aag_config_disabled": True,
///     },
///     authorization={
///         "viewer_users": [{
///             "username": "user1@gmail.com",
///         }],
///     },
///     auto_repair_config={
///         "enabled": True,
///     },
///     platform_config={
///         "required_platform_version": "1.31.0",
///     },
///     private_registry_config={
///         "address": "test-address",
///         "ca_cert": "test-ca-cert",
///     },
///     proxy={
///         "url": "http://my-proxy.example.local:80",
///         "no_proxy": "10.151.222.0/24,my-host.example.local,10.151.2.1",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var admin_cluster_full = new Gcp.GkeOnPrem.VmwareAdminCluster("admin-cluster-full", new()
///     {
///         Name = "full",
///         Location = "us-west1",
///         Description = "test admin cluster",
///         BootstrapClusterMembership = "projects/870316890899/locations/global/memberships/gkeonprem-terraform-test",
///         OnPremVersion = "1.31.0-gke.35",
///         ImageType = "ubuntu_containerd",
///         Annotations = null,
///         Vcenter = new Gcp.GkeOnPrem.Inputs.VmwareAdminClusterVcenterArgs
///         {
///             ResourcePool = "test resource pool",
///             Datastore = "test data store",
///             Datacenter = "test data center",
///             Cluster = "test cluster",
///             Folder = "test folder",
///             CaCertData = "test ca cert data",
///             Address = "10.0.0.1",
///             DataDisk = "test data disk",
///             StoragePolicyName = "storage_policy_name",
///         },
///         NetworkConfig = new Gcp.GkeOnPrem.Inputs.VmwareAdminClusterNetworkConfigArgs
///         {
///             ServiceAddressCidrBlocks = new[]
///             {
///                 "10.96.0.0/12",
///             },
///             PodAddressCidrBlocks = new[]
///             {
///                 "192.168.0.0/16",
///             },
///             HaControlPlaneConfig = new Gcp.GkeOnPrem.Inputs.VmwareAdminClusterNetworkConfigHaControlPlaneConfigArgs
///             {
///                 ControlPlaneIpBlock = new Gcp.GkeOnPrem.Inputs.VmwareAdminClusterNetworkConfigHaControlPlaneConfigControlPlaneIpBlockArgs
///                 {
///                     Gateway = "10.0.0.3",
///                     Ips = new[]
///                     {
///                         new Gcp.GkeOnPrem.Inputs.VmwareAdminClusterNetworkConfigHaControlPlaneConfigControlPlaneIpBlockIpArgs
///                         {
///                             Hostname = "hostname",
///                             Ip = "10.0.0.4",
///                         },
///                     },
///                     Netmask = "10.0.0.3/32",
///                 },
///             },
///             HostConfig = new Gcp.GkeOnPrem.Inputs.VmwareAdminClusterNetworkConfigHostConfigArgs
///             {
///                 DnsServers = new[]
///                 {
///                     "10.254.41.1",
///                 },
///                 NtpServers = new[]
///                 {
///                     "216.239.35.8",
///                 },
///                 DnsSearchDomains = new[]
///                 {
///                     "test-domain",
///                 },
///             },
///             StaticIpConfig = new Gcp.GkeOnPrem.Inputs.VmwareAdminClusterNetworkConfigStaticIpConfigArgs
///             {
///                 IpBlocks = new[]
///                 {
///                     new Gcp.GkeOnPrem.Inputs.VmwareAdminClusterNetworkConfigStaticIpConfigIpBlockArgs
///                     {
///                         Gateway = "10.0.0.1",
///                         Ips = new[]
///                         {
///                             new Gcp.GkeOnPrem.Inputs.VmwareAdminClusterNetworkConfigStaticIpConfigIpBlockIpArgs
///                             {
///                                 Hostname = "hostname",
///                                 Ip = "10.0.0.2",
///                             },
///                         },
///                         Netmask = "10.0.0.3/32",
///                     },
///                 },
///             },
///             VcenterNetwork = "test-vcenter-network",
///         },
///         ControlPlaneNode = new Gcp.GkeOnPrem.Inputs.VmwareAdminClusterControlPlaneNodeArgs
///         {
///             Cpus = 4,
///             Memory = 8192,
///             Replicas = 3,
///         },
///         LoadBalancer = new Gcp.GkeOnPrem.Inputs.VmwareAdminClusterLoadBalancerArgs
///         {
///             VipConfig = new Gcp.GkeOnPrem.Inputs.VmwareAdminClusterLoadBalancerVipConfigArgs
///             {
///                 ControlPlaneVip = "10.251.133.5",
///                 AddonsVip = "10.251.135.19",
///             },
///             ManualLbConfig = new Gcp.GkeOnPrem.Inputs.VmwareAdminClusterLoadBalancerManualLbConfigArgs
///             {
///                 AddonsNodePort = 30005,
///                 ControlPlaneNodePort = 30006,
///                 IngressHttpNodePort = 30007,
///                 IngressHttpsNodePort = 30008,
///                 KonnectivityServerNodePort = 30009,
///             },
///         },
///         AddonNode = new Gcp.GkeOnPrem.Inputs.VmwareAdminClusterAddonNodeArgs
///         {
///             AutoResizeConfig = new Gcp.GkeOnPrem.Inputs.VmwareAdminClusterAddonNodeAutoResizeConfigArgs
///             {
///                 Enabled = true,
///             },
///         },
///         AntiAffinityGroups = new Gcp.GkeOnPrem.Inputs.VmwareAdminClusterAntiAffinityGroupsArgs
///         {
///             AagConfigDisabled = true,
///         },
///         Authorization = new Gcp.GkeOnPrem.Inputs.VmwareAdminClusterAuthorizationArgs
///         {
///             ViewerUsers = new[]
///             {
///                 new Gcp.GkeOnPrem.Inputs.VmwareAdminClusterAuthorizationViewerUserArgs
///                 {
///                     Username = "user1@gmail.com",
///                 },
///             },
///         },
///         AutoRepairConfig = new Gcp.GkeOnPrem.Inputs.VmwareAdminClusterAutoRepairConfigArgs
///         {
///             Enabled = true,
///         },
///         PlatformConfig = new Gcp.GkeOnPrem.Inputs.VmwareAdminClusterPlatformConfigArgs
///         {
///             RequiredPlatformVersion = "1.31.0",
///         },
///         PrivateRegistryConfig = new Gcp.GkeOnPrem.Inputs.VmwareAdminClusterPrivateRegistryConfigArgs
///         {
///             Address = "test-address",
///             CaCert = "test-ca-cert",
///         },
///         Proxy = new Gcp.GkeOnPrem.Inputs.VmwareAdminClusterProxyArgs
///         {
///             Url = "http://my-proxy.example.local:80",
///             NoProxy = "10.151.222.0/24,my-host.example.local,10.151.2.1",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkeonprem"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := gkeonprem.NewVmwareAdminCluster(ctx, "admin-cluster-full", &gkeonprem.VmwareAdminClusterArgs{
/// 			Name:                       pulumi.String("full"),
/// 			Location:                   pulumi.String("us-west1"),
/// 			Description:                pulumi.String("test admin cluster"),
/// 			BootstrapClusterMembership: pulumi.String("projects/870316890899/locations/global/memberships/gkeonprem-terraform-test"),
/// 			OnPremVersion:              pulumi.String("1.31.0-gke.35"),
/// 			ImageType:                  pulumi.String("ubuntu_containerd"),
/// 			Annotations:                pulumi.StringMap{},
/// 			Vcenter: &gkeonprem.VmwareAdminClusterVcenterArgs{
/// 				ResourcePool:      pulumi.String("test resource pool"),
/// 				Datastore:         pulumi.String("test data store"),
/// 				Datacenter:        pulumi.String("test data center"),
/// 				Cluster:           pulumi.String("test cluster"),
/// 				Folder:            pulumi.String("test folder"),
/// 				CaCertData:        pulumi.String("test ca cert data"),
/// 				Address:           pulumi.String("10.0.0.1"),
/// 				DataDisk:          pulumi.String("test data disk"),
/// 				StoragePolicyName: pulumi.String("storage_policy_name"),
/// 			},
/// 			NetworkConfig: &gkeonprem.VmwareAdminClusterNetworkConfigArgs{
/// 				ServiceAddressCidrBlocks: pulumi.StringArray{
/// 					pulumi.String("10.96.0.0/12"),
/// 				},
/// 				PodAddressCidrBlocks: pulumi.StringArray{
/// 					pulumi.String("192.168.0.0/16"),
/// 				},
/// 				HaControlPlaneConfig: &gkeonprem.VmwareAdminClusterNetworkConfigHaControlPlaneConfigArgs{
/// 					ControlPlaneIpBlock: &gkeonprem.VmwareAdminClusterNetworkConfigHaControlPlaneConfigControlPlaneIpBlockArgs{
/// 						Gateway: pulumi.String("10.0.0.3"),
/// 						Ips: gkeonprem.VmwareAdminClusterNetworkConfigHaControlPlaneConfigControlPlaneIpBlockIpArray{
/// 							&gkeonprem.VmwareAdminClusterNetworkConfigHaControlPlaneConfigControlPlaneIpBlockIpArgs{
/// 								Hostname: pulumi.String("hostname"),
/// 								Ip:       pulumi.String("10.0.0.4"),
/// 							},
/// 						},
/// 						Netmask: pulumi.String("10.0.0.3/32"),
/// 					},
/// 				},
/// 				HostConfig: &gkeonprem.VmwareAdminClusterNetworkConfigHostConfigArgs{
/// 					DnsServers: pulumi.StringArray{
/// 						pulumi.String("10.254.41.1"),
/// 					},
/// 					NtpServers: pulumi.StringArray{
/// 						pulumi.String("216.239.35.8"),
/// 					},
/// 					DnsSearchDomains: pulumi.StringArray{
/// 						pulumi.String("test-domain"),
/// 					},
/// 				},
/// 				StaticIpConfig: &gkeonprem.VmwareAdminClusterNetworkConfigStaticIpConfigArgs{
/// 					IpBlocks: gkeonprem.VmwareAdminClusterNetworkConfigStaticIpConfigIpBlockArray{
/// 						&gkeonprem.VmwareAdminClusterNetworkConfigStaticIpConfigIpBlockArgs{
/// 							Gateway: pulumi.String("10.0.0.1"),
/// 							Ips: gkeonprem.VmwareAdminClusterNetworkConfigStaticIpConfigIpBlockIpArray{
/// 								&gkeonprem.VmwareAdminClusterNetworkConfigStaticIpConfigIpBlockIpArgs{
/// 									Hostname: pulumi.String("hostname"),
/// 									Ip:       pulumi.String("10.0.0.2"),
/// 								},
/// 							},
/// 							Netmask: pulumi.String("10.0.0.3/32"),
/// 						},
/// 					},
/// 				},
/// 				VcenterNetwork: pulumi.String("test-vcenter-network"),
/// 			},
/// 			ControlPlaneNode: &gkeonprem.VmwareAdminClusterControlPlaneNodeArgs{
/// 				Cpus:     pulumi.Int(4),
/// 				Memory:   pulumi.Int(8192),
/// 				Replicas: pulumi.Int(3),
/// 			},
/// 			LoadBalancer: &gkeonprem.VmwareAdminClusterLoadBalancerArgs{
/// 				VipConfig: &gkeonprem.VmwareAdminClusterLoadBalancerVipConfigArgs{
/// 					ControlPlaneVip: pulumi.String("10.251.133.5"),
/// 					AddonsVip:       pulumi.String("10.251.135.19"),
/// 				},
/// 				ManualLbConfig: &gkeonprem.VmwareAdminClusterLoadBalancerManualLbConfigArgs{
/// 					AddonsNodePort:             pulumi.Int(30005),
/// 					ControlPlaneNodePort:       pulumi.Int(30006),
/// 					IngressHttpNodePort:        pulumi.Int(30007),
/// 					IngressHttpsNodePort:       pulumi.Int(30008),
/// 					KonnectivityServerNodePort: pulumi.Int(30009),
/// 				},
/// 			},
/// 			AddonNode: &gkeonprem.VmwareAdminClusterAddonNodeArgs{
/// 				AutoResizeConfig: &gkeonprem.VmwareAdminClusterAddonNodeAutoResizeConfigArgs{
/// 					Enabled: pulumi.Bool(true),
/// 				},
/// 			},
/// 			AntiAffinityGroups: &gkeonprem.VmwareAdminClusterAntiAffinityGroupsArgs{
/// 				AagConfigDisabled: pulumi.Bool(true),
/// 			},
/// 			Authorization: &gkeonprem.VmwareAdminClusterAuthorizationArgs{
/// 				ViewerUsers: gkeonprem.VmwareAdminClusterAuthorizationViewerUserArray{
/// 					&gkeonprem.VmwareAdminClusterAuthorizationViewerUserArgs{
/// 						Username: pulumi.String("user1@gmail.com"),
/// 					},
/// 				},
/// 			},
/// 			AutoRepairConfig: &gkeonprem.VmwareAdminClusterAutoRepairConfigArgs{
/// 				Enabled: pulumi.Bool(true),
/// 			},
/// 			PlatformConfig: &gkeonprem.VmwareAdminClusterPlatformConfigArgs{
/// 				RequiredPlatformVersion: pulumi.String("1.31.0"),
/// 			},
/// 			PrivateRegistryConfig: &gkeonprem.VmwareAdminClusterPrivateRegistryConfigArgs{
/// 				Address: pulumi.String("test-address"),
/// 				CaCert:  pulumi.String("test-ca-cert"),
/// 			},
/// 			Proxy: &gkeonprem.VmwareAdminClusterProxyArgs{
/// 				Url:     pulumi.String("http://my-proxy.example.local:80"),
/// 				NoProxy: pulumi.String("10.151.222.0/24,my-host.example.local,10.151.2.1"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.gkeonprem.VmwareAdminCluster;
/// import com.pulumi.gcp.gkeonprem.VmwareAdminClusterArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VmwareAdminClusterVcenterArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VmwareAdminClusterNetworkConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VmwareAdminClusterNetworkConfigHaControlPlaneConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VmwareAdminClusterNetworkConfigHaControlPlaneConfigControlPlaneIpBlockArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VmwareAdminClusterNetworkConfigHostConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VmwareAdminClusterNetworkConfigStaticIpConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VmwareAdminClusterControlPlaneNodeArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VmwareAdminClusterLoadBalancerArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VmwareAdminClusterLoadBalancerVipConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VmwareAdminClusterLoadBalancerManualLbConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VmwareAdminClusterAddonNodeArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VmwareAdminClusterAddonNodeAutoResizeConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VmwareAdminClusterAntiAffinityGroupsArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VmwareAdminClusterAuthorizationArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VmwareAdminClusterAutoRepairConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VmwareAdminClusterPlatformConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VmwareAdminClusterPrivateRegistryConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VmwareAdminClusterProxyArgs;
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
///         var admin_cluster_full = new VmwareAdminCluster("admin-cluster-full", VmwareAdminClusterArgs.builder()
///             .name("full")
///             .location("us-west1")
///             .description("test admin cluster")
///             .bootstrapClusterMembership("projects/870316890899/locations/global/memberships/gkeonprem-terraform-test")
///             .onPremVersion("1.31.0-gke.35")
///             .imageType("ubuntu_containerd")
///             .annotations(Map.ofEntries(
///             ))
///             .vcenter(VmwareAdminClusterVcenterArgs.builder()
///                 .resourcePool("test resource pool")
///                 .datastore("test data store")
///                 .datacenter("test data center")
///                 .cluster("test cluster")
///                 .folder("test folder")
///                 .caCertData("test ca cert data")
///                 .address("10.0.0.1")
///                 .dataDisk("test data disk")
///                 .storagePolicyName("storage_policy_name")
///                 .build())
///             .networkConfig(VmwareAdminClusterNetworkConfigArgs.builder()
///                 .serviceAddressCidrBlocks("10.96.0.0/12")
///                 .podAddressCidrBlocks("192.168.0.0/16")
///                 .haControlPlaneConfig(VmwareAdminClusterNetworkConfigHaControlPlaneConfigArgs.builder()
///                     .controlPlaneIpBlock(VmwareAdminClusterNetworkConfigHaControlPlaneConfigControlPlaneIpBlockArgs.builder()
///                         .gateway("10.0.0.3")
///                         .ips(VmwareAdminClusterNetworkConfigHaControlPlaneConfigControlPlaneIpBlockIpArgs.builder()
///                             .hostname("hostname")
///                             .ip("10.0.0.4")
///                             .build())
///                         .netmask("10.0.0.3/32")
///                         .build())
///                     .build())
///                 .hostConfig(VmwareAdminClusterNetworkConfigHostConfigArgs.builder()
///                     .dnsServers("10.254.41.1")
///                     .ntpServers("216.239.35.8")
///                     .dnsSearchDomains("test-domain")
///                     .build())
///                 .staticIpConfig(VmwareAdminClusterNetworkConfigStaticIpConfigArgs.builder()
///                     .ipBlocks(VmwareAdminClusterNetworkConfigStaticIpConfigIpBlockArgs.builder()
///                         .gateway("10.0.0.1")
///                         .ips(VmwareAdminClusterNetworkConfigStaticIpConfigIpBlockIpArgs.builder()
///                             .hostname("hostname")
///                             .ip("10.0.0.2")
///                             .build())
///                         .netmask("10.0.0.3/32")
///                         .build())
///                     .build())
///                 .vcenterNetwork("test-vcenter-network")
///                 .build())
///             .controlPlaneNode(VmwareAdminClusterControlPlaneNodeArgs.builder()
///                 .cpus(4)
///                 .memory(8192)
///                 .replicas(3)
///                 .build())
///             .loadBalancer(VmwareAdminClusterLoadBalancerArgs.builder()
///                 .vipConfig(VmwareAdminClusterLoadBalancerVipConfigArgs.builder()
///                     .controlPlaneVip("10.251.133.5")
///                     .addonsVip("10.251.135.19")
///                     .build())
///                 .manualLbConfig(VmwareAdminClusterLoadBalancerManualLbConfigArgs.builder()
///                     .addonsNodePort(30005)
///                     .controlPlaneNodePort(30006)
///                     .ingressHttpNodePort(30007)
///                     .ingressHttpsNodePort(30008)
///                     .konnectivityServerNodePort(30009)
///                     .build())
///                 .build())
///             .addonNode(VmwareAdminClusterAddonNodeArgs.builder()
///                 .autoResizeConfig(VmwareAdminClusterAddonNodeAutoResizeConfigArgs.builder()
///                     .enabled(true)
///                     .build())
///                 .build())
///             .antiAffinityGroups(VmwareAdminClusterAntiAffinityGroupsArgs.builder()
///                 .aagConfigDisabled(true)
///                 .build())
///             .authorization(VmwareAdminClusterAuthorizationArgs.builder()
///                 .viewerUsers(VmwareAdminClusterAuthorizationViewerUserArgs.builder()
///                     .username("user1@gmail.com")
///                     .build())
///                 .build())
///             .autoRepairConfig(VmwareAdminClusterAutoRepairConfigArgs.builder()
///                 .enabled(true)
///                 .build())
///             .platformConfig(VmwareAdminClusterPlatformConfigArgs.builder()
///                 .requiredPlatformVersion("1.31.0")
///                 .build())
///             .privateRegistryConfig(VmwareAdminClusterPrivateRegistryConfigArgs.builder()
///                 .address("test-address")
///                 .caCert("test-ca-cert")
///                 .build())
///             .proxy(VmwareAdminClusterProxyArgs.builder()
///                 .url("http://my-proxy.example.local:80")
///                 .noProxy("10.151.222.0/24,my-host.example.local,10.151.2.1")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   admin-cluster-full:
///     type: gcp:gkeonprem:VmwareAdminCluster
///     properties:
///       name: full
///       location: us-west1
///       description: test admin cluster
///       bootstrapClusterMembership: projects/870316890899/locations/global/memberships/gkeonprem-terraform-test
///       onPremVersion: 1.31.0-gke.35
///       imageType: ubuntu_containerd
///       annotations: {}
///       vcenter:
///         resourcePool: test resource pool
///         datastore: test data store
///         datacenter: test data center
///         cluster: test cluster
///         folder: test folder
///         caCertData: test ca cert data
///         address: 10.0.0.1
///         dataDisk: test data disk
///         storagePolicyName: storage_policy_name
///       networkConfig:
///         serviceAddressCidrBlocks:
///           - 10.96.0.0/12
///         podAddressCidrBlocks:
///           - 192.168.0.0/16
///         haControlPlaneConfig:
///           controlPlaneIpBlock:
///             gateway: 10.0.0.3
///             ips:
///               - hostname: hostname
///                 ip: 10.0.0.4
///             netmask: 10.0.0.3/32
///         hostConfig:
///           dnsServers:
///             - 10.254.41.1
///           ntpServers:
///             - 216.239.35.8
///           dnsSearchDomains:
///             - test-domain
///         staticIpConfig:
///           ipBlocks:
///             - gateway: 10.0.0.1
///               ips:
///                 - hostname: hostname
///                   ip: 10.0.0.2
///               netmask: 10.0.0.3/32
///         vcenterNetwork: test-vcenter-network
///       controlPlaneNode:
///         cpus: 4
///         memory: 8192
///         replicas: 3
///       loadBalancer:
///         vipConfig:
///           controlPlaneVip: 10.251.133.5
///           addonsVip: 10.251.135.19
///         manualLbConfig:
///           addonsNodePort: 30005
///           controlPlaneNodePort: 30006
///           ingressHttpNodePort: 30007
///           ingressHttpsNodePort: 30008
///           konnectivityServerNodePort: 30009
///       addonNode:
///         autoResizeConfig:
///           enabled: true
///       antiAffinityGroups:
///         aagConfigDisabled: true
///       authorization:
///         viewerUsers:
///           - username: user1@gmail.com
///       autoRepairConfig:
///         enabled: true
///       platformConfig:
///         requiredPlatformVersion: 1.31.0
///       privateRegistryConfig:
///         address: test-address
///         caCert: test-ca-cert
///       proxy:
///         url: http://my-proxy.example.local:80
///         noProxy: 10.151.222.0/24,my-host.example.local,10.151.2.1
/// ```
///
/// ### Gkeonprem Vmware Admin Cluster Metallb
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin_cluster_metallb = new gcp.gkeonprem.VmwareAdminCluster("admin-cluster-metallb", {
///     name: "metallb",
///     location: "us-west1",
///     description: "test admin cluster",
///     bootstrapClusterMembership: "projects/870316890899/locations/global/memberships/gkeonprem-terraform-test",
///     onPremVersion: "1.33.0-gke.35",
///     imageType: "ubuntu_containerd",
///     enableAdvancedCluster: true,
///     vcenter: {
///         resourcePool: "test resource pool",
///         datastore: "test data store",
///         datacenter: "test data center",
///         cluster: "test cluster",
///         folder: "test folder",
///         caCertData: "test ca cert data",
///         address: "10.0.0.1",
///         dataDisk: "test data disk",
///     },
///     networkConfig: {
///         serviceAddressCidrBlocks: ["10.96.0.0/12"],
///         podAddressCidrBlocks: ["192.168.0.0/16"],
///         dhcpIpConfig: {
///             enabled: true,
///         },
///     },
///     controlPlaneNode: {
///         cpus: 4,
///         memory: 8192,
///     },
///     loadBalancer: {
///         vipConfig: {
///             controlPlaneVip: "10.251.133.5",
///             addonsVip: "10.251.135.19",
///         },
///         metalLbConfig: {
///             enabled: true,
///         },
///     },
///     privateRegistryConfig: {
///         address: "test-address",
///         caCert: "test-ca-cert",
///     },
///     proxy: {
///         url: "http://my-proxy.example.local:80",
///         noProxy: "10.151.222.0/24,my-host.example.local,10.151.2.1",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin_cluster_metallb = gcp.gkeonprem.VmwareAdminCluster("admin-cluster-metallb",
///     name="metallb",
///     location="us-west1",
///     description="test admin cluster",
///     bootstrap_cluster_membership="projects/870316890899/locations/global/memberships/gkeonprem-terraform-test",
///     on_prem_version="1.33.0-gke.35",
///     image_type="ubuntu_containerd",
///     enable_advanced_cluster=True,
///     vcenter={
///         "resource_pool": "test resource pool",
///         "datastore": "test data store",
///         "datacenter": "test data center",
///         "cluster": "test cluster",
///         "folder": "test folder",
///         "ca_cert_data": "test ca cert data",
///         "address": "10.0.0.1",
///         "data_disk": "test data disk",
///     },
///     network_config={
///         "service_address_cidr_blocks": ["10.96.0.0/12"],
///         "pod_address_cidr_blocks": ["192.168.0.0/16"],
///         "dhcp_ip_config": {
///             "enabled": True,
///         },
///     },
///     control_plane_node={
///         "cpus": 4,
///         "memory": 8192,
///     },
///     load_balancer={
///         "vip_config": {
///             "control_plane_vip": "10.251.133.5",
///             "addons_vip": "10.251.135.19",
///         },
///         "metal_lb_config": {
///             "enabled": True,
///         },
///     },
///     private_registry_config={
///         "address": "test-address",
///         "ca_cert": "test-ca-cert",
///     },
///     proxy={
///         "url": "http://my-proxy.example.local:80",
///         "no_proxy": "10.151.222.0/24,my-host.example.local,10.151.2.1",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var admin_cluster_metallb = new Gcp.GkeOnPrem.VmwareAdminCluster("admin-cluster-metallb", new()
///     {
///         Name = "metallb",
///         Location = "us-west1",
///         Description = "test admin cluster",
///         BootstrapClusterMembership = "projects/870316890899/locations/global/memberships/gkeonprem-terraform-test",
///         OnPremVersion = "1.33.0-gke.35",
///         ImageType = "ubuntu_containerd",
///         EnableAdvancedCluster = true,
///         Vcenter = new Gcp.GkeOnPrem.Inputs.VmwareAdminClusterVcenterArgs
///         {
///             ResourcePool = "test resource pool",
///             Datastore = "test data store",
///             Datacenter = "test data center",
///             Cluster = "test cluster",
///             Folder = "test folder",
///             CaCertData = "test ca cert data",
///             Address = "10.0.0.1",
///             DataDisk = "test data disk",
///         },
///         NetworkConfig = new Gcp.GkeOnPrem.Inputs.VmwareAdminClusterNetworkConfigArgs
///         {
///             ServiceAddressCidrBlocks = new[]
///             {
///                 "10.96.0.0/12",
///             },
///             PodAddressCidrBlocks = new[]
///             {
///                 "192.168.0.0/16",
///             },
///             DhcpIpConfig = new Gcp.GkeOnPrem.Inputs.VmwareAdminClusterNetworkConfigDhcpIpConfigArgs
///             {
///                 Enabled = true,
///             },
///         },
///         ControlPlaneNode = new Gcp.GkeOnPrem.Inputs.VmwareAdminClusterControlPlaneNodeArgs
///         {
///             Cpus = 4,
///             Memory = 8192,
///         },
///         LoadBalancer = new Gcp.GkeOnPrem.Inputs.VmwareAdminClusterLoadBalancerArgs
///         {
///             VipConfig = new Gcp.GkeOnPrem.Inputs.VmwareAdminClusterLoadBalancerVipConfigArgs
///             {
///                 ControlPlaneVip = "10.251.133.5",
///                 AddonsVip = "10.251.135.19",
///             },
///             MetalLbConfig = new Gcp.GkeOnPrem.Inputs.VmwareAdminClusterLoadBalancerMetalLbConfigArgs
///             {
///                 Enabled = true,
///             },
///         },
///         PrivateRegistryConfig = new Gcp.GkeOnPrem.Inputs.VmwareAdminClusterPrivateRegistryConfigArgs
///         {
///             Address = "test-address",
///             CaCert = "test-ca-cert",
///         },
///         Proxy = new Gcp.GkeOnPrem.Inputs.VmwareAdminClusterProxyArgs
///         {
///             Url = "http://my-proxy.example.local:80",
///             NoProxy = "10.151.222.0/24,my-host.example.local,10.151.2.1",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkeonprem"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := gkeonprem.NewVmwareAdminCluster(ctx, "admin-cluster-metallb", &gkeonprem.VmwareAdminClusterArgs{
/// 			Name:                       pulumi.String("metallb"),
/// 			Location:                   pulumi.String("us-west1"),
/// 			Description:                pulumi.String("test admin cluster"),
/// 			BootstrapClusterMembership: pulumi.String("projects/870316890899/locations/global/memberships/gkeonprem-terraform-test"),
/// 			OnPremVersion:              pulumi.String("1.33.0-gke.35"),
/// 			ImageType:                  pulumi.String("ubuntu_containerd"),
/// 			EnableAdvancedCluster:      pulumi.Bool(true),
/// 			Vcenter: &gkeonprem.VmwareAdminClusterVcenterArgs{
/// 				ResourcePool: pulumi.String("test resource pool"),
/// 				Datastore:    pulumi.String("test data store"),
/// 				Datacenter:   pulumi.String("test data center"),
/// 				Cluster:      pulumi.String("test cluster"),
/// 				Folder:       pulumi.String("test folder"),
/// 				CaCertData:   pulumi.String("test ca cert data"),
/// 				Address:      pulumi.String("10.0.0.1"),
/// 				DataDisk:     pulumi.String("test data disk"),
/// 			},
/// 			NetworkConfig: &gkeonprem.VmwareAdminClusterNetworkConfigArgs{
/// 				ServiceAddressCidrBlocks: pulumi.StringArray{
/// 					pulumi.String("10.96.0.0/12"),
/// 				},
/// 				PodAddressCidrBlocks: pulumi.StringArray{
/// 					pulumi.String("192.168.0.0/16"),
/// 				},
/// 				DhcpIpConfig: &gkeonprem.VmwareAdminClusterNetworkConfigDhcpIpConfigArgs{
/// 					Enabled: pulumi.Bool(true),
/// 				},
/// 			},
/// 			ControlPlaneNode: &gkeonprem.VmwareAdminClusterControlPlaneNodeArgs{
/// 				Cpus:   pulumi.Int(4),
/// 				Memory: pulumi.Int(8192),
/// 			},
/// 			LoadBalancer: &gkeonprem.VmwareAdminClusterLoadBalancerArgs{
/// 				VipConfig: &gkeonprem.VmwareAdminClusterLoadBalancerVipConfigArgs{
/// 					ControlPlaneVip: pulumi.String("10.251.133.5"),
/// 					AddonsVip:       pulumi.String("10.251.135.19"),
/// 				},
/// 				MetalLbConfig: &gkeonprem.VmwareAdminClusterLoadBalancerMetalLbConfigArgs{
/// 					Enabled: pulumi.Bool(true),
/// 				},
/// 			},
/// 			PrivateRegistryConfig: &gkeonprem.VmwareAdminClusterPrivateRegistryConfigArgs{
/// 				Address: pulumi.String("test-address"),
/// 				CaCert:  pulumi.String("test-ca-cert"),
/// 			},
/// 			Proxy: &gkeonprem.VmwareAdminClusterProxyArgs{
/// 				Url:     pulumi.String("http://my-proxy.example.local:80"),
/// 				NoProxy: pulumi.String("10.151.222.0/24,my-host.example.local,10.151.2.1"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.gkeonprem.VmwareAdminCluster;
/// import com.pulumi.gcp.gkeonprem.VmwareAdminClusterArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VmwareAdminClusterVcenterArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VmwareAdminClusterNetworkConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VmwareAdminClusterNetworkConfigDhcpIpConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VmwareAdminClusterControlPlaneNodeArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VmwareAdminClusterLoadBalancerArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VmwareAdminClusterLoadBalancerVipConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VmwareAdminClusterLoadBalancerMetalLbConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VmwareAdminClusterPrivateRegistryConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VmwareAdminClusterProxyArgs;
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
///         var admin_cluster_metallb = new VmwareAdminCluster("admin-cluster-metallb", VmwareAdminClusterArgs.builder()
///             .name("metallb")
///             .location("us-west1")
///             .description("test admin cluster")
///             .bootstrapClusterMembership("projects/870316890899/locations/global/memberships/gkeonprem-terraform-test")
///             .onPremVersion("1.33.0-gke.35")
///             .imageType("ubuntu_containerd")
///             .enableAdvancedCluster(true)
///             .vcenter(VmwareAdminClusterVcenterArgs.builder()
///                 .resourcePool("test resource pool")
///                 .datastore("test data store")
///                 .datacenter("test data center")
///                 .cluster("test cluster")
///                 .folder("test folder")
///                 .caCertData("test ca cert data")
///                 .address("10.0.0.1")
///                 .dataDisk("test data disk")
///                 .build())
///             .networkConfig(VmwareAdminClusterNetworkConfigArgs.builder()
///                 .serviceAddressCidrBlocks("10.96.0.0/12")
///                 .podAddressCidrBlocks("192.168.0.0/16")
///                 .dhcpIpConfig(VmwareAdminClusterNetworkConfigDhcpIpConfigArgs.builder()
///                     .enabled(true)
///                     .build())
///                 .build())
///             .controlPlaneNode(VmwareAdminClusterControlPlaneNodeArgs.builder()
///                 .cpus(4)
///                 .memory(8192)
///                 .build())
///             .loadBalancer(VmwareAdminClusterLoadBalancerArgs.builder()
///                 .vipConfig(VmwareAdminClusterLoadBalancerVipConfigArgs.builder()
///                     .controlPlaneVip("10.251.133.5")
///                     .addonsVip("10.251.135.19")
///                     .build())
///                 .metalLbConfig(VmwareAdminClusterLoadBalancerMetalLbConfigArgs.builder()
///                     .enabled(true)
///                     .build())
///                 .build())
///             .privateRegistryConfig(VmwareAdminClusterPrivateRegistryConfigArgs.builder()
///                 .address("test-address")
///                 .caCert("test-ca-cert")
///                 .build())
///             .proxy(VmwareAdminClusterProxyArgs.builder()
///                 .url("http://my-proxy.example.local:80")
///                 .noProxy("10.151.222.0/24,my-host.example.local,10.151.2.1")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   admin-cluster-metallb:
///     type: gcp:gkeonprem:VmwareAdminCluster
///     properties:
///       name: metallb
///       location: us-west1
///       description: test admin cluster
///       bootstrapClusterMembership: projects/870316890899/locations/global/memberships/gkeonprem-terraform-test
///       onPremVersion: 1.33.0-gke.35
///       imageType: ubuntu_containerd
///       enableAdvancedCluster: true
///       vcenter:
///         resourcePool: test resource pool
///         datastore: test data store
///         datacenter: test data center
///         cluster: test cluster
///         folder: test folder
///         caCertData: test ca cert data
///         address: 10.0.0.1
///         dataDisk: test data disk
///       networkConfig:
///         serviceAddressCidrBlocks:
///           - 10.96.0.0/12
///         podAddressCidrBlocks:
///           - 192.168.0.0/16
///         dhcpIpConfig:
///           enabled: true
///       controlPlaneNode:
///         cpus: 4
///         memory: 8192
///       loadBalancer:
///         vipConfig:
///           controlPlaneVip: 10.251.133.5
///           addonsVip: 10.251.135.19
///         metalLbConfig:
///           enabled: true
///       privateRegistryConfig:
///         address: test-address
///         caCert: test-ca-cert
///       proxy:
///         url: http://my-proxy.example.local:80
///         noProxy: 10.151.222.0/24,my-host.example.local,10.151.2.1
/// ```
///
///
/// ## Import
///
/// VmwareAdminCluster can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/vmwareAdminClusters/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, VmwareAdminCluster can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gkeonprem/vmwareAdminCluster:VmwareAdminCluster default projects/{{project}}/locations/{{location}}/vmwareAdminClusters/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gkeonprem/vmwareAdminCluster:VmwareAdminCluster default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gkeonprem/vmwareAdminCluster:VmwareAdminCluster default {{location}}/{{name}}
/// ```
class VmwareAdminCluster extends pulumi.CustomResource {
  /// The VMware admin cluster addon node configuration.
  /// Structure is documented below.
  late final pulumi.Output<VmwareAdminClusterAddonNode> addonNode;
  /// Annotations on the VMware Admin Cluster.
  /// This field has the same restrictions as Kubernetes annotations.
  /// The total size of all keys and values combined is limited to 256k.
  /// Key can have 2 segments: prefix (optional) and name (required),
  /// separated by a slash (/).
  /// Prefix must be a DNS subdomain.
  /// Name must be 63 characters or less, begin and end with alphanumerics,
  /// with dashes (-), underscores (_), dots (.), and alphanumerics between.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>> annotations;
  /// AAGConfig specifies whether to spread VMware Admin Cluster nodes across at
  /// least three physical hosts in the datacenter.
  /// Structure is documented below.
  late final pulumi.Output<VmwareAdminClusterAntiAffinityGroups> antiAffinityGroups;
  /// The VMware admin cluster authorization configuration.
  /// Structure is documented below.
  late final pulumi.Output<VmwareAdminClusterAuthorization?> authorization;
  /// Configuration for auto repairing.
  /// Structure is documented below.
  late final pulumi.Output<VmwareAdminClusterAutoRepairConfig> autoRepairConfig;
  /// The bootstrap cluster this VMware admin cluster belongs to.
  late final pulumi.Output<String> bootstrapClusterMembership;
  /// The VMware admin cluster control plane node configuration.
  /// Structure is documented below.
  late final pulumi.Output<VmwareAdminClusterControlPlaneNode?> controlPlaneNode;
  /// The time the cluster was created, in RFC3339 text format.
  late final pulumi.Output<String> createTime;
  /// A human readable description of this VMware admin cluster.
  late final pulumi.Output<String> description;
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;
  /// If set, the advanced cluster feature is enabled.
  late final pulumi.Output<bool> enableAdvancedCluster;
  /// The DNS name of VMware admin cluster's API server.
  late final pulumi.Output<String> endpoint;
  /// This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the
  /// client has an up-to-date value before proceeding.
  /// Allows clients to perform consistent read-modify-writes
  /// through optimistic concurrency control.
  late final pulumi.Output<String> etag;
  /// Fleet configuration for the cluster.
  /// Structure is documented below.
  late final pulumi.Output<List<VmwareAdminClusterFleet>> fleets;
  /// The OS image type for the VMware admin cluster.
  late final pulumi.Output<String> imageType;
  /// Specifies the load balancer configuration for VMware admin cluster.
  /// Structure is documented below.
  late final pulumi.Output<VmwareAdminClusterLoadBalancer?> loadBalancer;
  /// The object name of the VMwareAdminCluster custom resource on the
  /// associated admin cluster. This field is used to support conflicting
  /// names when enrolling existing clusters to the API. When used as a part of
  /// cluster enrollment, this field will differ from the ID in the resource
  /// name. For new clusters, this field will match the user provided cluster ID
  /// and be visible in the last component of the resource name. It is not
  /// modifiable.
  /// All users should use this name to access their cluster using gkectl or
  /// kubectl and should expect to see the local name when viewing admin
  /// cluster controller logs.
  late final pulumi.Output<String> localName;
  /// The location of the resource.
  late final pulumi.Output<String> location;
  /// The VMware admin cluster resource name.
  late final pulumi.Output<String> name;
  /// The VMware admin cluster network configuration.
  /// Structure is documented below.
  late final pulumi.Output<VmwareAdminClusterNetworkConfig> networkConfig;
  /// The Anthos clusters on the VMware version for the admin cluster.
  late final pulumi.Output<String?> onPremVersion;
  /// The VMware platform configuration.
  /// Structure is documented below.
  late final pulumi.Output<VmwareAdminClusterPlatformConfig?> platformConfig;
  /// Configuration for private registry.
  /// Structure is documented below.
  late final pulumi.Output<VmwareAdminClusterPrivateRegistryConfig?> privateRegistryConfig;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Configuration for proxy.
  /// Structure is documented below.
  late final pulumi.Output<VmwareAdminClusterProxy?> proxy;
  /// If set, there are currently changes in flight to the VMware admin cluster.
  late final pulumi.Output<bool> reconciling;
  /// (Output)
  /// The lifecycle state of the condition.
  late final pulumi.Output<String> state;
  /// ResourceStatus representing detailed cluster state.
  /// Structure is documented below.
  late final pulumi.Output<List<VmwareAdminClusterStatus>> statuses;
  /// The unique identifier of the VMware Admin Cluster.
  late final pulumi.Output<String> uid;
  /// The time the cluster was last updated, in RFC3339 text format.
  late final pulumi.Output<String> updateTime;
  /// Specifies vCenter config for the admin cluster.
  /// Structure is documented below.
  late final pulumi.Output<VmwareAdminClusterVcenter?> vcenter;

  /// Creates a new [VmwareAdminCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VmwareAdminCluster]. {@macro pulumi_gkeonprem_vmware_admin_cluster_vmware_admin_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VmwareAdminCluster(
    String name, {
    VmwareAdminClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gkeonprem/vmwareAdminCluster:VmwareAdminCluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.addonNode = registerOutput<VmwareAdminClusterAddonNode>('addonNode');
    this.annotations = registerOutput<Map<String, String>>('annotations');
    this.antiAffinityGroups = registerOutput<VmwareAdminClusterAntiAffinityGroups>('antiAffinityGroups');
    this.authorization = registerOutput<VmwareAdminClusterAuthorization?>('authorization');
    this.autoRepairConfig = registerOutput<VmwareAdminClusterAutoRepairConfig>('autoRepairConfig');
    this.bootstrapClusterMembership = registerOutput<String>('bootstrapClusterMembership');
    this.controlPlaneNode = registerOutput<VmwareAdminClusterControlPlaneNode?>('controlPlaneNode');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations');
    this.enableAdvancedCluster = registerOutput<bool>('enableAdvancedCluster');
    this.endpoint = registerOutput<String>('endpoint');
    this.etag = registerOutput<String>('etag');
    this.fleets = registerOutput<List<VmwareAdminClusterFleet>>('fleets');
    this.imageType = registerOutput<String>('imageType');
    this.loadBalancer = registerOutput<VmwareAdminClusterLoadBalancer?>('loadBalancer');
    this.localName = registerOutput<String>('localName');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.networkConfig = registerOutput<VmwareAdminClusterNetworkConfig>('networkConfig');
    this.onPremVersion = registerOutput<String?>('onPremVersion');
    this.platformConfig = registerOutput<VmwareAdminClusterPlatformConfig?>('platformConfig');
    this.privateRegistryConfig = registerOutput<VmwareAdminClusterPrivateRegistryConfig?>('privateRegistryConfig');
    this.project = registerOutput<String>('project');
    this.proxy = registerOutput<VmwareAdminClusterProxy?>('proxy');
    this.reconciling = registerOutput<bool>('reconciling');
    this.state = registerOutput<String>('state');
    this.statuses = registerOutput<List<VmwareAdminClusterStatus>>('statuses');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
    this.vcenter = registerOutput<VmwareAdminClusterVcenter?>('vcenter');
  }
}
