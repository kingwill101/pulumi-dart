import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_args.dart';
import 'kubernetes_certificate_authority.dart';
import 'kubernetes_connections.dart';
import 'kubernetes_runtime.dart';
import 'kubernetes_state.dart';

/// This resource will help you to manage a Kubernetes Cluster in Alibaba Cloud Kubernetes Service, see [What is kubernetes](https://www.alibabacloud.com/help/en/ack/ack-managed-and-ack-dedicated/developer-reference/create-an-ask-cluster-1).
///
/// &gt; **NOTE:** From August 21, 2024, Container Service for Kubernetes (ACK) discontinues the creation of ACK dedicated clusters, see [Product announcement](https://www.alibabacloud.com/help/en/ack/product-overview/product-announcement-announcement-on-stopping-new-ack-dedicated-cluster) for more details.
///
/// &gt; **NOTE:** Available since v1.9.0.
///
/// &gt; **NOTE:** Kubernetes cluster only supports VPC network and it can access internet while creating kubernetes cluster.
/// A Nat Gateway and configuring a SNAT for it can ensure one VPC network access internet. If there is no nat gateway in the
/// VPC, you can set `new_nat_gateway` to "true" to create one automatically.
///
/// &gt; **NOTE:** Each kubernetes cluster contains 3 master nodes and those number cannot be changed at now.
///
/// &gt; **NOTE:** Creating kubernetes cluster need to install several packages and it will cost about 15 minutes. Please be patient.
///
/// &gt; **NOTE:** From version 1.9.4, the provider supports to download kube config, client certificate, client key and cluster ca certificate
/// after creating cluster successfully, and you can put them into the specified location, like '~/.kube/config'.
///
/// &gt; **NOTE:** From version 1.16.0, the provider supports Multiple Availability Zones Kubernetes Cluster. To create a cluster of this kind, you must specify 3 or 5 items in `master_vswitch_ids` and `master_instance_types`.
///
/// &gt; **NOTE:** From version 1.20.0, the provider supports disabling internet load balancer for API Server by setting `false` to `slb_internet_enabled`.
///
/// &gt; **NOTE:** If you want to manage Kubernetes, you can use Kubernetes Provider.
///
/// &gt; **NOTE:** You need to activate several other products and confirm Authorization Policy used by Container Service before using this resource.
/// Please refer to the `Authorization management` and `Cluster management` sections in the [Document Center](https://www.alibabacloud.com/help/doc-detail/86488.htm).
///
/// &gt; **NOTE:** From version 1.75.0, Some parameters have been removed from resource,You can check them below and re-import the cluster if necessary.
///
/// &gt; **NOTE:** From version 1.101.0+, We supported the `professional managed clusters(ack-pro)`, You can create a pro cluster by setting the the value of `cluster_spec`.
///
/// &gt; **NOTE:** From version 1.177.0+, `exclude_autoscaler_nodes`,`worker_number`,`worker_vswitch_ids`,`worker_instance_types`,`worker_instance_charge_type`,`worker_period`,`worker_period_unit`,`worker_auto_renew`,`worker_auto_renew_period`,`worker_disk_category`,`worker_disk_size`,`worker_data_disks`,`node_port_range`,`cpu_policy`,`user_data`,`taints`,`worker_disk_performance_level`,`worker_disk_snapshot_policy_id` are deprecated.
/// We Suggest you using resource **`alicloud.cs.NodePool`** to manage your cluster worker nodes.
///
/// &gt; **NOTE:** From version 1.212.0, `exclude_autoscaler_nodes`,`worker_number`,`worker_vswitch_ids`,`worker_instance_types`,`worker_instance_charge_type`,`worker_period`,`worker_period_unit`,`worker_auto_renew`,`worker_auto_renew_period`,`worker_disk_category`,`worker_disk_size`,`worker_data_disks`,`node_port_range`,`cpu_policy`,`user_data`,`taints`,`worker_disk_performance_level`,`worker_disk_snapshot_policy_id`,`kube_config`,`availability_zone` are removed.
/// Please use resource **`alicloud.cs.NodePool`** to manage your cluster worker nodes.
///
/// ## Example Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as std from "@pulumi/std";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf-kubernetes-example";
/// // Existing vpc id used to create several vswitches and other resources.
/// const vpcId = config.get("vpcId") || "";
/// // The cidr block used to launch a new vpc when 'vpc_id' is not specified.
/// const vpcCidr = config.get("vpcCidr") || "10.0.0.0/8";
/// // List of existing vswitch id.
/// const vswitchIds = config.getObject<Array<string>>("vswitchIds") || [];
/// // List of cidr blocks used to create several new vswitches when 'vswitch_ids' is not specified.
/// const vswitchCidrs = config.getObject<Array<string>>("vswitchCidrs") || [
///     "10.1.0.0/16",
///     "10.2.0.0/16",
///     "10.3.0.0/16",
/// ];
/// // List of existing vswitch ids for terway.
/// const terwayVswitchIds = config.getObject<Array<string>>("terwayVswitchIds") || [];
/// // List of cidr blocks used to create several new vswitches when 'terway_vswitch_cidrs' is not specified.
/// const terwayVswitchCidrs = config.getObject<Array<string>>("terwayVswitchCidrs") || [
///     "10.4.0.0/16",
///     "10.5.0.0/16",
///     "10.6.0.0/16",
/// ];
/// const clusterAddons = config.getObject<Array<{config?: Record<string, string>, name?: string}>>("clusterAddons") || [
///     {
///         config: {},
///         name: "terway-eniip",
///     },
///     {
///         config: {},
///         name: "csi-plugin",
///     },
///     {
///         config: {},
///         name: "csi-provisioner",
///     },
///     {
///         config: {
///             IngressDashboardEnabled: "true",
///         },
///         name: "logtail-ds",
///     },
///     {
///         config: {
///             IngressSlbNetworkType: "internet",
///         },
///         name: "nginx-ingress-controller",
///     },
///     {
///         config: {},
///         name: "arms-prometheus",
///     },
///     {
///         config: {
///             sls_project_name: "",
///         },
///         name: "ack-node-problem-detector",
///     },
/// ];
/// const enhanced = alicloud.vpc.getEnhancedNatAvailableZones({});
/// // If there is not specifying vpc_id, the module will launch a new vpc
/// const vpc: alicloud.vpc.Network[] = [];
/// for (const range = {value: 0}; range.value < (vpcId == "" ? 1 : 0); range.value++) {
///     vpc.push(new alicloud.vpc.Network(`vpc-${range.value}`, {cidrBlock: vpcCidr}));
/// }
/// // According to the vswitch cidr blocks to launch several vswitches
/// const vswitches: alicloud.vpc.Switch[] = [];
/// for (const range = {value: 0}; range.value < (vswitchIds.length > 0 ? 0 : vswitchCidrs.length); range.value++) {
///     vswitches.push(new alicloud.vpc.Switch(`vswitches-${range.value}`, {
///         vpcId: vpcId == "" ? std.joinOutput({
///             separator: "",
///             input: vpc.map(__item => __item.id),
///         }).apply(invoke => invoke.result) : vpcId,
///         cidrBlock: vswitchCidrs[range.value],
///         zoneId: pulumi.all([enhanced, enhanced.then(enhanced => enhanced.zones).length]).apply(([enhanced, length]) => enhanced.zones[range.value < length ? range.value : 0].zoneId),
///     }));
/// }
/// // According to the vswitch cidr blocks to launch several vswitches
/// const terwayVswitches: alicloud.vpc.Switch[] = [];
/// for (const range = {value: 0}; range.value < (terwayVswitchIds.length > 0 ? 0 : terwayVswitchCidrs.length); range.value++) {
///     terwayVswitches.push(new alicloud.vpc.Switch(`terway_vswitches-${range.value}`, {
///         vpcId: vpcId == "" ? std.joinOutput({
///             separator: "",
///             input: vpc.map(__item => __item.id),
///         }).apply(invoke => invoke.result) : vpcId,
///         cidrBlock: terwayVswitchCidrs[range.value],
///         zoneId: pulumi.all([enhanced, enhanced.then(enhanced => enhanced.zones).length]).apply(([enhanced, length]) => enhanced.zones[range.value < length ? range.value : 0].zoneId),
///     }));
/// }
/// const _default = alicloud.resourcemanager.getResourceGroups({
///     status: "OK",
/// });
/// const cloudEssd = (new Array(3)).map((_, i) => i).map(__index => (alicloud.ecs.getInstanceTypesOutput({
///     availabilityZone: _arg0_.zones[__index < _arg1_ ? __index : 0].zoneId,
///     cpuCoreCount: 4,
///     memorySize: 8,
///     systemDiskCategory: "cloud_essd",
/// })));
/// const defaultKubernetes = new alicloud.cs.Kubernetes("default", {
///     addons: clusterAddons.map((v, k) => ({key: k, value: v})).map(entry => ({
///         name: std.lookup({
///             map: entry.value,
///             key: "name",
///             "default": clusterAddons,
///         }).then(invoke => invoke.result),
///         config: JSON.stringify(std.lookup({
///             map: entry.value,
///             key: "config",
///             "default": clusterAddons,
///         }).then(invoke => invoke.result)),
///     })),
///     masterVswitchIds: vswitchIds.length > 0 ? std.join({
///         separator: ",",
///         input: vswitchIds,
///     }).then(invoke => std.split({
///         separator: ",",
///         text: invoke.result,
///     })).then(invoke => invoke.result) : vswitchCidrs.length < 1 ? [] : std.joinOutput({
///         separator: ",",
///         input: vswitches.map(__item => __item.id),
///     }).apply(invoke => std.splitOutput({
///         separator: ",",
///         text: invoke.result,
///     })).apply(invoke => invoke.result),
///     podVswitchIds: terwayVswitchIds.length > 0 ? std.join({
///         separator: ",",
///         input: terwayVswitchIds,
///     }).then(invoke => std.split({
///         separator: ",",
///         text: invoke.result,
///     })).then(invoke => invoke.result) : terwayVswitchCidrs.length < 1 ? [] : std.joinOutput({
///         separator: ",",
///         input: terwayVswitches.map(__item => __item.id),
///     }).apply(invoke => std.splitOutput({
///         separator: ",",
///         text: invoke.result,
///     })).apply(invoke => invoke.result),
///     masterInstanceTypes: [
///         cloudEssd[0].apply(cloudEssd => cloudEssd.instanceTypes?.[0]?.id),
///         cloudEssd[1].apply(cloudEssd => cloudEssd.instanceTypes?.[0]?.id),
///         cloudEssd[2].apply(cloudEssd => cloudEssd.instanceTypes?.[0]?.id),
///     ],
///     masterDiskCategory: "cloud_essd",
///     password: "Yourpassword1234",
///     serviceCidr: "172.18.0.0/16",
///     installCloudMonitor: true,
///     resourceGroupId: _default.then(_default => _default.groups?.[0]?.id),
///     deletionProtection: false,
///     timezone: "Asia/Shanghai",
///     osType: "Linux",
///     platform: "AliyunLinux3",
///     clusterDomain: "cluster.local",
///     proxyMode: "ipvs",
///     customSan: "www.terraform.io",
///     newNatGateway: true,
///     skipSetCertificateAuthority: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_alicloud as alicloud
/// import pulumi_std as std
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-kubernetes-example"
/// # Existing vpc id used to create several vswitches and other resources.
/// vpc_id = config.get("vpcId")
/// if vpc_id is None:
///     vpc_id = ""
/// # The cidr block used to launch a new vpc when 'vpc_id' is not specified.
/// vpc_cidr = config.get("vpcCidr")
/// if vpc_cidr is None:
///     vpc_cidr = "10.0.0.0/8"
/// # List of existing vswitch id.
/// vswitch_ids = config.get_object("vswitchIds")
/// if vswitch_ids is None:
///     vswitch_ids = []
/// # List of cidr blocks used to create several new vswitches when 'vswitch_ids' is not specified.
/// vswitch_cidrs = config.get_object("vswitchCidrs")
/// if vswitch_cidrs is None:
///     vswitch_cidrs = [
///         "10.1.0.0/16",
///         "10.2.0.0/16",
///         "10.3.0.0/16",
///     ]
/// # List of existing vswitch ids for terway.
/// terway_vswitch_ids = config.get_object("terwayVswitchIds")
/// if terway_vswitch_ids is None:
///     terway_vswitch_ids = []
/// # List of cidr blocks used to create several new vswitches when 'terway_vswitch_cidrs' is not specified.
/// terway_vswitch_cidrs = config.get_object("terwayVswitchCidrs")
/// if terway_vswitch_cidrs is None:
///     terway_vswitch_cidrs = [
///         "10.4.0.0/16",
///         "10.5.0.0/16",
///         "10.6.0.0/16",
///     ]
/// cluster_addons = config.get_object("clusterAddons")
/// if cluster_addons is None:
///     cluster_addons = [
///         {
///             "config": {},
///             "name": "terway-eniip",
///         },
///         {
///             "config": {},
///             "name": "csi-plugin",
///         },
///         {
///             "config": {},
///             "name": "csi-provisioner",
///         },
///         {
///             "config": {
///                 "IngressDashboardEnabled": "true",
///             },
///             "name": "logtail-ds",
///         },
///         {
///             "config": {
///                 "IngressSlbNetworkType": "internet",
///             },
///             "name": "nginx-ingress-controller",
///         },
///         {
///             "config": {},
///             "name": "arms-prometheus",
///         },
///         {
///             "config": {
///                 "sls_project_name": "",
///             },
///             "name": "ack-node-problem-detector",
///         },
///     ]
/// enhanced = alicloud.vpc.get_enhanced_nat_available_zones()
/// # If there is not specifying vpc_id, the module will launch a new vpc
/// vpc = []
/// for range in [{"value": i} for i in range(0, 1 if vpc_id ==  else 0)]:
///     vpc.append(alicloud.vpc.Network(f"vpc-{range['value']}", cidr_block=vpc_cidr))
/// # According to the vswitch cidr blocks to launch several vswitches
/// vswitches = []
/// for range in [{"value": i} for i in range(0, 0 if len(vswitch_ids) > 0 else len(vswitch_cidrs))]:
///     vswitches.append(alicloud.vpc.Switch(f"vswitches-{range['value']}",
///         vpc_id=std.join_output(separator="",
///             input=[__item.id for __item in vpc]).apply(lambda invoke: invoke.result) if vpc_id == "" else vpc_id,
///         cidr_block=vswitch_cidrs[range["value"]],
///         zone_id=len(enhanced.zones).apply(lambda length: enhanced.zones[range["value"] if range["value"] < length else 0]).apply(lambda obj: obj.zone_id)))
/// # According to the vswitch cidr blocks to launch several vswitches
/// terway_vswitches = []
/// for range in [{"value": i} for i in range(0, 0 if len(terway_vswitch_ids) > 0 else len(terway_vswitch_cidrs))]:
///     terway_vswitches.append(alicloud.vpc.Switch(f"terway_vswitches-{range['value']}",
///         vpc_id=std.join_output(separator="",
///             input=[__item.id for __item in vpc]).apply(lambda invoke: invoke.result) if vpc_id == "" else vpc_id,
///         cidr_block=terway_vswitch_cidrs[range["value"]],
///         zone_id=len(enhanced.zones).apply(lambda length: enhanced.zones[range["value"] if range["value"] < length else 0]).apply(lambda obj: obj.zone_id)))
/// default = alicloud.resourcemanager.get_resource_groups(status="OK")
/// cloud_essd = [alicloud.ecs.get_instance_types_output(availability_zone=_arg0_.zone_id,
///     cpu_core_count=4,
///     memory_size=8,
///     system_disk_category="cloud_essd") for __index in range(3)]
/// default_kubernetes = alicloud.cs.Kubernetes("default",
///     addons=[{
///         "name": std.lookup(map=entry["value"],
///             key="name",
///             default=cluster_addons).result,
///         "config": json.dumps(std.lookup(map=entry["value"],
///             key="config",
///             default=cluster_addons).result),
///     } for entry in [{"key": k, "value": v} for k, v in cluster_addons]],
///     master_vswitch_ids=std.split(separator=",",
///         text=std.join(separator=",",
///             input=vswitch_ids).result).result if len(vswitch_ids) > 0 else [] if len(vswitch_cidrs) < 1 else std.join_output(separator=",",
///         input=[__item.id for __item in vswitches]).apply(lambda invoke: std.split_output(separator=",",
///         text=invoke.result)).apply(lambda invoke: invoke.result),
///     pod_vswitch_ids=std.split(separator=",",
///         text=std.join(separator=",",
///             input=terway_vswitch_ids).result).result if len(terway_vswitch_ids) > 0 else [] if len(terway_vswitch_cidrs) < 1 else std.join_output(separator=",",
///         input=[__item.id for __item in terway_vswitches]).apply(lambda invoke: std.split_output(separator=",",
///         text=invoke.result)).apply(lambda invoke: invoke.result),
///     master_instance_types=[
///         cloud_essd[0].instance_types[0].id,
///         cloud_essd[1].instance_types[0].id,
///         cloud_essd[2].instance_types[0].id,
///     ],
///     master_disk_category="cloud_essd",
///     password="Yourpassword1234",
///     service_cidr="172.18.0.0/16",
///     install_cloud_monitor=True,
///     resource_group_id=default.groups[0].id,
///     deletion_protection=False,
///     timezone="Asia/Shanghai",
///     os_type="Linux",
///     platform="AliyunLinux3",
///     cluster_domain="cluster.local",
///     proxy_mode="ipvs",
///     custom_san="www.terraform.io",
///     new_nat_gateway=True,
///     skip_set_certificate_authority=True)
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Kubernetes cluster can be imported using the id, e.g. Then complete the main.tf accords to the result of `pulumi preview`.
///
/// ```sh
/// $ pulumi import alicloud:cs/kubernetes:Kubernetes main cluster-id
/// ```
class Kubernetes extends pulumi.CustomResource {
  /// The addon you want to install in cluster. See `addons` below. Only works for **Create** Operation, use resource cs_kubernetes_addon to manage addons if cluster is created.
  late final pulumi.Output<List<Map<String, dynamic>>?> addons;
  /// A list of API audiences for [Service Account Token Volume Projection](https://www.alibabacloud.com/help/doc-detail/160384.htm). Set this to `["https://kubernetes.default.svc"]` if you want to enable the Token Volume Projection feature requires specifying `service_account_issuer` as well. From cluster version 1.22+, Service Account Token Volume Projection will be enabled by default.
  late final pulumi.Output<List<String>?> apiAudiences;
  /// (Map, Deprecated from v1.248.0) Nested attribute containing certificate authority data for your cluster. Please use the attribute certificate_authority of new DataSource `alicloud.cs.getClusterCredential` to replace it.
  late final pulumi.Output<KubernetesCertificateAuthority> certificateAuthority;
  /// From version 1.248.0, new DataSource `alicloud.cs.getClusterCredential` is recommended to manage cluster's kubeconfig, you can also save the certificate_authority.client_cert attribute content of new DataSource `alicloud.cs.getClusterCredential` to an appropriate path(like ~/.kube/client-cert.pem) for replace it.
  late final pulumi.Output<String?> clientCert;
  /// From version 1.248.0, new DataSource `alicloud.cs.getClusterCredential` is recommended to manage cluster's kubeconfig, you can also save the certificate_authority.client_key attribute content of new DataSource `alicloud.cs.getClusterCredential` to an appropriate path(like ~/.kube/client-key.pem) for replace it.
  late final pulumi.Output<String?> clientKey;
  /// From version 1.248.0, new DataSource `alicloud.cs.getClusterCredential` is recommended to manage cluster's kubeconfig, you can also save the certificate_authority.cluster_cert attribute content of new DataSource `alicloud.cs.getClusterCredential` to an appropriate path(like ~/.kube/cluster-ca-cert.pem) for replace it.
  ///
  /// *Removed params*
  late final pulumi.Output<String?> clusterCaCert;
  /// Cluster local domain name, Default to `cluster.local`. A domain name consists of one or more sections separated by a decimal point (.), each of which is up to 63 characters long, and can be lowercase, numerals, and underscores (-), and must be lowercase or numerals at the beginning and end.
  late final pulumi.Output<String?> clusterDomain;
  /// (Map) Map of kubernetes cluster connection information.
  late final pulumi.Output<KubernetesConnections> connections;
  /// Customize the certificate SAN, multiple IP or domain names are separated by English commas (,).
  late final pulumi.Output<String?> customSan;
  /// Delete options, only work for deleting resource. Make sure you have run `pulumi up` to make the configuration applied. See `delete_options` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> deleteOptions;
  /// Whether to enable cluster deletion protection.
  late final pulumi.Output<bool?> deletionProtection;
  /// Enable login to the node through SSH. Default to `false`.
  late final pulumi.Output<bool?> enableSsh;
  /// Custom Image support. Must be based on AliyunLinux or AliyunLinux3.
  late final pulumi.Output<String> imageId;
  /// Install cloud monitor agent on ECS. Default to `true`.
  late final pulumi.Output<bool?> installCloudMonitor;
  /// Enable to create advanced security group. default: false. See [Advanced security group](https://www.alibabacloud.com/help/doc-detail/120621.htm). Only works for **Create** Operation.
  late final pulumi.Output<bool> isEnterpriseSecurityGroup;
  /// The keypair of ssh login cluster node, you have to create it first. You have to specify one of `password` `key_name` `kms_encrypted_password` fields.
  late final pulumi.Output<String?> keyName;
  /// An KMS encrypts password used to a cs kubernetes. You have to specify one of `password` `key_name` `kms_encrypted_password` fields.
  late final pulumi.Output<String?> kmsEncryptedPassword;
  /// An KMS encryption context used to decrypt `kms_encrypted_password` before creating or updating a cs kubernetes with `kms_encrypted_password`. See [Encryption Context](https://www.alibabacloud.com/help/doc-detail/42975.htm). It is valid when `kms_encrypted_password` is set.
  late final pulumi.Output<Map<String, String>?> kmsEncryptionContext;
  /// The cluster api server load balancer instance specification. For more information on how to select a LB instance specification, see [SLB instance overview](https://help.aliyun.com/document_detail/85931.html). Only works for **Create** Operation. The spec will not take effect because the charge of the load balancer has been changed to PayByCLCU.
  late final pulumi.Output<String> loadBalancerSpec;
  /// Enable master payment auto-renew, defaults to false.
  late final pulumi.Output<bool?> masterAutoRenew;
  /// Master payment auto-renew period, it can be one of {1, 2, 3, 6, 12}.
  late final pulumi.Output<int?> masterAutoRenewPeriod;
  /// The system disk category of master node. Its valid value are `cloud_ssd`, `cloud_essd` and `cloud_efficiency`. Default to `cloud_efficiency`.
  late final pulumi.Output<String?> masterDiskCategory;
  /// Master node system disk performance level. When `master_disk_category` values `cloud_essd`, the optional values are `PL0`, `PL1`, `PL2` or `PL3`, but the specific performance level is related to the disk capacity. For more information, see [Enhanced SSDs](https://www.alibabacloud.com/help/doc-detail/122389.htm). Default is `PL1`.
  late final pulumi.Output<String?> masterDiskPerformanceLevel;
  /// The system disk size of master node. Its valid value range [20~500] in GB. Default to 20.
  late final pulumi.Output<int?> masterDiskSize;
  /// Master node system disk auto snapshot policy.
  ///
  /// *Computed params*
  late final pulumi.Output<String?> masterDiskSnapshotPolicyId;
  /// Master payment type. or `PostPaid` or `PrePaid`, defaults to `PostPaid`. If value is `PrePaid`, the files `master_period`, `master_period_unit`, `master_auto_renew` and `master_auto_renew_period` are required.
  late final pulumi.Output<String?> masterInstanceChargeType;
  /// The instance type of master node. Specify one type for single AZ Cluster, three types for MultiAZ Cluster.
  late final pulumi.Output<List<String>> masterInstanceTypes;
  /// (Optional) The master nodes. See `master_nodes` below.
  late final pulumi.Output<List<Map<String, dynamic>>> masterNodes;
  /// Master payment period.Its valid value is one of {1, 2, 3, 6, 12, 24, 36, 48, 60}.
  late final pulumi.Output<int?> masterPeriod;
  /// Master payment period unit, the valid value is `Month`.
  late final pulumi.Output<String?> masterPeriodUnit;
  /// The vswitches used by master, you can specific 3 or 5 vswitches because of the amount of masters. Detailed below.
  late final pulumi.Output<List<String>> masterVswitchIds;
  /// The kubernetes cluster's name. It is unique in one Alicloud account.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String?> namePrefix;
  /// The ID of nat gateway used to launch kubernetes cluster.
  late final pulumi.Output<String> natGatewayId;
  /// Whether to create a new nat gateway while creating kubernetes cluster. Default to true. Then openapi in Alibaba Cloud are not all on intranet, So turn this option on is a good choice. Your cluster nodes and applications will have public network access. If there is a NAT gateway in the selected VPC, ACK will use this gateway by default; if there is no NAT gateway in the selected VPC, ACK will create a new NAT gateway for you and automatically configure SNAT rules. Only works for **Create** Operation.
  late final pulumi.Output<bool?> newNatGateway;
  /// The node cidr block to specific how many pods can run on single node. 24-28 is allowed. 24 means 2^(32-24)-1=255 and the node can run at most 255 pods. default: 24
  late final pulumi.Output<int?> nodeCidrMask;
  /// Each node name consists of a prefix, an IP substring, and a suffix, the input format is `customized,&lt;prefix&gt;,IPSubStringLen,&lt;suffix&gt;`. For example "customized,aliyun.com-,5,-test", if the node IP address is 192.168.59.176, the prefix is aliyun.com-, IP substring length is 5, and the suffix is -test, the node name will be aliyun.com-59176-test.
  late final pulumi.Output<String> nodeNameMode;
  /// The operating system of the nodes that run pods, its valid value is either `Linux` or `Windows`. Default to `Linux`.
  late final pulumi.Output<String?> osType;
  /// The password of ssh login cluster node. You have to specify one of `password` `key_name` `kms_encrypted_password` fields.
  late final pulumi.Output<String?> password;
  /// The architecture of the nodes that run pods, its valid value `AliyunLinux`, `AliyunLinux3`. Default to `AliyunLinux3`.
  late final pulumi.Output<String> platform;
  /// [Flannel Specific] The CIDR block for the pod network when using Flannel.
  late final pulumi.Output<String?> podCidr;
  /// [Terway Specific] The vswitches for the pod network when using Terway. It is recommended that `pod_vswitch_ids` is not belong to `worker_vswitch_ids` and `master_vswitch_ids` but must be in same availability zones. Only works for **Create** Operation.
  late final pulumi.Output<List<String>?> podVswitchIds;
  /// Proxy mode is option of kube-proxy. options: iptables | ipvs. default: ipvs.
  late final pulumi.Output<String?> proxyMode;
  /// RDS instance list, You can choose which RDS instances whitelist to add instances to.
  late final pulumi.Output<List<String>?> rdsInstances;
  /// The ID of the resource group,by default these cloud resources are automatically assigned to the default resource group.
  late final pulumi.Output<String> resourceGroupId;
  late final pulumi.Output<List<String>?> retainResources;
  /// The runtime of containers. If you select another container runtime, see [How do I select between Docker and Sandboxed-Container](https://www.alibabacloud.com/help/doc-detail/160313.htm?spm=a2c63.p38356.b99.440.22563866AJkBgI). See `runtime` below.
  late final pulumi.Output<KubernetesRuntime?> runtime;
  /// The ID of the security group to which the ECS instances in the cluster belong. If it is not specified, a new Security group will be built.
  late final pulumi.Output<String> securityGroupId;
  /// The issuer of the Service Account token for [Service Account Token Volume Projection](https://www.alibabacloud.com/help/doc-detail/160384.htm), corresponds to the `iss` field in the token payload. Set this to `"https://kubernetes.default.svc"` to enable the Token Volume Projection feature (requires specifying `api_audiences` as well). From cluster version 1.22+, Service Account Token Volume Projection will be enabled by default.
  late final pulumi.Output<String?> serviceAccountIssuer;
  /// The CIDR block for the service network. It cannot be duplicated with the VPC CIDR and CIDR used by Kubernetes cluster in VPC, cannot be modified after creation.
  late final pulumi.Output<String?> serviceCidr;
  /// Configure whether to save certificate authority data for your cluster to attribute `certificate_authority`.For cluster security, recommended configuration as `true`. Will be removed with attribute certificate_authority removed.
  ///
  /// *Network params*
  late final pulumi.Output<bool?> skipSetCertificateAuthority;
  /// The ID of APIServer load balancer.
  late final pulumi.Output<String> slbId;
  /// The public ip of load balancer.
  late final pulumi.Output<String> slbInternet;
  /// Whether to create internet load balancer for API Server. Default to true. Only works for **Create** Operation.
  ///
  /// &gt; **NOTE:** If you want to use `Terway` as CNI network plugin, You need to specify the `pod_vswitch_ids` field and addons with `terway-eniip`.
  /// If you want to use `Flannel` as CNI network plugin, You need to specify the `pod_cidr` field and addons with `flannel`.
  ///
  /// *Master params*
  late final pulumi.Output<bool?> slbInternetEnabled;
  /// The ID of private load balancer where the current cluster master node is located.
  late final pulumi.Output<String> slbIntranet;
  /// Default nil, A map of tags assigned to the kubernetes cluster and work nodes.
  late final pulumi.Output<Map<String, String>?> tags;
  /// When you create a cluster, set the time zones for the Master and Worker nodes. You can only change the managed node time zone if you create a cluster. Once the cluster is created, you can only change the time zone of the Worker node.
  late final pulumi.Output<String?> timezone;
  /// The path of customized CA cert, you can use this CA to sign client certs to connect your cluster.
  late final pulumi.Output<String?> userCa;
  /// Desired Kubernetes version. If you do not specify a value, the latest available version at resource creation is used and no upgrades will occur except you set a higher version number. The value must be configured and increased to upgrade the version when desired. Downgrades are not supported by ACK.
  late final pulumi.Output<String> version;
  /// The ID of VPC where the current cluster is located.
  late final pulumi.Output<String> vpcId;
  /// The RamRole Name attached to worker node.
  late final pulumi.Output<String> workerRamRoleName;

