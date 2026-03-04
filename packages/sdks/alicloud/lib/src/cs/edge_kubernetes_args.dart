// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'edge_kubernetes_addon.dart';
import 'edge_kubernetes_log_config.dart';
import 'edge_kubernetes_runtime.dart';
import 'edge_kubernetes_worker_data_disk.dart';

/// {@template pulumi_cs_edge_kubernetes_edge_kubernetes_args_doc}
/// The set of arguments for EdgeKubernetes.
/// {@endtemplate}
/// {@macro pulumi_cs_edge_kubernetes_edge_kubernetes_args_doc}
class EdgeKubernetesArgs {
  /// The addon you want to install in cluster. See `addons` below.
  final pulumi.Input<List<EdgeKubernetesAddon>>? addons;

  /// The ID of availability zone.
  final pulumi.Input<String>? availabilityZone;

  /// From version 1.248.0, new DataSource `alicloud.cs.getClusterCredential` is recommended to manage cluster's kubeconfig, you can also save the certificate_authority.client_cert attribute content of new DataSource `alicloud.cs.getClusterCredential` to an appropriate path(like ~/.kube/client-cert.pem) for replace it.
  final pulumi.Input<String>? clientCert;

  /// From version 1.248.0, new DataSource `alicloud.cs.getClusterCredential` is recommended to manage cluster's kubeconfig, you can also save the certificate_authority.client_key attribute content of new DataSource `alicloud.cs.getClusterCredential` to an appropriate path(like ~/.kube/client-key.pem) for replace it.
  final pulumi.Input<String>? clientKey;

  /// From version 1.248.0, new DataSource `alicloud.cs.getClusterCredential` is recommended to manage cluster's kubeconfig, you can also save the certificate_authority.cluster_cert attribute content of new DataSource `alicloud.cs.getClusterCredential` to an appropriate path(like ~/.kube/cluster-ca-cert.pem) for replace it.
  ///
  /// *Removed params*
  final pulumi.Input<String>? clusterCaCert;

  /// The cluster specifications of kubernetes cluster,which can be empty. Valid values:
  /// * ack.standard : Standard edge clusters.
  /// * ack.pro.small : Professional edge clusters.
  final pulumi.Input<String>? clusterSpec;

  /// Whether to enable cluster deletion protection.
  final pulumi.Input<bool>? deletionProtection;

  /// Install cloud monitor agent on ECS. default: `true`.
  final pulumi.Input<bool>? installCloudMonitor;

  /// Enable to create advanced security group. default: false. See [Advanced security group](https://www.alibabacloud.com/help/doc-detail/120621.htm).
  final pulumi.Input<bool>? isEnterpriseSecurityGroup;

  /// The keypair of ssh login cluster node, you have to create it first. You have to specify one of `password` `key_name` `kms_encrypted_password` fields.
  final pulumi.Input<String>? keyName;

  /// The path of kube config, like ~/.kube/config. Please use the attribute output_file of new DataSource `alicloud.cs.getClusterCredential` to replace it.
  final pulumi.Input<String>? kubeConfig;

  /// The cluster api server load balance instance specification. For more information on how to select a LB instance specification, see [SLB instance overview](https://help.aliyun.com/document_detail/85931.html).
  /// -&gt;NOTE: If you want to use `Flannel` as CNI network plugin, You need to specific the `pod_cidr` field and addons with `flannel`.
  ///
  /// *Worker params*
  final pulumi.Input<String>? loadBalancerSpec;

  /// A list of one element containing information about the associated log store. See `log_config` below.
  final pulumi.Input<EdgeKubernetesLogConfig>? logConfig;

  /// The kubernetes cluster's name. It is unique in one Alicloud account.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? namePrefix;

  /// Whether to create a new nat gateway while creating kubernetes cluster. Default to true. Then openapi in Alibaba Cloud are not all on intranet, So turn this option on is a good choice.
  final pulumi.Input<bool>? newNatGateway;

  /// The node cidr block to specific how many pods can run on single node. 24-28 is allowed. 24 means 2^(32-24)-1=255 and the node can run at most 255 pods. default: 24
  final pulumi.Input<int>? nodeCidrMask;

  /// The password of ssh login cluster node. You have to specify one of `password`, `key_name` `kms_encrypted_password` fields.
  final pulumi.Input<String>? password;

  /// [Flannel Specific] The CIDR block for the pod network when using Flannel.
  final pulumi.Input<String>? podCidr;

