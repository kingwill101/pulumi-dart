// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_pool_auto_mode.dart';
import 'node_pool_data_disk.dart';
import 'node_pool_eflo_node_group.dart';
import 'node_pool_instance_metadata_options.dart';
import 'node_pool_instance_pattern.dart';
import 'node_pool_kubelet_configuration.dart';
import 'node_pool_label.dart';
import 'node_pool_management.dart';
import 'node_pool_private_pool_options.dart';
import 'node_pool_rolling_policy.dart';
import 'node_pool_scaling_config.dart';
import 'node_pool_spot_price_limit.dart';
import 'node_pool_taint.dart';
import 'node_pool_tee_config.dart';
import 'node_pool_upgrade_policy.dart';

/// {@template pulumi_cs_node_pool_node_pool_args_doc}
/// The set of arguments for NodePool.
/// {@endtemplate}
/// {@macro pulumi_cs_node_pool_node_pool_args_doc}
class NodePoolArgs {
  /// Whether to enable auto mode. When enabled, the system will automatically manage the node pool with optimized default configurations. **Note:** When `auto_mode` is enabled, many parameters will be automatically set to default values and cannot be modified. See `auto_mode.enable` below for details. See `auto_mode` below.
  final pulumi.Input<NodePoolAutoMode>? autoMode;
  /// Whether to enable automatic renewal for nodes in the node pool takes effect only when `instance_charge_type` is set to `PrePaid`. Default value: `false`. Valid values:
  final pulumi.Input<bool>? autoRenew;
  /// The automatic renewal period of nodes in the node pool takes effect only when you select Prepaid and Automatic Renewal, and is a required value. When `PeriodUnit = Month`, the value range is {1, 2, 3, 6, 12}. Default value: 1.
  final pulumi.Input<int>? autoRenewPeriod;
  /// Whether enable worker node to support cis security reinforcement, its valid value `true` or `false`. Default to `false` and apply to AliyunLinux series. Use `security_hardening_os` instead.
  final pulumi.Input<bool>? cisEnabled;
  /// The id of kubernetes cluster.
  final pulumi.Input<String> clusterId;
  /// Specifies whether to automatically create pay-as-you-go instances to meet the required number of ECS instances if preemptible instances cannot be created due to reasons such as cost or insufficient inventory. This parameter takes effect when you set `multi_az_policy` to `COST_OPTIMIZED`. Valid values: `true`: automatically creates pay-as-you-go instances to meet the required number of ECS instances if preemptible instances cannot be created. `false`: does not create pay-as-you-go instances to meet the required number of ECS instances if preemptible instances cannot be created.
  final pulumi.Input<bool>? compensateWithOnDemand;
  /// Node CPU management policies. Default value: `none`. When the cluster version is 1.12.6 or later, the following two policies are supported:
  final pulumi.Input<String>? cpuPolicy;
  /// Configure the data disk of the node in the node pool. See `data_disks` below.
  final pulumi.Input<List<NodePoolDataDisk>>? dataDisks;
  /// The deployment set of node pool. Specify the deploymentSet to ensure that the nodes in the node pool can be distributed on different physical machines.
  final pulumi.Input<String>? deploymentSetId;
  /// Number of expected nodes in the node pool.
  final pulumi.Input<String>? desiredSize;
  /// Lingjun node pool configuration. See `eflo_node_group` below.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<NodePoolEfloNodeGroup>? efloNodeGroup;
  /// Whether to force deletion.
  ///
  /// > **NOTE:** This parameter only takes effect when deletion is triggered.
  final pulumi.Input<bool>? forceDelete;
  /// After you select this check box, if data disks have been attached to the specified ECS instances and the file system of the last data disk is uninitialized, the system automatically formats the last data disk to ext4 and mounts the data disk to /var/lib/docker and /var/lib/kubelet. The original data on the disk will be cleared. Make sure that you back up data in advance. If no data disk is mounted on the ECS instance, no new data disk will be purchased. Default is `false`.
  final pulumi.Input<bool>? formatDisk;
  /// The custom image ID. The system-provided image is used by default.
  final pulumi.Input<String>? imageId;
  /// The operating system image type and the `platform` parameter can be selected from the following values:
  /// - `AliyunLinux` : Alinux2 image.
  /// - `AliyunLinux3` : Alinux3 image.
  /// - `AliyunLinux3Arm64` : Alinux3 mirror ARM version.
  /// - `AliyunLinuxUEFI` : Alinux2 Image UEFI version.
  /// - `CentOS` : CentOS image.
  /// - `Windows` : Windows image.
  /// - `WindowsCore` : WindowsCore image.
  /// - `ContainerOS` : container-optimized image.
  /// - `Ubuntu`: Ubuntu image.
  /// - `AliyunLinux3ContainerOptimized`: Alinux3 container-optimized image.
  /// - `Custom`：Custom image.
  /// - `AliyunLinux4ContainerOptimized`：Alinux4 container-optimized image.
  final pulumi.Input<String>? imageType;
  /// Whether to install cloud monitoring on the ECS node. After installation, you can view the monitoring information of the created ECS instance in the cloud monitoring console and recommend enable it. Default value: `false`. Valid values:
  final pulumi.Input<bool>? installCloudMonitor;
  /// Node payment type. Valid values: `PostPaid`, `PrePaid`, default is `PostPaid`. If value is `PrePaid`, the arguments `period`, `period_unit`, `auto_renew` and `auto_renew_period` are required.
  final pulumi.Input<String>? instanceChargeType;
  /// ECS instance metadata access configuration. See `instance_metadata_options` below.
  final pulumi.Input<NodePoolInstanceMetadataOptions>? instanceMetadataOptions;
  /// Instance property configuration. See `instance_patterns` below.
  final pulumi.Input<List<NodePoolInstancePattern>>? instancePatterns;
  /// In the node instance specification list, you can select multiple instance specifications as alternatives. When each node is created, it will try to purchase from the first specification until it is created successfully. The final purchased instance specifications may vary with inventory changes.
  final pulumi.Input<List<String>>? instanceTypes;
  /// The instance list. Add existing nodes under the same cluster VPC to the node pool.
  final pulumi.Input<List<String>>? instances;
  /// The billing method for network usage. Valid values `PayByBandwidth` and `PayByTraffic`. Conflict with `eip_internet_charge_type`, EIP and public network IP can only choose one.
  final pulumi.Input<String>? internetChargeType;
  /// The maximum bandwidth of the public IP address of the node. The unit is Mbps(Mega bit per second). The value range is:\[1,100\]
  final pulumi.Input<int>? internetMaxBandwidthOut;
  /// Add an existing instance to the node pool, whether to keep the original instance name. It is recommended to set to `true`.
  final pulumi.Input<bool>? keepInstanceName;
  /// The name of the key pair. When the node pool is a managed node pool, only `key_name` is supported.
  final pulumi.Input<String>? keyName;
  /// An KMS encrypts password used to a cs kubernetes. You have to specify one of `password` `key_name` `kms_encrypted_password` fields.
  final pulumi.Input<String>? kmsEncryptedPassword;
  /// An KMS encryption context used to decrypt `kms_encrypted_password` before creating or updating a cs kubernetes with `kms_encrypted_password`. See [Encryption Context](https://www.alibabacloud.com/help/doc-detail/42975.htm). It is valid when `kms_encrypted_password` is set.
  final pulumi.Input<Map<String, String>>? kmsEncryptionContext;
  /// Kubelet configuration parameters for worker nodes. See `kubelet_configuration` below. More information in [Kubelet Configuration](https://kubernetes.io/docs/reference/config-api/kubelet-config.v1beta1/). See `kubelet_configuration` below.
  final pulumi.Input<NodePoolKubeletConfiguration>? kubeletConfiguration;
  /// A List of Kubernetes labels to assign to the nodes . Only labels that are applied with the ACK API are managed by this argument. Detailed below. More information in [Labels](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/). See `labels` below.
  final pulumi.Input<List<NodePoolLabel>>? labels;
  /// Whether the ECS instance is logged on as a ecs-user user. Valid value: `true` and `false`.
  final pulumi.Input<bool>? loginAsNonRoot;
  /// Managed node pool configuration. See `management` below.
  final pulumi.Input<NodePoolManagement>? management;
  /// The scaling policy for ECS instances in a multi-zone scaling group. Valid value: `PRIORITY`, `COST_OPTIMIZED` and `BALANCE`. `PRIORITY`: scales the capacity according to the virtual switches you define (VSwitchIds.N). When an ECS instance cannot be created in the zone where the higher-priority vSwitch is located, the next-priority vSwitch is automatically used to create an ECS instance. `COST_OPTIMIZED`: try to create by vCPU unit price from low to high. When the scaling configuration is configured with multiple instances of preemptible billing, preemptible instances are created first. You can continue to use the `CompensateWithOnDemand` parameter to specify whether to automatically try to create a preemptible instance by paying for it. It takes effect only when the scaling configuration has multi-instance specifications or preemptible instances. `BALANCE`: distributes ECS instances evenly among the multi-zone specified by the scaling group. If the zones become unbalanced due to insufficient inventory, you can use the API RebalanceInstances to balance resources.
  final pulumi.Input<String>? multiAzPolicy;
  /// . Field 'name' has been deprecated from provider version 1.219.0. New field 'node_pool_name' instead.
  final pulumi.Input<String>? name;
  /// The worker node number of the node pool. From version 1.111.0, `node_count` is not required.
  final pulumi.Input<int>? nodeCount;
  /// Each node name consists of a prefix, its private network IP, and a suffix, separated by commas. The input format is `customized,,ip,`.
  /// - The prefix and suffix can be composed of one or more parts separated by '.', each part can use lowercase letters, numbers and '-', and the beginning and end of the node name must be lowercase letters and numbers.
  /// - The node IP address is the complete private IP address of the node.
  /// - For example, if the string `customized,aliyun,ip,com` is passed in (where 'customized' and 'ip' are fixed strings, 'aliyun' is the prefix, and 'com' is the suffix), the name of the node is `aliyun192.168.xxx.xxxcom`.
  final pulumi.Input<String>? nodeNameMode;
  /// The name of node pool.
  final pulumi.Input<String>? nodePoolName;
  /// The minimum number of pay-as-you-go instances that must be kept in the scaling group. Valid values: 0 to 1000. If the number of pay-as-you-go instances is less than the value of this parameter, Auto Scaling preferably creates pay-as-you-go instances.
  final pulumi.Input<String>? onDemandBaseCapacity;
  /// The percentage of pay-as-you-go instances among the extra instances that exceed the number specified by `on_demand_base_capacity`. Valid values: 0 to 100.
  final pulumi.Input<String>? onDemandPercentageAboveBaseCapacity;
  /// The password of ssh login. You have to specify one of `password` and `key_name` fields. The password rule is 8 to 30 characters and contains at least three items (upper and lower case letters, numbers, and special symbols).
  final pulumi.Input<String>? password;
  /// Node payment period. Its valid value is one of {1, 2, 3, 6, 12}.
  final pulumi.Input<int>? period;
  /// Node payment period unit, valid value: `Month`. Default is `Month`.
  final pulumi.Input<String>? periodUnit;
  /// Operating system release, using `image_type` instead.
  final pulumi.Input<String>? platform;
  /// Node pre custom data, base64-encoded, the script executed before the node is initialized.
  final pulumi.Input<String>? preUserData;
  /// Private node pool configuration. See `private_pool_options` below.
  final pulumi.Input<NodePoolPrivatePoolOptions>? privatePoolOptions;
  /// The name of the Worker RAM role.
  /// * If it is empty, the default Worker RAM role created in the cluster will be used.
  /// * If the specified RAM role is not empty, the specified RAM role must be a **Common Service role**, and its **trusted service** configuration must be **cloud server**. For more information, see [Create a common service role](https://help.aliyun.com/document_detail/116800.html). If the specified RAM role is not the default Worker RAM role created in the cluster, the role name cannot start with 'KubernetesMasterRole-'or 'KubernetesWorkerRole.
  ///
  /// > **NOTE:**  This parameter is only supported for ACK-managed clusters of 1.22 or later versions.
  final pulumi.Input<String>? ramRoleName;
  /// The list of RDS instances.
  final pulumi.Input<List<String>>? rdsInstances;
  /// The ID of the resource group
  final pulumi.Input<String>? resourceGroupId;
  final pulumi.Input<NodePoolRollingPolicy>? rollingPolicy;
  /// The runtime name of containers. If not set, the cluster runtime will be used as the node pool runtime. If you select another container runtime, see [Comparison of Docker, containerd, and Sandboxed-Container](https://www.alibabacloud.com/help/doc-detail/160313.htm).
  final pulumi.Input<String>? runtimeName;
  /// The runtime version of containers. If not set, the cluster runtime will be used as the node pool runtime.
  final pulumi.Input<String>? runtimeVersion;
  /// Automatic scaling configuration. See `scaling_config` below.
  final pulumi.Input<NodePoolScalingConfig>? scalingConfig;
  /// Scaling group mode, default value: `release`. Valid values:
  final pulumi.Input<String>? scalingPolicy;
  /// The security group ID of the node pool. This field has been replaced by `security_group_ids`, please use the `security_group_ids` field instead.
  final pulumi.Input<String>? securityGroupId;
  /// Multiple security groups can be configured for a node pool. If both `security_group_ids` and `security_group_id` are configured, `security_group_ids` takes effect. This field cannot be modified.
  final pulumi.Input<List<String>>? securityGroupIds;
  /// Alibaba Cloud OS security reinforcement. Default value: `false`. Value:
  final pulumi.Input<bool>? securityHardeningOs;
  /// Whether enable worker node to support soc security reinforcement, its valid value `true` or `false`. Default to `false` and apply to AliyunLinux series. See [SOC Reinforcement](https://help.aliyun.com/document_detail/196148.html).
  ///
  /// > **NOTE:**  It is forbidden to set both `security_hardening_os` and `soc_enabled` to `true` at the same time.
  final pulumi.Input<bool>? socEnabled;
  /// The number of instance types that are available. Auto Scaling creates preemptible instances of multiple instance types that are available at the lowest cost. Valid values: 1 to 10.
  final pulumi.Input<int>? spotInstancePools;
  /// Specifies whether to supplement preemptible instances when the number of preemptible instances drops below the specified minimum number. If you set the value to true, Auto Scaling attempts to create a new preemptible instance when the system notifies that an existing preemptible instance is about to be reclaimed. Valid values: `true`: enables the supplementation of preemptible instances. `false`: disables the supplementation of preemptible instances.
  final pulumi.Input<bool>? spotInstanceRemedy;
  /// The current single preemptible instance type market price range configuration. See `spot_price_limit` below.
  final pulumi.Input<List<NodePoolSpotPriceLimit>>? spotPriceLimits;
  /// The preemptible instance type. Value:
  /// - `NoSpot` : Non-preemptible instance.
  /// - `SpotWithPriceLimit` : Set the upper limit of the preemptible instance price.
  /// - `SpotAsPriceGo` : The system automatically bids, following the actual price of the current market.
  final pulumi.Input<String>? spotStrategy;
  /// Specifies whether to enable the burst feature for system disks. Valid values:`true`: enables the burst feature. `false`: disables the burst feature. This parameter is supported only when `system_disk_category` is set to `cloud_auto`.
  final pulumi.Input<bool>? systemDiskBurstingEnabled;
  /// The multi-disk categories of the system disk. When a high-priority disk type cannot be used, Auto Scaling automatically tries to create a system disk with the next priority disk category. Valid values see `system_disk_category`.
  final pulumi.Input<List<String>>? systemDiskCategories;
  /// The category of the system disk for nodes. Default value: `cloud_efficiency`. Valid values:
  final pulumi.Input<String>? systemDiskCategory;
  /// The encryption algorithm used by the system disk. Value range: aes-256.
  final pulumi.Input<String>? systemDiskEncryptAlgorithm;
  /// Whether to encrypt the system disk. Value range: `true`: encryption. `false`: Do not encrypt.
  final pulumi.Input<bool>? systemDiskEncrypted;
  /// The ID of the KMS key used by the system disk.
  final pulumi.Input<String>? systemDiskKmsKey;
  /// The system disk performance of the node takes effect only for the ESSD disk.
  /// - `PL0`: maximum random read/write IOPS 10000 for a single disk.
  /// - `PL1`: maximum random read/write IOPS 50000 for a single disk.
  /// - `PL2`: highest random read/write IOPS 100000 for a single disk.
  /// - `PL3`: maximum random read/write IOPS 1 million for a single disk.
  final pulumi.Input<String>? systemDiskPerformanceLevel;
  /// The predefined IOPS of a system disk. Valid values: 0 to min{50,000, 1,000 × Capacity - Baseline IOPS}. Baseline IOPS = min{1,800 + 50 × Capacity, 50,000}. This parameter is supported only when `system_disk_category` is set to `cloud_auto`.
  final pulumi.Input<int>? systemDiskProvisionedIops;
  /// The size of the system disk. Unit: GiB. The value of this parameter must be at least 1 and greater than or equal to the image size. Default value: 40 or the size of the image, whichever is larger.
  /// - Basic disk: 20 to 500.
  /// - ESSD (cloud_essd): The valid values vary based on the performance level of the ESSD. PL0 ESSD: 1 to 2048. PL1 ESSD: 20 to 2048. PL2 ESSD: 461 to 2048. PL3 ESSD: 1261 to 2048.
  /// - ESSD AutoPL disk (cloud_auto): 1 to 2048.
  /// - Other disk categories: 20 to 2048.
  final pulumi.Input<int>? systemDiskSize;
  /// The ID of the automatic snapshot policy used by the system disk.
  final pulumi.Input<String>? systemDiskSnapshotPolicyId;
  /// Add tags only for ECS instances. The maximum length of the tag key is 128 characters. The tag key and value cannot start with aliyun or acs:, or contain https:// or http://.
  final pulumi.Input<Map<String, String>>? tags;
  /// A List of Kubernetes taints to assign to the nodes. Detailed below. More information in [Taints and Toleration](https://kubernetes.io/docs/concepts/scheduling-eviction/taint-and-toleration/). See `taints` below.
  final pulumi.Input<List<NodePoolTaint>>? taints;
  /// The configuration about confidential computing for the cluster. See `tee_config` below.
  final pulumi.Input<NodePoolTeeConfig>? teeConfig;
  /// Node pool type, value range:
  /// -'ess': common node pool (including hosting function and auto scaling function).
  /// -'lingjun': Lingjun node pool.
  final pulumi.Input<String>? type;
  /// Whether the node after expansion can be scheduled.
  final pulumi.Input<bool>? unschedulable;
  final pulumi.Input<bool>? updateNodes;
  /// Configuration block for node pool upgrade operations. This is a transient parameter that triggers node pool upgrades when specified. Once the upgrade completes, this block should be removed from your configuration to prevent unintended re-upgrades on subsequent applies. See `upgrade_policy` below.
  ///
  /// > **NOTE:** This parameter only applies during resource update.
  final pulumi.Input<NodePoolUpgradePolicy>? upgradePolicy;
  /// Node custom data, base64-encoded.
  final pulumi.Input<String>? userData;
  /// The vswitches used by node pool workers.
  final pulumi.Input<List<String>>? vswitchIds;