  /// Creates a new [Kubernetes].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Kubernetes]. {@macro pulumi_cs_kubernetes_kubernetes_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Kubernetes(
    String name, {
    KubernetesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cs/kubernetes:Kubernetes',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    addons = registerOutput<List<Map<String, dynamic>>?>('addons');
    apiAudiences = registerOutput<List<String>?>('apiAudiences');
    certificateAuthority = registerOutput<KubernetesCertificateAuthority>('certificateAuthority', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KubernetesCertificateAuthority.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clientCert = registerOutput<String?>('clientCert');
    clientKey = registerOutput<String?>('clientKey');
    clusterCaCert = registerOutput<String?>('clusterCaCert');
    clusterDomain = registerOutput<String?>('clusterDomain');
    connections = registerOutput<KubernetesConnections>('connections', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KubernetesConnections.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    customSan = registerOutput<String?>('customSan');
    deleteOptions = registerOutput<List<Map<String, dynamic>>?>('deleteOptions');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    enableSsh = registerOutput<bool?>('enableSsh');
    imageId = registerOutput<String>('imageId');
    installCloudMonitor = registerOutput<bool?>('installCloudMonitor');
    isEnterpriseSecurityGroup = registerOutput<bool>('isEnterpriseSecurityGroup');
    keyName = registerOutput<String?>('keyName');
    kmsEncryptedPassword = registerOutput<String?>('kmsEncryptedPassword');
    kmsEncryptionContext = registerOutput<Map<String, String>?>('kmsEncryptionContext');
    loadBalancerSpec = registerOutput<String>('loadBalancerSpec');
    masterAutoRenew = registerOutput<bool?>('masterAutoRenew');
    masterAutoRenewPeriod = registerOutput<int?>('masterAutoRenewPeriod');
    masterDiskCategory = registerOutput<String?>('masterDiskCategory');
    masterDiskPerformanceLevel = registerOutput<String?>('masterDiskPerformanceLevel');
    masterDiskSize = registerOutput<int?>('masterDiskSize');
    masterDiskSnapshotPolicyId = registerOutput<String?>('masterDiskSnapshotPolicyId');
    masterInstanceChargeType = registerOutput<String?>('masterInstanceChargeType');
    masterInstanceTypes = registerOutput<List<String>>('masterInstanceTypes');
    masterNodes = registerOutput<List<Map<String, dynamic>>>('masterNodes');
    masterPeriod = registerOutput<int?>('masterPeriod');
    masterPeriodUnit = registerOutput<String?>('masterPeriodUnit');
    masterVswitchIds = registerOutput<List<String>>('masterVswitchIds');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String?>('namePrefix');
    natGatewayId = registerOutput<String>('natGatewayId');
    newNatGateway = registerOutput<bool?>('newNatGateway');
    nodeCidrMask = registerOutput<int?>('nodeCidrMask');
    nodeNameMode = registerOutput<String>('nodeNameMode');
    osType = registerOutput<String?>('osType');
    password = registerOutput<String?>('password');
    platform = registerOutput<String>('platform');
    podCidr = registerOutput<String?>('podCidr');
    podVswitchIds = registerOutput<List<String>?>('podVswitchIds');
    proxyMode = registerOutput<String?>('proxyMode');
    rdsInstances = registerOutput<List<String>?>('rdsInstances');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    retainResources = registerOutput<List<String>?>('retainResources');
    runtime = registerOutput<KubernetesRuntime?>('runtime', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KubernetesRuntime.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    securityGroupId = registerOutput<String>('securityGroupId');
    serviceAccountIssuer = registerOutput<String?>('serviceAccountIssuer');
    serviceCidr = registerOutput<String?>('serviceCidr');
    skipSetCertificateAuthority = registerOutput<bool?>('skipSetCertificateAuthority');
    slbId = registerOutput<String>('slbId');
    slbInternet = registerOutput<String>('slbInternet');
    slbInternetEnabled = registerOutput<bool?>('slbInternetEnabled');
    slbIntranet = registerOutput<String>('slbIntranet');
    tags = registerOutput<Map<String, String>?>('tags');
    timezone = registerOutput<String?>('timezone');
    userCa = registerOutput<String?>('userCa');
    version = registerOutput<String>('version');
    vpcId = registerOutput<String>('vpcId');
    workerRamRoleName = registerOutput<String>('workerRamRoleName');
  }

  /// Gets an existing [Kubernetes] resource's state with the given [name] and [id].
  static Kubernetes get(
    String name,
    pulumi.Input<String> id, {
    KubernetesState? state,
  }) {
    return Kubernetes._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Kubernetes._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cs/kubernetes:Kubernetes',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    addons = registerOutput<List<Map<String, dynamic>>?>('addons');
    apiAudiences = registerOutput<List<String>?>('apiAudiences');
    certificateAuthority = registerOutput<KubernetesCertificateAuthority>('certificateAuthority', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KubernetesCertificateAuthority.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clientCert = registerOutput<String?>('clientCert');
    clientKey = registerOutput<String?>('clientKey');
    clusterCaCert = registerOutput<String?>('clusterCaCert');
    clusterDomain = registerOutput<String?>('clusterDomain');
    connections = registerOutput<KubernetesConnections>('connections', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KubernetesConnections.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    customSan = registerOutput<String?>('customSan');
    deleteOptions = registerOutput<List<Map<String, dynamic>>?>('deleteOptions');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    enableSsh = registerOutput<bool?>('enableSsh');
    imageId = registerOutput<String>('imageId');
    installCloudMonitor = registerOutput<bool?>('installCloudMonitor');
    isEnterpriseSecurityGroup = registerOutput<bool>('isEnterpriseSecurityGroup');
    keyName = registerOutput<String?>('keyName');
    kmsEncryptedPassword = registerOutput<String?>('kmsEncryptedPassword');
    kmsEncryptionContext = registerOutput<Map<String, String>?>('kmsEncryptionContext');
    loadBalancerSpec = registerOutput<String>('loadBalancerSpec');
    masterAutoRenew = registerOutput<bool?>('masterAutoRenew');
    masterAutoRenewPeriod = registerOutput<int?>('masterAutoRenewPeriod');
    masterDiskCategory = registerOutput<String?>('masterDiskCategory');
    masterDiskPerformanceLevel = registerOutput<String?>('masterDiskPerformanceLevel');
    masterDiskSize = registerOutput<int?>('masterDiskSize');
    masterDiskSnapshotPolicyId = registerOutput<String?>('masterDiskSnapshotPolicyId');
    masterInstanceChargeType = registerOutput<String?>('masterInstanceChargeType');
    masterInstanceTypes = registerOutput<List<String>>('masterInstanceTypes');
    masterNodes = registerOutput<List<Map<String, dynamic>>>('masterNodes');
    masterPeriod = registerOutput<int?>('masterPeriod');
    masterPeriodUnit = registerOutput<String?>('masterPeriodUnit');
    masterVswitchIds = registerOutput<List<String>>('masterVswitchIds');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String?>('namePrefix');
    natGatewayId = registerOutput<String>('natGatewayId');
    newNatGateway = registerOutput<bool?>('newNatGateway');
    nodeCidrMask = registerOutput<int?>('nodeCidrMask');
    nodeNameMode = registerOutput<String>('nodeNameMode');
    osType = registerOutput<String?>('osType');
    password = registerOutput<String?>('password');
    platform = registerOutput<String>('platform');
    podCidr = registerOutput<String?>('podCidr');
    podVswitchIds = registerOutput<List<String>?>('podVswitchIds');
    proxyMode = registerOutput<String?>('proxyMode');
    rdsInstances = registerOutput<List<String>?>('rdsInstances');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    retainResources = registerOutput<List<String>?>('retainResources');
    runtime = registerOutput<KubernetesRuntime?>('runtime', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KubernetesRuntime.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    securityGroupId = registerOutput<String>('securityGroupId');
    serviceAccountIssuer = registerOutput<String?>('serviceAccountIssuer');
    serviceCidr = registerOutput<String?>('serviceCidr');
    skipSetCertificateAuthority = registerOutput<bool?>('skipSetCertificateAuthority');
    slbId = registerOutput<String>('slbId');
    slbInternet = registerOutput<String>('slbInternet');
    slbInternetEnabled = registerOutput<bool?>('slbInternetEnabled');
    slbIntranet = registerOutput<String>('slbIntranet');
    tags = registerOutput<Map<String, String>?>('tags');
    timezone = registerOutput<String?>('timezone');
    userCa = registerOutput<String?>('userCa');
    version = registerOutput<String>('version');
    vpcId = registerOutput<String>('vpcId');
    workerRamRoleName = registerOutput<String>('workerRamRoleName');
  }
}