  /// Proxy mode is option of kube-proxy. options: iptables|ipvs. default: ipvs.
  final pulumi.Input<String>? proxyMode;

  /// RDS instance list, You can choose which RDS instances whitelist to add instances to.
  final pulumi.Input<List<String>>? rdsInstances;

  /// The ID of the resource group,by default these cloud resources are automatically assigned to the default resource group.
  final pulumi.Input<String>? resourceGroupId;
  final pulumi.Input<List<String>>? retainResources;

  /// The runtime of containers. If you select another container runtime, see [Comparison of Docker, containerd, and Sandboxed-Container](https://www.alibabacloud.com/help/doc-detail/160313.htm). See `runtime` below.
  final pulumi.Input<EdgeKubernetesRuntime>? runtime;

  /// The ID of the security group to which the ECS instances in the cluster belong. If it is not specified, a new Security group will be built.
  final pulumi.Input<String>? securityGroupId;

  /// The CIDR block for the service network. It cannot be duplicated with the VPC CIDR and CIDR used by Kubernetes cluster in VPC, cannot be modified after creation.
  final pulumi.Input<String>? serviceCidr;

  /// Configure whether to save certificate authority data for your cluster to attribute `certificate_authority`. For cluster security, recommended configuration as `true`. Will be removed with attribute certificate_authority removed.
  ///
  /// *Network params*
  final pulumi.Input<bool>? skipSetCertificateAuthority;

  /// Whether to create internet load balancer for API Server. Default to true.
  final pulumi.Input<bool>? slbInternetEnabled;

  /// Default nil, A map of tags assigned to the kubernetes cluster and work node.
  final pulumi.Input<Map<String, String>>? tags;

  /// Windows instances support batch and PowerShell scripts. If your script file is larger than 1 KB, we recommend that you upload the script to Object Storage Service (OSS) and pull it through the internal endpoint of your OSS bucket.
  final pulumi.Input<String>? userData;

  /// Desired Kubernetes version. If you do not specify a value, the latest available version at resource creation is used and no upgrades will occur except you set a higher version number. The value must be configured and increased to upgrade the version when desired. Downgrades are not supported by ACK.
  final pulumi.Input<String>? version;

  /// The data disk configurations of worker nodes, such as the disk type and disk size. See `worker_data_disks` below.
  final pulumi.Input<List<EdgeKubernetesWorkerDataDisk>>? workerDataDisks;

  /// The system disk category of worker node. Its valid value are `cloud_efficiency`, `cloud_ssd` and `cloud_essd` and . Default to `cloud_efficiency`.
  final pulumi.Input<String>? workerDiskCategory;

  /// Worker node system disk performance level, when `worker_disk_category` values `cloud_essd`, the optional values are `PL0`, `PL1`, `PL2` or `PL3`, but the specific performance level is related to the disk capacity. For more information, see [Enhanced SSDs](https://www.alibabacloud.com/help/doc-detail/122389.htm). Default is `PL1`.
  final pulumi.Input<String>? workerDiskPerformanceLevel;

  /// The system disk size of worker node. Its valid value range [20~32768] in GB. Default to 40.
  final pulumi.Input<int>? workerDiskSize;

  /// Worker node system disk auto snapshot policy.
  ///
  /// *Computed params*
  ///
  /// You can set some file paths to save kube_config information, but this way is cumbersome. Since version 1.105.0, we've written it to tf state file. About its use，see export attribute certificate_authority. From version 1.187.0+, new DataSource `alicloud.cs.getClusterCredential` is recommended to manage cluster's kube_config.
  final pulumi.Input<String>? workerDiskSnapshotPolicyId;

  /// Worker payment type, its valid value is `PostPaid`. Defaults to `PostPaid`. More charge details in [ACK@edge charge](https://help.aliyun.com/document_detail/178718.html).
  final pulumi.Input<String>? workerInstanceChargeType;

  /// The instance types of worker node, you can set multiple types to avoid NoStock of a certain type.
  final pulumi.Input<List<String>> workerInstanceTypes;

  /// The cloud worker node number of the edge kubernetes cluster. Default to 1. It is limited up to 50 and if you want to enlarge it, please apply white list or contact with us.
  final pulumi.Input<int> workerNumber;

  /// The vswitches used by workers.
  final pulumi.Input<List<String>> workerVswitchIds;