  /// Creates a new [NodePoolArgs].
  /// [autoMode] Whether to enable auto mode. When enabled, the system will automatically manage the node pool with optimized default configurations. **Note:** When `auto_mode` is enabled, many parameters will be automatically set to default values and cannot be modified. See `auto_mode.enable` below for details. See `auto_mode` below.
  /// [autoRenew] Whether to enable automatic renewal for nodes in the node pool takes effect only when `instance_charge_type` is set to `PrePaid`. Default value: `false`. Valid values:
  /// [autoRenewPeriod] The automatic renewal period of nodes in the node pool takes effect only when you select Prepaid and Automatic Renewal, and is a required value. When `PeriodUnit = Month`, the value range is {1, 2, 3, 6, 12}. Default value: 1.
  /// [cisEnabled] Whether enable worker node to support cis security reinforcement, its valid value `true` or `false`. Default to `false` and apply to AliyunLinux series. Use `security_hardening_os` instead.
  /// [clusterId] The id of kubernetes cluster.
  /// [compensateWithOnDemand] Specifies whether to automatically create pay-as-you-go instances to meet the required number of ECS instances if preemptible instances cannot be created due to reasons such as cost or insufficient inventory. This parameter takes effect when you set `multi_az_policy` to `COST_OPTIMIZED`. Valid values: `true`: automatically creates pay-as-you-go instances to meet the required number of ECS instances if preemptible instances cannot be created. `false`: does not create pay-as-you-go instances to meet the required number of ECS instances if preemptible instances cannot be created.
  /// [cpuPolicy] Node CPU management policies. Default value: `none`. When the cluster version is 1.12.6 or later, the following two policies are supported:
  /// [dataDisks] Configure the data disk of the node in the node pool. See `data_disks` below.
  /// [deploymentSetId] The deployment set of node pool. Specify the deploymentSet to ensure that the nodes in the node pool can be distributed on different physical machines.
  /// [desiredSize] Number of expected nodes in the node pool.
  /// [efloNodeGroup] Lingjun node pool configuration. See `eflo_node_group` below.
  /// [forceDelete] Whether to force deletion.
  /// [formatDisk] After you select this check box, if data disks have been attached to the specified ECS instances and the file system of the last data disk is uninitialized, the system automatically formats the last data disk to ext4 and mounts the data disk to /var/lib/docker and /var/lib/kubelet. The original data on the disk will be cleared. Make sure that you back up data in advance. If no data disk is mounted on the ECS instance, no new data disk will be purchased. Default is `false`.
  /// [imageId] The custom image ID. The system-provided image is used by default.
  /// [imageType] The operating system image type and the `platform` parameter can be selected from the following values:
  /// [installCloudMonitor] Whether to install cloud monitoring on the ECS node. After installation, you can view the monitoring information of the created ECS instance in the cloud monitoring console and recommend enable it. Default value: `false`. Valid values:
  /// [instanceChargeType] Node payment type. Valid values: `PostPaid`, `PrePaid`, default is `PostPaid`. If value is `PrePaid`, the arguments `period`, `period_unit`, `auto_renew` and `auto_renew_period` are required.
  /// [instanceMetadataOptions] ECS instance metadata access configuration. See `instance_metadata_options` below.
  /// [instancePatterns] Instance property configuration. See `instance_patterns` below.
  /// [instanceTypes] In the node instance specification list, you can select multiple instance specifications as alternatives. When each node is created, it will try to purchase from the first specification until it is created successfully. The final purchased instance specifications may vary with inventory changes.
  /// [instances] The instance list. Add existing nodes under the same cluster VPC to the node pool.
  /// [internetChargeType] The billing method for network usage. Valid values `PayByBandwidth` and `PayByTraffic`. Conflict with `eip_internet_charge_type`, EIP and public network IP can only choose one.
  /// [internetMaxBandwidthOut] The maximum bandwidth of the public IP address of the node. The unit is Mbps(Mega bit per second). The value range is:\[1,100\]
  /// [keepInstanceName] Add an existing instance to the node pool, whether to keep the original instance name. It is recommended to set to `true`.
  /// [keyName] The name of the key pair. When the node pool is a managed node pool, only `key_name` is supported.
  /// [kmsEncryptedPassword] An KMS encrypts password used to a cs kubernetes. You have to specify one of `password` `key_name` `kms_encrypted_password` fields.
  /// [kmsEncryptionContext] An KMS encryption context used to decrypt `kms_encrypted_password` before creating or updating a cs kubernetes with `kms_encrypted_password`. See [Encryption Context](https://www.alibabacloud.com/help/doc-detail/42975.htm). It is valid when `kms_encrypted_password` is set.
  /// [kubeletConfiguration] Kubelet configuration parameters for worker nodes. See `kubelet_configuration` below. More information in [Kubelet Configuration](https://kubernetes.io/docs/reference/config-api/kubelet-config.v1beta1/). See `kubelet_configuration` below.
  /// [labels] A List of Kubernetes labels to assign to the nodes . Only labels that are applied with the ACK API are managed by this argument. Detailed below. More information in [Labels](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/). See `labels` below.
  /// [loginAsNonRoot] Whether the ECS instance is logged on as a ecs-user user. Valid value: `true` and `false`.
  /// [management] Managed node pool configuration. See `management` below.
  /// [multiAzPolicy] The scaling policy for ECS instances in a multi-zone scaling group. Valid value: `PRIORITY`, `COST_OPTIMIZED` and `BALANCE`. `PRIORITY`: scales the capacity according to the virtual switches you define (VSwitchIds.N). When an ECS instance cannot be created in the zone where the higher-priority vSwitch is located, the next-priority vSwitch is automatically used to create an ECS instance. `COST_OPTIMIZED`: try to create by vCPU unit price from low to high. When the scaling configuration is configured with multiple instances of preemptible billing, preemptible instances are created first. You can continue to use the `CompensateWithOnDemand` parameter to specify whether to automatically try to create a preemptible instance by paying for it. It takes effect only when the scaling configuration has multi-instance specifications or preemptible instances. `BALANCE`: distributes ECS instances evenly among the multi-zone specified by the scaling group. If the zones become unbalanced due to insufficient inventory, you can use the API RebalanceInstances to balance resources.
  /// [name] . Field 'name' has been deprecated from provider version 1.219.0. New field 'node_pool_name' instead.
  /// [nodeCount] The worker node number of the node pool. From version 1.111.0, `node_count` is not required.
  /// [nodeNameMode] Each node name consists of a prefix, its private network IP, and a suffix, separated by commas. The input format is `customized,,ip,`.
  /// [nodePoolName] The name of node pool.
  /// [onDemandBaseCapacity] The minimum number of pay-as-you-go instances that must be kept in the scaling group. Valid values: 0 to 1000. If the number of pay-as-you-go instances is less than the value of this parameter, Auto Scaling preferably creates pay-as-you-go instances.
  /// [onDemandPercentageAboveBaseCapacity] The percentage of pay-as-you-go instances among the extra instances that exceed the number specified by `on_demand_base_capacity`. Valid values: 0 to 100.
  /// [password] The password of ssh login. You have to specify one of `password` and `key_name` fields. The password rule is 8 to 30 characters and contains at least three items (upper and lower case letters, numbers, and special symbols).
  /// [period] Node payment period. Its valid value is one of {1, 2, 3, 6, 12}.
  /// [periodUnit] Node payment period unit, valid value: `Month`. Default is `Month`.
  /// [platform] Operating system release, using `image_type` instead.
  /// [preUserData] Node pre custom data, base64-encoded, the script executed before the node is initialized.
  /// [privatePoolOptions] Private node pool configuration. See `private_pool_options` below.
  /// [ramRoleName] The name of the Worker RAM role.
  /// [rdsInstances] The list of RDS instances.
  /// [resourceGroupId] The ID of the resource group
  /// [rollingPolicy] Optional.
  /// [runtimeName] The runtime name of containers. If not set, the cluster runtime will be used as the node pool runtime. If you select another container runtime, see [Comparison of Docker, containerd, and Sandboxed-Container](https://www.alibabacloud.com/help/doc-detail/160313.htm).
  /// [runtimeVersion] The runtime version of containers. If not set, the cluster runtime will be used as the node pool runtime.
  /// [scalingConfig] Automatic scaling configuration. See `scaling_config` below.
  /// [scalingPolicy] Scaling group mode, default value: `release`. Valid values:
  /// [securityGroupId] The security group ID of the node pool. This field has been replaced by `security_group_ids`, please use the `security_group_ids` field instead.
  /// [securityGroupIds] Multiple security groups can be configured for a node pool. If both `security_group_ids` and `security_group_id` are configured, `security_group_ids` takes effect. This field cannot be modified.
  /// [securityHardeningOs] Alibaba Cloud OS security reinforcement. Default value: `false`. Value:
  /// [socEnabled] Whether enable worker node to support soc security reinforcement, its valid value `true` or `false`. Default to `false` and apply to AliyunLinux series. See [SOC Reinforcement](https://help.aliyun.com/document_detail/196148.html).
  /// [spotInstancePools] The number of instance types that are available. Auto Scaling creates preemptible instances of multiple instance types that are available at the lowest cost. Valid values: 1 to 10.
  /// [spotInstanceRemedy] Specifies whether to supplement preemptible instances when the number of preemptible instances drops below the specified minimum number. If you set the value to true, Auto Scaling attempts to create a new preemptible instance when the system notifies that an existing preemptible instance is about to be reclaimed. Valid values: `true`: enables the supplementation of preemptible instances. `false`: disables the supplementation of preemptible instances.
  /// [spotPriceLimits] The current single preemptible instance type market price range configuration. See `spot_price_limit` below.
  /// [spotStrategy] The preemptible instance type. Value:
  /// [systemDiskBurstingEnabled] Specifies whether to enable the burst feature for system disks. Valid values:`true`: enables the burst feature. `false`: disables the burst feature. This parameter is supported only when `system_disk_category` is set to `cloud_auto`.
  /// [systemDiskCategories] The multi-disk categories of the system disk. When a high-priority disk type cannot be used, Auto Scaling automatically tries to create a system disk with the next priority disk category. Valid values see `system_disk_category`.
  /// [systemDiskCategory] The category of the system disk for nodes. Default value: `cloud_efficiency`. Valid values:
  /// [systemDiskEncryptAlgorithm] The encryption algorithm used by the system disk. Value range: aes-256.
  /// [systemDiskEncrypted] Whether to encrypt the system disk. Value range: `true`: encryption. `false`: Do not encrypt.
  /// [systemDiskKmsKey] The ID of the KMS key used by the system disk.
  /// [systemDiskPerformanceLevel] The system disk performance of the node takes effect only for the ESSD disk.
  /// [systemDiskProvisionedIops] The predefined IOPS of a system disk. Valid values: 0 to min{50,000, 1,000 × Capacity - Baseline IOPS}. Baseline IOPS = min{1,800 + 50 × Capacity, 50,000}. This parameter is supported only when `system_disk_category` is set to `cloud_auto`.
  /// [systemDiskSize] The size of the system disk. Unit: GiB. The value of this parameter must be at least 1 and greater than or equal to the image size. Default value: 40 or the size of the image, whichever is larger.
  /// [systemDiskSnapshotPolicyId] The ID of the automatic snapshot policy used by the system disk.
  /// [tags] Add tags only for ECS instances. The maximum length of the tag key is 128 characters. The tag key and value cannot start with aliyun or acs:, or contain https:// or http://.
  /// [taints] A List of Kubernetes taints to assign to the nodes. Detailed below. More information in [Taints and Toleration](https://kubernetes.io/docs/concepts/scheduling-eviction/taint-and-toleration/). See `taints` below.
  /// [teeConfig] The configuration about confidential computing for the cluster. See `tee_config` below.
  /// [type] Node pool type, value range:
  /// [unschedulable] Whether the node after expansion can be scheduled.
  /// [updateNodes] Optional.
  /// [upgradePolicy] Configuration block for node pool upgrade operations. This is a transient parameter that triggers node pool upgrades when specified. Once the upgrade completes, this block should be removed from your configuration to prevent unintended re-upgrades on subsequent applies. See `upgrade_policy` below.
  /// [userData] Node custom data, base64-encoded.
  /// [vswitchIds] The vswitches used by node pool workers.
  NodePoolArgs({
    NodePoolAutoMode? autoMode,
    bool? autoRenew,
    int? autoRenewPeriod,
    bool? cisEnabled,
    required String clusterId,
    bool? compensateWithOnDemand,
    String? cpuPolicy,
    List<NodePoolDataDisk>? dataDisks,
    String? deploymentSetId,
    String? desiredSize,
    NodePoolEfloNodeGroup? efloNodeGroup,
    bool? forceDelete,
    bool? formatDisk,
    String? imageId,
    String? imageType,
    bool? installCloudMonitor,
    String? instanceChargeType,
    NodePoolInstanceMetadataOptions? instanceMetadataOptions,
    List<NodePoolInstancePattern>? instancePatterns,
    List<String>? instanceTypes,
    List<String>? instances,
    String? internetChargeType,
    int? internetMaxBandwidthOut,
    bool? keepInstanceName,
    String? keyName,
    String? kmsEncryptedPassword,
    Map<String, String>? kmsEncryptionContext,
    NodePoolKubeletConfiguration? kubeletConfiguration,
    List<NodePoolLabel>? labels,
    bool? loginAsNonRoot,
    NodePoolManagement? management,
    String? multiAzPolicy,
    String? name,
    int? nodeCount,
    String? nodeNameMode,
    String? nodePoolName,
    String? onDemandBaseCapacity,
    String? onDemandPercentageAboveBaseCapacity,
    String? password,
    int? period,
    String? periodUnit,
    String? platform,
    String? preUserData,
    NodePoolPrivatePoolOptions? privatePoolOptions,
    String? ramRoleName,
    List<String>? rdsInstances,
    String? resourceGroupId,
    NodePoolRollingPolicy? rollingPolicy,
    String? runtimeName,
    String? runtimeVersion,
    NodePoolScalingConfig? scalingConfig,
    String? scalingPolicy,
    String? securityGroupId,
    List<String>? securityGroupIds,
    bool? securityHardeningOs,
    bool? socEnabled,
    int? spotInstancePools,
    bool? spotInstanceRemedy,
    List<NodePoolSpotPriceLimit>? spotPriceLimits,
    String? spotStrategy,
    bool? systemDiskBurstingEnabled,
    List<String>? systemDiskCategories,
    String? systemDiskCategory,
    String? systemDiskEncryptAlgorithm,
    bool? systemDiskEncrypted,
    String? systemDiskKmsKey,
    String? systemDiskPerformanceLevel,
    int? systemDiskProvisionedIops,
    int? systemDiskSize,
    String? systemDiskSnapshotPolicyId,
    Map<String, String>? tags,
    List<NodePoolTaint>? taints,
    NodePoolTeeConfig? teeConfig,
    String? type,
    bool? unschedulable,
    bool? updateNodes,
    NodePoolUpgradePolicy? upgradePolicy,
    String? userData,
    List<String>? vswitchIds,
  }) :
      autoMode = pulumi.Input.asOptionalInput<NodePoolAutoMode>(autoMode),
      autoRenew = pulumi.Input.asOptionalInput<bool>(autoRenew),
      autoRenewPeriod = pulumi.Input.asOptionalInput<int>(autoRenewPeriod),
      cisEnabled = pulumi.Input.asOptionalInput<bool>(cisEnabled),
      clusterId = pulumi.Input.asInput<String>(clusterId),
      compensateWithOnDemand = pulumi.Input.asOptionalInput<bool>(compensateWithOnDemand),
      cpuPolicy = pulumi.Input.asOptionalInput<String>(cpuPolicy),
      dataDisks = pulumi.Input.asOptionalInput<List<NodePoolDataDisk>>(dataDisks),
      deploymentSetId = pulumi.Input.asOptionalInput<String>(deploymentSetId),
      desiredSize = pulumi.Input.asOptionalInput<String>(desiredSize),
      efloNodeGroup = pulumi.Input.asOptionalInput<NodePoolEfloNodeGroup>(efloNodeGroup),
      forceDelete = pulumi.Input.asOptionalInput<bool>(forceDelete),
      formatDisk = pulumi.Input.asOptionalInput<bool>(formatDisk),
      imageId = pulumi.Input.asOptionalInput<String>(imageId),
      imageType = pulumi.Input.asOptionalInput<String>(imageType),
      installCloudMonitor = pulumi.Input.asOptionalInput<bool>(installCloudMonitor),
      instanceChargeType = pulumi.Input.asOptionalInput<String>(instanceChargeType),
      instanceMetadataOptions = pulumi.Input.asOptionalInput<NodePoolInstanceMetadataOptions>(instanceMetadataOptions),
      instancePatterns = pulumi.Input.asOptionalInput<List<NodePoolInstancePattern>>(instancePatterns),
      instanceTypes = pulumi.Input.asOptionalInput<List<String>>(instanceTypes),
      instances = pulumi.Input.asOptionalInput<List<String>>(instances),
      internetChargeType = pulumi.Input.asOptionalInput<String>(internetChargeType),
      internetMaxBandwidthOut = pulumi.Input.asOptionalInput<int>(internetMaxBandwidthOut),
      keepInstanceName = pulumi.Input.asOptionalInput<bool>(keepInstanceName),
      keyName = pulumi.Input.asOptionalInput<String>(keyName),
      kmsEncryptedPassword = pulumi.Input.asOptionalInput<String>(kmsEncryptedPassword),
      kmsEncryptionContext = pulumi.Input.asOptionalInput<Map<String, String>>(kmsEncryptionContext),
      kubeletConfiguration = pulumi.Input.asOptionalInput<NodePoolKubeletConfiguration>(kubeletConfiguration),
      labels = pulumi.Input.asOptionalInput<List<NodePoolLabel>>(labels),
      loginAsNonRoot = pulumi.Input.asOptionalInput<bool>(loginAsNonRoot),
      management = pulumi.Input.asOptionalInput<NodePoolManagement>(management),
      multiAzPolicy = pulumi.Input.asOptionalInput<String>(multiAzPolicy),
      name = pulumi.Input.asOptionalInput<String>(name),
      nodeCount = pulumi.Input.asOptionalInput<int>(nodeCount),
      nodeNameMode = pulumi.Input.asOptionalInput<String>(nodeNameMode),
      nodePoolName = pulumi.Input.asOptionalInput<String>(nodePoolName),
      onDemandBaseCapacity = pulumi.Input.asOptionalInput<String>(onDemandBaseCapacity),
      onDemandPercentageAboveBaseCapacity = pulumi.Input.asOptionalInput<String>(onDemandPercentageAboveBaseCapacity),
      password = pulumi.Input.asOptionalInput<String>(password),
      period = pulumi.Input.asOptionalInput<int>(period),
      periodUnit = pulumi.Input.asOptionalInput<String>(periodUnit),
      platform = pulumi.Input.asOptionalInput<String>(platform),
      preUserData = pulumi.Input.asOptionalInput<String>(preUserData),
      privatePoolOptions = pulumi.Input.asOptionalInput<NodePoolPrivatePoolOptions>(privatePoolOptions),
      ramRoleName = pulumi.Input.asOptionalInput<String>(ramRoleName),
      rdsInstances = pulumi.Input.asOptionalInput<List<String>>(rdsInstances),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      rollingPolicy = pulumi.Input.asOptionalInput<NodePoolRollingPolicy>(rollingPolicy),
      runtimeName = pulumi.Input.asOptionalInput<String>(runtimeName),
      runtimeVersion = pulumi.Input.asOptionalInput<String>(runtimeVersion),
      scalingConfig = pulumi.Input.asOptionalInput<NodePoolScalingConfig>(scalingConfig),
      scalingPolicy = pulumi.Input.asOptionalInput<String>(scalingPolicy),
      securityGroupId = pulumi.Input.asOptionalInput<String>(securityGroupId),
      securityGroupIds = pulumi.Input.asOptionalInput<List<String>>(securityGroupIds),
      securityHardeningOs = pulumi.Input.asOptionalInput<bool>(securityHardeningOs),
      socEnabled = pulumi.Input.asOptionalInput<bool>(socEnabled),
      spotInstancePools = pulumi.Input.asOptionalInput<int>(spotInstancePools),
      spotInstanceRemedy = pulumi.Input.asOptionalInput<bool>(spotInstanceRemedy),
      spotPriceLimits = pulumi.Input.asOptionalInput<List<NodePoolSpotPriceLimit>>(spotPriceLimits),
      spotStrategy = pulumi.Input.asOptionalInput<String>(spotStrategy),
      systemDiskBurstingEnabled = pulumi.Input.asOptionalInput<bool>(systemDiskBurstingEnabled),
      systemDiskCategories = pulumi.Input.asOptionalInput<List<String>>(systemDiskCategories),
      systemDiskCategory = pulumi.Input.asOptionalInput<String>(systemDiskCategory),
      systemDiskEncryptAlgorithm = pulumi.Input.asOptionalInput<String>(systemDiskEncryptAlgorithm),
      systemDiskEncrypted = pulumi.Input.asOptionalInput<bool>(systemDiskEncrypted),
      systemDiskKmsKey = pulumi.Input.asOptionalInput<String>(systemDiskKmsKey),
      systemDiskPerformanceLevel = pulumi.Input.asOptionalInput<String>(systemDiskPerformanceLevel),
      systemDiskProvisionedIops = pulumi.Input.asOptionalInput<int>(systemDiskProvisionedIops),
      systemDiskSize = pulumi.Input.asOptionalInput<int>(systemDiskSize),
      systemDiskSnapshotPolicyId = pulumi.Input.asOptionalInput<String>(systemDiskSnapshotPolicyId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      taints = pulumi.Input.asOptionalInput<List<NodePoolTaint>>(taints),
      teeConfig = pulumi.Input.asOptionalInput<NodePoolTeeConfig>(teeConfig),
      type = pulumi.Input.asOptionalInput<String>(type),
      unschedulable = pulumi.Input.asOptionalInput<bool>(unschedulable),
      updateNodes = pulumi.Input.asOptionalInput<bool>(updateNodes),
      upgradePolicy = pulumi.Input.asOptionalInput<NodePoolUpgradePolicy>(upgradePolicy),
      userData = pulumi.Input.asOptionalInput<String>(userData),
      vswitchIds = pulumi.Input.asOptionalInput<List<String>>(vswitchIds);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoMode': ?pulumi.Input.mapOptionalInputValue<NodePoolAutoMode, Map<String, dynamic>>(autoMode, (value) => value.toMap()),
      'autoRenew': ?autoRenew,
      'autoRenewPeriod': ?autoRenewPeriod,
      'cisEnabled': ?cisEnabled,
      'clusterId': clusterId,
      'compensateWithOnDemand': ?compensateWithOnDemand,
      'cpuPolicy': ?cpuPolicy,
      'dataDisks': ?pulumi.Input.mapOptionalInputValue<List<NodePoolDataDisk>, List<Map<String, dynamic>>>(dataDisks, (value) => pulumi.Input.encodeList<NodePoolDataDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deploymentSetId': ?deploymentSetId,
      'desiredSize': ?desiredSize,
      'efloNodeGroup': ?pulumi.Input.mapOptionalInputValue<NodePoolEfloNodeGroup, Map<String, dynamic>>(efloNodeGroup, (value) => value.toMap()),
      'forceDelete': ?forceDelete,
      'formatDisk': ?formatDisk,
      'imageId': ?imageId,
      'imageType': ?imageType,
      'installCloudMonitor': ?installCloudMonitor,
      'instanceChargeType': ?instanceChargeType,
      'instanceMetadataOptions': ?pulumi.Input.mapOptionalInputValue<NodePoolInstanceMetadataOptions, Map<String, dynamic>>(instanceMetadataOptions, (value) => value.toMap()),
      'instancePatterns': ?pulumi.Input.mapOptionalInputValue<List<NodePoolInstancePattern>, List<Map<String, dynamic>>>(instancePatterns, (value) => pulumi.Input.encodeList<NodePoolInstancePattern, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instanceTypes': ?instanceTypes,
      'instances': ?instances,
      'internetChargeType': ?internetChargeType,
      'internetMaxBandwidthOut': ?internetMaxBandwidthOut,
      'keepInstanceName': ?keepInstanceName,
      'keyName': ?keyName,
      'kmsEncryptedPassword': ?kmsEncryptedPassword,
      'kmsEncryptionContext': ?kmsEncryptionContext,
      'kubeletConfiguration': ?pulumi.Input.mapOptionalInputValue<NodePoolKubeletConfiguration, Map<String, dynamic>>(kubeletConfiguration, (value) => value.toMap()),
      'labels': ?pulumi.Input.mapOptionalInputValue<List<NodePoolLabel>, List<Map<String, dynamic>>>(labels, (value) => pulumi.Input.encodeList<NodePoolLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'loginAsNonRoot': ?loginAsNonRoot,
      'management': ?pulumi.Input.mapOptionalInputValue<NodePoolManagement, Map<String, dynamic>>(management, (value) => value.toMap()),
      'multiAzPolicy': ?multiAzPolicy,
      'name': ?name,
      'nodeCount': ?nodeCount,
      'nodeNameMode': ?nodeNameMode,
      'nodePoolName': ?nodePoolName,
      'onDemandBaseCapacity': ?onDemandBaseCapacity,
      'onDemandPercentageAboveBaseCapacity': ?onDemandPercentageAboveBaseCapacity,
      'password': ?password,
      'period': ?period,
      'periodUnit': ?periodUnit,
      'platform': ?platform,
      'preUserData': ?preUserData,
      'privatePoolOptions': ?pulumi.Input.mapOptionalInputValue<NodePoolPrivatePoolOptions, Map<String, dynamic>>(privatePoolOptions, (value) => value.toMap()),
      'ramRoleName': ?ramRoleName,
      'rdsInstances': ?rdsInstances,
      'resourceGroupId': ?resourceGroupId,
      'rollingPolicy': ?pulumi.Input.mapOptionalInputValue<NodePoolRollingPolicy, Map<String, dynamic>>(rollingPolicy, (value) => value.toMap()),
      'runtimeName': ?runtimeName,
      'runtimeVersion': ?runtimeVersion,
      'scalingConfig': ?pulumi.Input.mapOptionalInputValue<NodePoolScalingConfig, Map<String, dynamic>>(scalingConfig, (value) => value.toMap()),
      'scalingPolicy': ?scalingPolicy,
      'securityGroupId': ?securityGroupId,
      'securityGroupIds': ?securityGroupIds,
      'securityHardeningOs': ?securityHardeningOs,
      'socEnabled': ?socEnabled,
      'spotInstancePools': ?spotInstancePools,
      'spotInstanceRemedy': ?spotInstanceRemedy,
      'spotPriceLimits': ?pulumi.Input.mapOptionalInputValue<List<NodePoolSpotPriceLimit>, List<Map<String, dynamic>>>(spotPriceLimits, (value) => pulumi.Input.encodeList<NodePoolSpotPriceLimit, Map<String, dynamic>>(value, (value) => value.toMap())),
      'spotStrategy': ?spotStrategy,
      'systemDiskBurstingEnabled': ?systemDiskBurstingEnabled,
      'systemDiskCategories': ?systemDiskCategories,
      'systemDiskCategory': ?systemDiskCategory,
      'systemDiskEncryptAlgorithm': ?systemDiskEncryptAlgorithm,
      'systemDiskEncrypted': ?systemDiskEncrypted,
      'systemDiskKmsKey': ?systemDiskKmsKey,
      'systemDiskPerformanceLevel': ?systemDiskPerformanceLevel,
      'systemDiskProvisionedIops': ?systemDiskProvisionedIops,
      'systemDiskSize': ?systemDiskSize,
      'systemDiskSnapshotPolicyId': ?systemDiskSnapshotPolicyId,
      'tags': ?tags,
      'taints': ?pulumi.Input.mapOptionalInputValue<List<NodePoolTaint>, List<Map<String, dynamic>>>(taints, (value) => pulumi.Input.encodeList<NodePoolTaint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'teeConfig': ?pulumi.Input.mapOptionalInputValue<NodePoolTeeConfig, Map<String, dynamic>>(teeConfig, (value) => value.toMap()),
      'type': ?type,
      'unschedulable': ?unschedulable,
      'updateNodes': ?updateNodes,
      'upgradePolicy': ?pulumi.Input.mapOptionalInputValue<NodePoolUpgradePolicy, Map<String, dynamic>>(upgradePolicy, (value) => value.toMap()),
      'userData': ?userData,
      'vswitchIds': ?vswitchIds,
    };
  }

  factory NodePoolArgs.fromMap(Map<String, dynamic> map) {
    return NodePoolArgs(
      autoMode: map['autoMode'] == null ? null : NodePoolAutoMode.fromMap((map['autoMode'] as Map).cast<String, dynamic>()),
      autoRenew: map['autoRenew'] == null ? null : map['autoRenew'] as bool,
      autoRenewPeriod: map['autoRenewPeriod'] == null ? null : map['autoRenewPeriod'] as int,
      cisEnabled: map['cisEnabled'] == null ? null : map['cisEnabled'] as bool,
      clusterId: map['clusterId'] as String,
      compensateWithOnDemand: map['compensateWithOnDemand'] == null ? null : map['compensateWithOnDemand'] as bool,
      cpuPolicy: map['cpuPolicy'] == null ? null : map['cpuPolicy'] as String,
      dataDisks: map['dataDisks'] == null ? null : pulumi.Input.decodeList<NodePoolDataDisk>(map['dataDisks'], (value) => NodePoolDataDisk.fromMap((value as Map).cast<String, dynamic>())),
      deploymentSetId: map['deploymentSetId'] == null ? null : map['deploymentSetId'] as String,
      desiredSize: map['desiredSize'] == null ? null : map['desiredSize'] as String,
      efloNodeGroup: map['efloNodeGroup'] == null ? null : NodePoolEfloNodeGroup.fromMap((map['efloNodeGroup'] as Map).cast<String, dynamic>()),
      forceDelete: map['forceDelete'] == null ? null : map['forceDelete'] as bool,
      formatDisk: map['formatDisk'] == null ? null : map['formatDisk'] as bool,
      imageId: map['imageId'] == null ? null : map['imageId'] as String,
      imageType: map['imageType'] == null ? null : map['imageType'] as String,
      installCloudMonitor: map['installCloudMonitor'] == null ? null : map['installCloudMonitor'] as bool,
      instanceChargeType: map['instanceChargeType'] == null ? null : map['instanceChargeType'] as String,
      instanceMetadataOptions: map['instanceMetadataOptions'] == null ? null : NodePoolInstanceMetadataOptions.fromMap((map['instanceMetadataOptions'] as Map).cast<String, dynamic>()),
      instancePatterns: map['instancePatterns'] == null ? null : pulumi.Input.decodeList<NodePoolInstancePattern>(map['instancePatterns'], (value) => NodePoolInstancePattern.fromMap((value as Map).cast<String, dynamic>())),
      instanceTypes: map['instanceTypes'] == null ? null : (map['instanceTypes'] as List).cast<String>(),
      instances: map['instances'] == null ? null : (map['instances'] as List).cast<String>(),
      internetChargeType: map['internetChargeType'] == null ? null : map['internetChargeType'] as String,
      internetMaxBandwidthOut: map['internetMaxBandwidthOut'] == null ? null : map['internetMaxBandwidthOut'] as int,
      keepInstanceName: map['keepInstanceName'] == null ? null : map['keepInstanceName'] as bool,
      keyName: map['keyName'] == null ? null : map['keyName'] as String,
      kmsEncryptedPassword: map['kmsEncryptedPassword'] == null ? null : map['kmsEncryptedPassword'] as String,
      kmsEncryptionContext: map['kmsEncryptionContext'] == null ? null : (map['kmsEncryptionContext'] as Map).cast<String, String>(),
      kubeletConfiguration: map['kubeletConfiguration'] == null ? null : NodePoolKubeletConfiguration.fromMap((map['kubeletConfiguration'] as Map).cast<String, dynamic>()),
      labels: map['labels'] == null ? null : pulumi.Input.decodeList<NodePoolLabel>(map['labels'], (value) => NodePoolLabel.fromMap((value as Map).cast<String, dynamic>())),
      loginAsNonRoot: map['loginAsNonRoot'] == null ? null : map['loginAsNonRoot'] as bool,
      management: map['management'] == null ? null : NodePoolManagement.fromMap((map['management'] as Map).cast<String, dynamic>()),
      multiAzPolicy: map['multiAzPolicy'] == null ? null : map['multiAzPolicy'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      nodeCount: map['nodeCount'] == null ? null : map['nodeCount'] as int,
      nodeNameMode: map['nodeNameMode'] == null ? null : map['nodeNameMode'] as String,
      nodePoolName: map['nodePoolName'] == null ? null : map['nodePoolName'] as String,
      onDemandBaseCapacity: map['onDemandBaseCapacity'] == null ? null : map['onDemandBaseCapacity'] as String,
      onDemandPercentageAboveBaseCapacity: map['onDemandPercentageAboveBaseCapacity'] == null ? null : map['onDemandPercentageAboveBaseCapacity'] as String,
      password: map['password'] == null ? null : map['password'] as String,
      period: map['period'] == null ? null : map['period'] as int,
      periodUnit: map['periodUnit'] == null ? null : map['periodUnit'] as String,
      platform: map['platform'] == null ? null : map['platform'] as String,
      preUserData: map['preUserData'] == null ? null : map['preUserData'] as String,
      privatePoolOptions: map['privatePoolOptions'] == null ? null : NodePoolPrivatePoolOptions.fromMap((map['privatePoolOptions'] as Map).cast<String, dynamic>()),
      ramRoleName: map['ramRoleName'] == null ? null : map['ramRoleName'] as String,
      rdsInstances: map['rdsInstances'] == null ? null : (map['rdsInstances'] as List).cast<String>(),
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      rollingPolicy: map['rollingPolicy'] == null ? null : NodePoolRollingPolicy.fromMap((map['rollingPolicy'] as Map).cast<String, dynamic>()),
      runtimeName: map['runtimeName'] == null ? null : map['runtimeName'] as String,
      runtimeVersion: map['runtimeVersion'] == null ? null : map['runtimeVersion'] as String,
      scalingConfig: map['scalingConfig'] == null ? null : NodePoolScalingConfig.fromMap((map['scalingConfig'] as Map).cast<String, dynamic>()),
      scalingPolicy: map['scalingPolicy'] == null ? null : map['scalingPolicy'] as String,
      securityGroupId: map['securityGroupId'] == null ? null : map['securityGroupId'] as String,
      securityGroupIds: map['securityGroupIds'] == null ? null : (map['securityGroupIds'] as List).cast<String>(),
      securityHardeningOs: map['securityHardeningOs'] == null ? null : map['securityHardeningOs'] as bool,
      socEnabled: map['socEnabled'] == null ? null : map['socEnabled'] as bool,
      spotInstancePools: map['spotInstancePools'] == null ? null : map['spotInstancePools'] as int,
      spotInstanceRemedy: map['spotInstanceRemedy'] == null ? null : map['spotInstanceRemedy'] as bool,
      spotPriceLimits: map['spotPriceLimits'] == null ? null : pulumi.Input.decodeList<NodePoolSpotPriceLimit>(map['spotPriceLimits'], (value) => NodePoolSpotPriceLimit.fromMap((value as Map).cast<String, dynamic>())),
      spotStrategy: map['spotStrategy'] == null ? null : map['spotStrategy'] as String,
      systemDiskBurstingEnabled: map['systemDiskBurstingEnabled'] == null ? null : map['systemDiskBurstingEnabled'] as bool,
      systemDiskCategories: map['systemDiskCategories'] == null ? null : (map['systemDiskCategories'] as List).cast<String>(),
      systemDiskCategory: map['systemDiskCategory'] == null ? null : map['systemDiskCategory'] as String,
      systemDiskEncryptAlgorithm: map['systemDiskEncryptAlgorithm'] == null ? null : map['systemDiskEncryptAlgorithm'] as String,
      systemDiskEncrypted: map['systemDiskEncrypted'] == null ? null : map['systemDiskEncrypted'] as bool,
      systemDiskKmsKey: map['systemDiskKmsKey'] == null ? null : map['systemDiskKmsKey'] as String,
      systemDiskPerformanceLevel: map['systemDiskPerformanceLevel'] == null ? null : map['systemDiskPerformanceLevel'] as String,
      systemDiskProvisionedIops: map['systemDiskProvisionedIops'] == null ? null : map['systemDiskProvisionedIops'] as int,
      systemDiskSize: map['systemDiskSize'] == null ? null : map['systemDiskSize'] as int,
      systemDiskSnapshotPolicyId: map['systemDiskSnapshotPolicyId'] == null ? null : map['systemDiskSnapshotPolicyId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      taints: map['taints'] == null ? null : pulumi.Input.decodeList<NodePoolTaint>(map['taints'], (value) => NodePoolTaint.fromMap((value as Map).cast<String, dynamic>())),
      teeConfig: map['teeConfig'] == null ? null : NodePoolTeeConfig.fromMap((map['teeConfig'] as Map).cast<String, dynamic>()),
      type: map['type'] == null ? null : map['type'] as String,
      unschedulable: map['unschedulable'] == null ? null : map['unschedulable'] as bool,
      updateNodes: map['updateNodes'] == null ? null : map['updateNodes'] as bool,
      upgradePolicy: map['upgradePolicy'] == null ? null : NodePoolUpgradePolicy.fromMap((map['upgradePolicy'] as Map).cast<String, dynamic>()),
      userData: map['userData'] == null ? null : map['userData'] as String,
      vswitchIds: map['vswitchIds'] == null ? null : (map['vswitchIds'] as List).cast<String>(),
    );
  }
}