  /// Creates a new [EdgeKubernetesArgs].
  /// [addons] The addon you want to install in cluster. See `addons` below.
  /// [availabilityZone] The ID of availability zone.
  /// [clientCert] From version 1.248.0, new DataSource `alicloud.cs.getClusterCredential` is recommended to manage cluster's kubeconfig, you can also save the certificate_authority.client_cert attribute content of new DataSource `alicloud.cs.getClusterCredential` to an appropriate path(like ~/.kube/client-cert.pem) for replace it.
  /// [clientKey] From version 1.248.0, new DataSource `alicloud.cs.getClusterCredential` is recommended to manage cluster's kubeconfig, you can also save the certificate_authority.client_key attribute content of new DataSource `alicloud.cs.getClusterCredential` to an appropriate path(like ~/.kube/client-key.pem) for replace it.
  /// [clusterCaCert] From version 1.248.0, new DataSource `alicloud.cs.getClusterCredential` is recommended to manage cluster's kubeconfig, you can also save the certificate_authority.cluster_cert attribute content of new DataSource `alicloud.cs.getClusterCredential` to an appropriate path(like ~/.kube/cluster-ca-cert.pem) for replace it.
  /// [clusterSpec] The cluster specifications of kubernetes cluster,which can be empty. Valid values:
  /// [deletionProtection] Whether to enable cluster deletion protection.
  /// [installCloudMonitor] Install cloud monitor agent on ECS. default: `true`.
  /// [isEnterpriseSecurityGroup] Enable to create advanced security group. default: false. See [Advanced security group](https://www.alibabacloud.com/help/doc-detail/120621.htm).
  /// [keyName] The keypair of ssh login cluster node, you have to create it first. You have to specify one of `password` `key_name` `kms_encrypted_password` fields.
  /// [kubeConfig] The path of kube config, like ~/.kube/config. Please use the attribute output_file of new DataSource `alicloud.cs.getClusterCredential` to replace it.
  /// [loadBalancerSpec] The cluster api server load balance instance specification. For more information on how to select a LB instance specification, see [SLB instance overview](https://help.aliyun.com/document_detail/85931.html).
  /// [logConfig] A list of one element containing information about the associated log store. See `log_config` below.
  /// [name] The kubernetes cluster's name. It is unique in one Alicloud account.
  /// [namePrefix] Optional.
  /// [newNatGateway] Whether to create a new nat gateway while creating kubernetes cluster. Default to true. Then openapi in Alibaba Cloud are not all on intranet, So turn this option on is a good choice.
  /// [nodeCidrMask] The node cidr block to specific how many pods can run on single node. 24-28 is allowed. 24 means 2^(32-24)-1=255 and the node can run at most 255 pods. default: 24
  /// [password] The password of ssh login cluster node. You have to specify one of `password`, `key_name` `kms_encrypted_password` fields.
  /// [podCidr] [Flannel Specific] The CIDR block for the pod network when using Flannel.
  /// [proxyMode] Proxy mode is option of kube-proxy. options: iptables|ipvs. default: ipvs.
  /// [rdsInstances] RDS instance list, You can choose which RDS instances whitelist to add instances to.
  /// [resourceGroupId] The ID of the resource group,by default these cloud resources are automatically assigned to the default resource group.
  /// [retainResources] Optional.
  /// [runtime] The runtime of containers. If you select another container runtime, see [Comparison of Docker, containerd, and Sandboxed-Container](https://www.alibabacloud.com/help/doc-detail/160313.htm). See `runtime` below.
  /// [securityGroupId] The ID of the security group to which the ECS instances in the cluster belong. If it is not specified, a new Security group will be built.
  /// [serviceCidr] The CIDR block for the service network. It cannot be duplicated with the VPC CIDR and CIDR used by Kubernetes cluster in VPC, cannot be modified after creation.
  /// [skipSetCertificateAuthority] Configure whether to save certificate authority data for your cluster to attribute `certificate_authority`. For cluster security, recommended configuration as `true`. Will be removed with attribute certificate_authority removed.
  /// [slbInternetEnabled] Whether to create internet load balancer for API Server. Default to true.
  /// [tags] Default nil, A map of tags assigned to the kubernetes cluster and work node.
  /// [userData] Windows instances support batch and PowerShell scripts. If your script file is larger than 1 KB, we recommend that you upload the script to Object Storage Service (OSS) and pull it through the internal endpoint of your OSS bucket.
  /// [version] Desired Kubernetes version. If you do not specify a value, the latest available version at resource creation is used and no upgrades will occur except you set a higher version number. The value must be configured and increased to upgrade the version when desired. Downgrades are not supported by ACK.
  /// [workerDataDisks] The data disk configurations of worker nodes, such as the disk type and disk size. See `worker_data_disks` below.
  /// [workerDiskCategory] The system disk category of worker node. Its valid value are `cloud_efficiency`, `cloud_ssd` and `cloud_essd` and . Default to `cloud_efficiency`.
  /// [workerDiskPerformanceLevel] Worker node system disk performance level, when `worker_disk_category` values `cloud_essd`, the optional values are `PL0`, `PL1`, `PL2` or `PL3`, but the specific performance level is related to the disk capacity. For more information, see [Enhanced SSDs](https://www.alibabacloud.com/help/doc-detail/122389.htm). Default is `PL1`.
  /// [workerDiskSize] The system disk size of worker node. Its valid value range [20~32768] in GB. Default to 40.
  /// [workerDiskSnapshotPolicyId] Worker node system disk auto snapshot policy.
  /// [workerInstanceChargeType] Worker payment type, its valid value is `PostPaid`. Defaults to `PostPaid`. More charge details in [ACK@edge charge](https://help.aliyun.com/document_detail/178718.html).
  /// [workerInstanceTypes] The instance types of worker node, you can set multiple types to avoid NoStock of a certain type.
  /// [workerNumber] The cloud worker node number of the edge kubernetes cluster. Default to 1. It is limited up to 50 and if you want to enlarge it, please apply white list or contact with us.
  /// [workerVswitchIds] The vswitches used by workers.
  EdgeKubernetesArgs({
    this.addons,
    this.availabilityZone,
    this.clientCert,
    this.clientKey,
    this.clusterCaCert,
    this.clusterSpec,
    this.deletionProtection,
    this.installCloudMonitor,
    this.isEnterpriseSecurityGroup,
    this.keyName,
    this.kubeConfig,
    this.loadBalancerSpec,
    this.logConfig,
    this.name,
    this.namePrefix,
    this.newNatGateway,
    this.nodeCidrMask,
    this.password,
    this.podCidr,
    this.proxyMode,
    this.rdsInstances,
    this.resourceGroupId,
    this.retainResources,
    this.runtime,
    this.securityGroupId,
    this.serviceCidr,
    this.skipSetCertificateAuthority,
    this.slbInternetEnabled,
    this.tags,
    this.userData,
    this.version,
    this.workerDataDisks,
    this.workerDiskCategory,
    this.workerDiskPerformanceLevel,
    this.workerDiskSize,
    this.workerDiskSnapshotPolicyId,
    this.workerInstanceChargeType,
    required this.workerInstanceTypes,
    required this.workerNumber,
    required this.workerVswitchIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addons':
          ?pulumi.Input.mapOptionalInputValue<
            List<EdgeKubernetesAddon>,
            List<Map<String, dynamic>>
          >(
            addons,
            (value) =>
                pulumi.Input.encodeList<
                  EdgeKubernetesAddon,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'availabilityZone': ?availabilityZone,
      'clientCert': ?clientCert,
      'clientKey': ?clientKey,
      'clusterCaCert': ?clusterCaCert,
      'clusterSpec': ?clusterSpec,
      'deletionProtection': ?deletionProtection,
      'installCloudMonitor': ?installCloudMonitor,
      'isEnterpriseSecurityGroup': ?isEnterpriseSecurityGroup,
      'keyName': ?keyName,
      'kubeConfig': ?kubeConfig,
      'loadBalancerSpec': ?loadBalancerSpec,
      'logConfig':
          ?pulumi.Input.mapOptionalInputValue<
            EdgeKubernetesLogConfig,
            Map<String, dynamic>
          >(logConfig, (value) => value.toMap()),
      'name': ?name,
      'namePrefix': ?namePrefix,
      'newNatGateway': ?newNatGateway,
      'nodeCidrMask': ?nodeCidrMask,
      'password': ?password,
      'podCidr': ?podCidr,
      'proxyMode': ?proxyMode,
      'rdsInstances': ?rdsInstances,
      'resourceGroupId': ?resourceGroupId,
      'retainResources': ?retainResources,
      'runtime':
          ?pulumi.Input.mapOptionalInputValue<
            EdgeKubernetesRuntime,
            Map<String, dynamic>
          >(runtime, (value) => value.toMap()),
      'securityGroupId': ?securityGroupId,
      'serviceCidr': ?serviceCidr,
      'skipSetCertificateAuthority': ?skipSetCertificateAuthority,
      'slbInternetEnabled': ?slbInternetEnabled,
      'tags': ?tags,
      'userData': ?userData,
      'version': ?version,
      'workerDataDisks':
          ?pulumi.Input.mapOptionalInputValue<
            List<EdgeKubernetesWorkerDataDisk>,
            List<Map<String, dynamic>>
          >(
            workerDataDisks,
            (value) =>
                pulumi.Input.encodeList<
                  EdgeKubernetesWorkerDataDisk,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'workerDiskCategory': ?workerDiskCategory,
      'workerDiskPerformanceLevel': ?workerDiskPerformanceLevel,
      'workerDiskSize': ?workerDiskSize,
      'workerDiskSnapshotPolicyId': ?workerDiskSnapshotPolicyId,
      'workerInstanceChargeType': ?workerInstanceChargeType,
      'workerInstanceTypes': workerInstanceTypes,
      'workerNumber': workerNumber,
      'workerVswitchIds': workerVswitchIds,
    };
  }

  factory EdgeKubernetesArgs.fromMap(Map<String, dynamic> map) {
    return EdgeKubernetesArgs(
      addons: (() {
        final guardedValue = map['addons'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<EdgeKubernetesAddon>(
            guardedValue,
            (value) => EdgeKubernetesAddon.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      availabilityZone: (() {
        final guardedValue = map['availabilityZone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clientCert: (() {
        final guardedValue = map['clientCert'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clientKey: (() {
        final guardedValue = map['clientKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clusterCaCert: (() {
        final guardedValue = map['clusterCaCert'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clusterSpec: (() {
        final guardedValue = map['clusterSpec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      deletionProtection: (() {
        final guardedValue = map['deletionProtection'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      installCloudMonitor: (() {
        final guardedValue = map['installCloudMonitor'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      isEnterpriseSecurityGroup: (() {
        final guardedValue = map['isEnterpriseSecurityGroup'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      keyName: (() {
        final guardedValue = map['keyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kubeConfig: (() {
        final guardedValue = map['kubeConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      loadBalancerSpec: (() {
        final guardedValue = map['loadBalancerSpec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      logConfig: (() {
        final guardedValue = map['logConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EdgeKubernetesLogConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      namePrefix: (() {
        final guardedValue = map['namePrefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      newNatGateway: (() {
        final guardedValue = map['newNatGateway'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      nodeCidrMask: (() {
        final guardedValue = map['nodeCidrMask'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      password: (() {
        final guardedValue = map['password'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      podCidr: (() {
        final guardedValue = map['podCidr'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      proxyMode: (() {
        final guardedValue = map['proxyMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      rdsInstances: (() {
        final guardedValue = map['rdsInstances'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      retainResources: (() {
        final guardedValue = map['retainResources'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      runtime: (() {
        final guardedValue = map['runtime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EdgeKubernetesRuntime.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      securityGroupId: (() {
        final guardedValue = map['securityGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceCidr: (() {
        final guardedValue = map['serviceCidr'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      skipSetCertificateAuthority: (() {
        final guardedValue = map['skipSetCertificateAuthority'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      slbInternetEnabled: (() {
        final guardedValue = map['slbInternetEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      userData: (() {
        final guardedValue = map['userData'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      workerDataDisks: (() {
        final guardedValue = map['workerDataDisks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<EdgeKubernetesWorkerDataDisk>(
            guardedValue,
            (value) => EdgeKubernetesWorkerDataDisk.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      workerDiskCategory: (() {
        final guardedValue = map['workerDiskCategory'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      workerDiskPerformanceLevel: (() {
        final guardedValue = map['workerDiskPerformanceLevel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      workerDiskSize: (() {
        final guardedValue = map['workerDiskSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      workerDiskSnapshotPolicyId: (() {
        final guardedValue = map['workerDiskSnapshotPolicyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      workerInstanceChargeType: (() {
        final guardedValue = map['workerInstanceChargeType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      workerInstanceTypes: pulumi.Input.fromValue(
        (map['workerInstanceTypes'] as List).cast<String>(),
      ),
      workerNumber: pulumi.Input.fromValue(map['workerNumber'] as int),
      workerVswitchIds: pulumi.Input.fromValue(
        (map['workerVswitchIds'] as List).cast<String>(),
      ),
    );
  }
}
