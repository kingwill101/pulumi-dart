// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_kubernetes_node_pools_nodepool_data_disk.dart';
import 'get_kubernetes_node_pools_nodepool_kubelet_configuration.dart';
import 'get_kubernetes_node_pools_nodepool_label.dart';
import 'get_kubernetes_node_pools_nodepool_management.dart';
import 'get_kubernetes_node_pools_nodepool_private_pool_options.dart';
import 'get_kubernetes_node_pools_nodepool_scaling_config.dart';
import 'get_kubernetes_node_pools_nodepool_spot_price_limit.dart';
import 'get_kubernetes_node_pools_nodepool_taint.dart';
import 'get_kubernetes_node_pools_nodepool_tee_config.dart';

class GetKubernetesNodePoolsNodepool {
  /// Whether to enable automatic renewal for nodes in the node pool takes effect only when `instance_charge_type` is set to `PrePaid`. Default value: `false`. Valid values:- `true`: Automatic renewal. - `false`: Do not renew automatically.
  final pulumi.Input<bool> autoRenew;

  /// The automatic renewal period of nodes in the node pool takes effect only when you select Prepaid and Automatic Renewal, and is a required value. When `PeriodUnit = Month`, the value range is {1, 2, 3, 6, 12}. Default value: 1.
  final pulumi.Input<int> autoRenewPeriod;

  /// Whether enable worker node to support cis security reinforcement, its valid value `true` or `false`. Default to `false` and apply to AliyunLinux series. Use `security_hardening_os` instead.
  final pulumi.Input<bool> cisEnabled;

  /// Specifies whether to automatically create pay-as-you-go instances to meet the required number of ECS instances if preemptible instances cannot be created due to reasons such as cost or insufficient inventory. This parameter takes effect when you set `multi_az_policy` to `COST_OPTIMIZED`. Valid values: `true`: automatically creates pay-as-you-go instances to meet the required number of ECS instances if preemptible instances cannot be created. `false`: does not create pay-as-you-go instances to meet the required number of ECS instances if preemptible instances cannot be created.
  final pulumi.Input<bool> compensateWithOnDemand;

  /// Node CPU management policies. Default value: `none`. When the cluster version is 1.12.6 or later, the following two policies are supported:- `static`: allows pods with certain resource characteristics on the node to enhance its CPU affinity and exclusivity.- `none`: Enables the existing default CPU affinity scheme.
  final pulumi.Input<String> cpuPolicy;

  /// Configure the data disk of the node in the node pool.
  final pulumi.Input<List<GetKubernetesNodePoolsNodepoolDataDisk>> dataDisks;

  /// The deployment set of node pool. Specify the deploymentSet to ensure that the nodes in the node pool can be distributed on different physical machines.
  final pulumi.Input<String> deploymentSetId;

  /// Number of expected nodes in the node pool.
  final pulumi.Input<String> desiredSize;

  /// The custom image ID. The system-provided image is used by default.
  final pulumi.Input<String> imageId;

  /// The operating system image type and the `platform` parameter can be selected from the following values:- `AliyunLinux` : Alinux2 image.- `AliyunLinux3` : Alinux3 image.- `AliyunLinux3Arm64` : Alinux3 mirror ARM version.- `AliyunLinuxUEFI` : Alinux2 Image UEFI version.- `CentOS` : CentOS image.- `Windows` : Windows image.- `WindowsCore` : WindowsCore image.- `ContainerOS` : container-optimized image.- `Ubuntu`: Ubuntu image.
  final pulumi.Input<String> imageType;

  /// Whether to install cloud monitoring on the ECS node. After installation, you can view the monitoring information of the created ECS instance in the cloud monitoring console and recommend enable it. Default value: `false`. Valid values:- `true` : install cloud monitoring on the ECS node.- `false` : does not install cloud monitoring on the ECS node.
  final pulumi.Input<bool> installCloudMonitor;

  /// Node payment type. Valid values: `PostPaid`, `PrePaid`, default is `PostPaid`. If value is `PrePaid`, the arguments `period`, `period_unit`, `auto_renew` and `auto_renew_period` are required.
  final pulumi.Input<String> instanceChargeType;

  /// In the node instance specification list, you can select multiple instance specifications as alternatives. When each node is created, it will try to purchase from the first specification until it is created successfully. The final purchased instance specifications may vary with inventory changes.
  final pulumi.Input<List<String>> instanceTypes;

  /// The billing method for network usage. Valid values `PayByBandwidth` and `PayByTraffic`. Conflict with `eip_internet_charge_type`, EIP and public network IP can only choose one.
  final pulumi.Input<String> internetChargeType;

  /// The maximum bandwidth of the public IP address of the node. The unit is Mbps(Mega bit per second). The value range is:\[1,100\]
  final pulumi.Input<int> internetMaxBandwidthOut;

  /// The name of the key pair. When the node pool is a managed node pool, only `key_name` is supported.
  final pulumi.Input<String> keyName;

  /// Kubelet configuration parameters for worker nodes. See `kubelet_configuration` below. More information in [Kubelet Configuration](https://kubernetes.io/docs/reference/config-api/kubelet-config.v1beta1/).
  final pulumi.Input<GetKubernetesNodePoolsNodepoolKubeletConfiguration>
  kubeletConfiguration;

  /// A List of Kubernetes labels to assign to the nodes . Only labels that are applied with the ACK API are managed by this argument. Detailed below. More information in [Labels](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/).
  final pulumi.Input<List<GetKubernetesNodePoolsNodepoolLabel>> labels;

  /// Whether the ECS instance is logged on as a ecs-user user. Valid value: `true` and `false`.
  final pulumi.Input<bool> loginAsNonRoot;

  /// Managed node pool configuration.
  final pulumi.Input<GetKubernetesNodePoolsNodepoolManagement> management;

  /// The scaling policy for ECS instances in a multi-zone scaling group. Valid value: `PRIORITY`, `COST_OPTIMIZED` and `BALANCE`. `PRIORITY`: scales the capacity according to the virtual switches you define (VSwitchIds.N). When an ECS instance cannot be created in the zone where the higher-priority vSwitch is located, the next-priority vSwitch is automatically used to create an ECS instance. `COST_OPTIMIZED`: try to create by vCPU unit price from low to high. When the scaling configuration is configured with multiple instances of preemptible billing, preemptible instances are created first. You can continue to use the `CompensateWithOnDemand` parameter to specify whether to automatically try to create a preemptible instance by paying for it. It takes effect only when the scaling configuration has multi-instance specifications or preemptible instances. `BALANCE`: distributes ECS instances evenly among the multi-zone specified by the scaling group. If the zones become unbalanced due to insufficient inventory, you can use the API RebalanceInstances to balance resources.
  final pulumi.Input<String> multiAzPolicy;

  /// Each node name consists of a prefix, its private network IP, and a suffix, separated by commas. The input format is `customized,,ip,`.- The prefix and suffix can be composed of one or more parts separated by '.', each part can use lowercase letters, numbers and '-', and the beginning and end of the node name must be lowercase letters and numbers.- The node IP address is the complete private IP address of the node.- For example, if the string `customized,aliyun,ip,com` is passed in (where 'customized' and 'ip' are fixed strings, 'aliyun' is the prefix, and 'com' is the suffix), the name of the node is `aliyun192.168.xxx.xxxcom`.
  final pulumi.Input<String> nodeNameMode;

  /// The first ID of the resource.
  final pulumi.Input<String> nodePoolId;

  /// The name of node pool.
  final pulumi.Input<String> nodePoolName;

  /// The minimum number of pay-as-you-go instances that must be kept in the scaling group. Valid values: 0 to 1000. If the number of pay-as-you-go instances is less than the value of this parameter, Auto Scaling preferably creates pay-as-you-go instances.
  final pulumi.Input<String> onDemandBaseCapacity;

  /// The percentage of pay-as-you-go instances among the extra instances that exceed the number specified by `on_demand_base_capacity`. Valid values: 0 to 100.
  final pulumi.Input<String> onDemandPercentageAboveBaseCapacity;

  /// The password of ssh login. You have to specify one of `password` and `key_name` fields. The password rule is 8 to 30 characters and contains at least three items (upper and lower case letters, numbers, and special symbols).
  final pulumi.Input<String> password;

  /// Node payment period. Its valid value is one of {1, 2, 3, 6, 12}.
  final pulumi.Input<int> period;

  /// Node payment period unit, valid value: `Month`. Default is `Month`.
  final pulumi.Input<String> periodUnit;

  /// Operating system release, using `image_type` instead.
  final pulumi.Input<String> platform;

  /// Node pre custom data, base64-encoded, the script executed before the node is initialized.
  final pulumi.Input<String> preUserData;

  /// Private node pool configuration.
  final pulumi.Input<GetKubernetesNodePoolsNodepoolPrivatePoolOptions>
  privatePoolOptions;

  /// The name of the Worker RAM role.* If it is empty, the default Worker RAM role created in the cluster will be used.* If the specified RAM role is not empty, the specified RAM role must be a **Common Service role**, and its **trusted service** configuration must be **cloud server**. For more information, see [Create a common service role](https://help.aliyun.com/document_detail/116800.html). If the specified RAM role is not the default Worker RAM role created in the cluster, the role name cannot start with 'KubernetesMasterRole-'or 'KubernetesWorkerRole.&gt; **NOTE:**  This parameter is only supported for ACK-managed clusters of 1.22 or later versions.
  final pulumi.Input<String> ramRoleName;

  /// The list of RDS instances.
  final pulumi.Input<List<String>> rdsInstances;

  /// The ID of the resource group
  final pulumi.Input<String> resourceGroupId;

  /// The runtime name of containers. If not set, the cluster runtime will be used as the node pool runtime. If you select another container runtime, see [Comparison of Docker, containerd, and Sandboxed-Container](https://www.alibabacloud.com/help/doc-detail/160313.htm).
  final pulumi.Input<String> runtimeName;

  /// The runtime version of containers. If not set, the cluster runtime will be used as the node pool runtime.
  final pulumi.Input<String> runtimeVersion;

  /// Automatic scaling configuration.
  final pulumi.Input<GetKubernetesNodePoolsNodepoolScalingConfig> scalingConfig;

  /// The ID of the scaling group.
  final pulumi.Input<String> scalingGroupId;

  /// Scaling group mode, default value: `release`. Valid values:- `release`: in the standard mode, scaling is performed by creating and releasing ECS instances based on the usage of the application resource value.- `recycle`: in the speed mode, scaling is performed through creation, shutdown, and startup to increase the speed of scaling again (computing resources are not charged during shutdown, only storage fees are charged, except for local disk models).
  final pulumi.Input<String> scalingPolicy;

  /// The security group ID of the node pool. This field has been replaced by `security_group_ids`, please use the `security_group_ids` field instead.
  final pulumi.Input<String> securityGroupId;

  /// Multiple security groups can be configured for a node pool. If both `security_group_ids` and `security_group_id` are configured, `security_group_ids` takes effect. This field cannot be modified.
  final pulumi.Input<List<String>> securityGroupIds;

  /// Alibaba Cloud OS security reinforcement. Default value: `false`. Value:-`true`: enable Alibaba Cloud OS security reinforcement.-`false`: does not enable Alibaba Cloud OS security reinforcement.
  final pulumi.Input<bool> securityHardeningOs;

  /// Whether enable worker node to support soc security reinforcement, its valid value `true` or `false`. Default to `false` and apply to AliyunLinux series. See [SOC Reinforcement](https://help.aliyun.com/document_detail/196148.html).&gt; It is forbidden to set both `security_hardening_os` and `soc_enabled` to `true` at the same time.
  final pulumi.Input<bool> socEnabled;

  /// The number of instance types that are available. Auto Scaling creates preemptible instances of multiple instance types that are available at the lowest cost. Valid values: 1 to 10.
  final pulumi.Input<int> spotInstancePools;

  /// Specifies whether to supplement preemptible instances when the number of preemptible instances drops below the specified minimum number. If you set the value to true, Auto Scaling attempts to create a new preemptible instance when the system notifies that an existing preemptible instance is about to be reclaimed. Valid values: `true`: enables the supplementation of preemptible instances. `false`: disables the supplementation of preemptible instances.
  final pulumi.Input<bool> spotInstanceRemedy;

  /// The current single preemptible instance type market price range configuration.
  final pulumi.Input<List<GetKubernetesNodePoolsNodepoolSpotPriceLimit>>
  spotPriceLimits;

  /// The preemptible instance type. Value:- `NoSpot` : Non-preemptible instance.- `SpotWithPriceLimit` : Set the upper limit of the preemptible instance price.- `SpotAsPriceGo` : The system automatically bids, following the actual price of the current market.
  final pulumi.Input<String> spotStrategy;

  /// Specifies whether to enable the burst feature for system disks. Valid values:`true`: enables the burst feature. `false`: disables the burst feature. This parameter is supported only when `system_disk_category` is set to `cloud_auto`.
  final pulumi.Input<bool> systemDiskBurstingEnabled;

  /// The multi-disk categories of the system disk. When a high-priority disk type cannot be used, Auto Scaling automatically tries to create a system disk with the next priority disk category. Valid values see `system_disk_category`.
  final pulumi.Input<List<String>> systemDiskCategories;

  /// The category of the system disk for nodes. Default value: `cloud_efficiency`. Valid values:- `cloud`: basic disk.- `cloud_efficiency`: ultra disk.- `cloud_ssd`: standard SSD.- `cloud_essd`: ESSD.- `cloud_auto`: ESSD AutoPL disk.- `cloud_essd_entry`: ESSD Entry disk.
  final pulumi.Input<String> systemDiskCategory;

  /// The encryption algorithm used by the system disk. Value range: aes-256.
  final pulumi.Input<String> systemDiskEncryptAlgorithm;

  /// Whether to encrypt the system disk. Value range: `true`: encryption. `false`: Do not encrypt.
  final pulumi.Input<bool> systemDiskEncrypted;

  /// The ID of the KMS key used by the system disk.
  final pulumi.Input<String> systemDiskKmsKey;

  /// The system disk performance of the node takes effect only for the ESSD disk.- `PL0`: maximum random read/write IOPS 10000 for a single disk.- `PL1`: maximum random read/write IOPS 50000 for a single disk.- `PL2`: highest random read/write IOPS 100000 for a single disk.- `PL3`: maximum random read/write IOPS 1 million for a single disk.
  final pulumi.Input<String> systemDiskPerformanceLevel;

  /// The predefined IOPS of a system disk. Valid values: 0 to min{50,000, 1,000 × Capacity - Baseline IOPS}. Baseline IOPS = min{1,800 + 50 × Capacity, 50,000}. This parameter is supported only when `system_disk_category` is set to `cloud_auto`.
  final pulumi.Input<int> systemDiskProvisionedIops;

  /// The size of the system disk. Unit: GiB. The value of this parameter must be at least 1 and greater than or equal to the image size. Default value: 40 or the size of the image, whichever is larger.- Basic disk: 20 to 500.- ESSD (cloud_essd): The valid values vary based on the performance level of the ESSD. PL0 ESSD: 1 to 2048. PL1 ESSD: 20 to 2048. PL2 ESSD: 461 to 2048. PL3 ESSD: 1261 to 2048.- ESSD AutoPL disk (cloud_auto): 1 to 2048.- Other disk categories: 20 to 2048.
  final pulumi.Input<int> systemDiskSize;

  /// The ID of the automatic snapshot policy used by the system disk.
  final pulumi.Input<String> systemDiskSnapshotPolicyId;

  /// Add tags only for ECS instances. The maximum length of the tag key is 128 characters. The tag key and value cannot start with aliyun or acs:, or contain https:// or http://.
  final pulumi.Input<Map<String, String>> tags;

  /// A List of Kubernetes taints to assign to the nodes. Detailed below. More information in [Taints and Toleration](https://kubernetes.io/docs/concepts/scheduling-eviction/taint-and-toleration/).
  final pulumi.Input<List<GetKubernetesNodePoolsNodepoolTaint>> taints;

  /// The configuration about confidential computing for the cluster.
  final pulumi.Input<GetKubernetesNodePoolsNodepoolTeeConfig> teeConfig;

  /// Whether the node after expansion can be scheduled.
  final pulumi.Input<bool> unschedulable;

  /// Node custom data, base64-encoded.
  final pulumi.Input<String> userData;

  /// The vswitches used by node pool workers.
  final pulumi.Input<List<String>> vswitchIds;

  /// Creates a new [GetKubernetesNodePoolsNodepool].
  /// [autoRenew] Whether to enable automatic renewal for nodes in the node pool takes effect only when `instance_charge_type` is set to `PrePaid`. Default value: `false`. Valid values:- `true`: Automatic renewal. - `false`: Do not renew automatically.
  /// [autoRenewPeriod] The automatic renewal period of nodes in the node pool takes effect only when you select Prepaid and Automatic Renewal, and is a required value. When `PeriodUnit = Month`, the value range is {1, 2, 3, 6, 12}. Default value: 1.
  /// [cisEnabled] Whether enable worker node to support cis security reinforcement, its valid value `true` or `false`. Default to `false` and apply to AliyunLinux series. Use `security_hardening_os` instead.
  /// [compensateWithOnDemand] Specifies whether to automatically create pay-as-you-go instances to meet the required number of ECS instances if preemptible instances cannot be created due to reasons such as cost or insufficient inventory. This parameter takes effect when you set `multi_az_policy` to `COST_OPTIMIZED`. Valid values: `true`: automatically creates pay-as-you-go instances to meet the required number of ECS instances if preemptible instances cannot be created. `false`: does not create pay-as-you-go instances to meet the required number of ECS instances if preemptible instances cannot be created.
  /// [cpuPolicy] Node CPU management policies. Default value: `none`. When the cluster version is 1.12.6 or later, the following two policies are supported:- `static`: allows pods with certain resource characteristics on the node to enhance its CPU affinity and exclusivity.- `none`: Enables the existing default CPU affinity scheme.
  /// [dataDisks] Configure the data disk of the node in the node pool.
  /// [deploymentSetId] The deployment set of node pool. Specify the deploymentSet to ensure that the nodes in the node pool can be distributed on different physical machines.
  /// [desiredSize] Number of expected nodes in the node pool.
  /// [imageId] The custom image ID. The system-provided image is used by default.
  /// [imageType] The operating system image type and the `platform` parameter can be selected from the following values:- `AliyunLinux` : Alinux2 image.- `AliyunLinux3` : Alinux3 image.- `AliyunLinux3Arm64` : Alinux3 mirror ARM version.- `AliyunLinuxUEFI` : Alinux2 Image UEFI version.- `CentOS` : CentOS image.- `Windows` : Windows image.- `WindowsCore` : WindowsCore image.- `ContainerOS` : container-optimized image.- `Ubuntu`: Ubuntu image.
  /// [installCloudMonitor] Whether to install cloud monitoring on the ECS node. After installation, you can view the monitoring information of the created ECS instance in the cloud monitoring console and recommend enable it. Default value: `false`. Valid values:- `true` : install cloud monitoring on the ECS node.- `false` : does not install cloud monitoring on the ECS node.
  /// [instanceChargeType] Node payment type. Valid values: `PostPaid`, `PrePaid`, default is `PostPaid`. If value is `PrePaid`, the arguments `period`, `period_unit`, `auto_renew` and `auto_renew_period` are required.
  /// [instanceTypes] In the node instance specification list, you can select multiple instance specifications as alternatives. When each node is created, it will try to purchase from the first specification until it is created successfully. The final purchased instance specifications may vary with inventory changes.
  /// [internetChargeType] The billing method for network usage. Valid values `PayByBandwidth` and `PayByTraffic`. Conflict with `eip_internet_charge_type`, EIP and public network IP can only choose one.
  /// [internetMaxBandwidthOut] The maximum bandwidth of the public IP address of the node. The unit is Mbps(Mega bit per second). The value range is:\[1,100\]
  /// [keyName] The name of the key pair. When the node pool is a managed node pool, only `key_name` is supported.
  /// [kubeletConfiguration] Kubelet configuration parameters for worker nodes. See `kubelet_configuration` below. More information in [Kubelet Configuration](https://kubernetes.io/docs/reference/config-api/kubelet-config.v1beta1/).
  /// [labels] A List of Kubernetes labels to assign to the nodes . Only labels that are applied with the ACK API are managed by this argument. Detailed below. More information in [Labels](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/).
  /// [loginAsNonRoot] Whether the ECS instance is logged on as a ecs-user user. Valid value: `true` and `false`.
  /// [management] Managed node pool configuration.
  /// [multiAzPolicy] The scaling policy for ECS instances in a multi-zone scaling group. Valid value: `PRIORITY`, `COST_OPTIMIZED` and `BALANCE`. `PRIORITY`: scales the capacity according to the virtual switches you define (VSwitchIds.N). When an ECS instance cannot be created in the zone where the higher-priority vSwitch is located, the next-priority vSwitch is automatically used to create an ECS instance. `COST_OPTIMIZED`: try to create by vCPU unit price from low to high. When the scaling configuration is configured with multiple instances of preemptible billing, preemptible instances are created first. You can continue to use the `CompensateWithOnDemand` parameter to specify whether to automatically try to create a preemptible instance by paying for it. It takes effect only when the scaling configuration has multi-instance specifications or preemptible instances. `BALANCE`: distributes ECS instances evenly among the multi-zone specified by the scaling group. If the zones become unbalanced due to insufficient inventory, you can use the API RebalanceInstances to balance resources.
  /// [nodeNameMode] Each node name consists of a prefix, its private network IP, and a suffix, separated by commas. The input format is `customized,,ip,`.- The prefix and suffix can be composed of one or more parts separated by '.', each part can use lowercase letters, numbers and '-', and the beginning and end of the node name must be lowercase letters and numbers.- The node IP address is the complete private IP address of the node.- For example, if the string `customized,aliyun,ip,com` is passed in (where 'customized' and 'ip' are fixed strings, 'aliyun' is the prefix, and 'com' is the suffix), the name of the node is `aliyun192.168.xxx.xxxcom`.
  /// [nodePoolId] The first ID of the resource.
  /// [nodePoolName] The name of node pool.
  /// [onDemandBaseCapacity] The minimum number of pay-as-you-go instances that must be kept in the scaling group. Valid values: 0 to 1000. If the number of pay-as-you-go instances is less than the value of this parameter, Auto Scaling preferably creates pay-as-you-go instances.
  /// [onDemandPercentageAboveBaseCapacity] The percentage of pay-as-you-go instances among the extra instances that exceed the number specified by `on_demand_base_capacity`. Valid values: 0 to 100.
  /// [password] The password of ssh login. You have to specify one of `password` and `key_name` fields. The password rule is 8 to 30 characters and contains at least three items (upper and lower case letters, numbers, and special symbols).
  /// [period] Node payment period. Its valid value is one of {1, 2, 3, 6, 12}.
  /// [periodUnit] Node payment period unit, valid value: `Month`. Default is `Month`.
  /// [platform] Operating system release, using `image_type` instead.
  /// [preUserData] Node pre custom data, base64-encoded, the script executed before the node is initialized.
  /// [privatePoolOptions] Private node pool configuration.
  /// [ramRoleName] The name of the Worker RAM role.* If it is empty, the default Worker RAM role created in the cluster will be used.* If the specified RAM role is not empty, the specified RAM role must be a **Common Service role**, and its **trusted service** configuration must be **cloud server**. For more information, see [Create a common service role](https://help.aliyun.com/document_detail/116800.html). If the specified RAM role is not the default Worker RAM role created in the cluster, the role name cannot start with 'KubernetesMasterRole-'or 'KubernetesWorkerRole.&gt; **NOTE:**  This parameter is only supported for ACK-managed clusters of 1.22 or later versions.
  /// [rdsInstances] The list of RDS instances.
  /// [resourceGroupId] The ID of the resource group
  /// [runtimeName] The runtime name of containers. If not set, the cluster runtime will be used as the node pool runtime. If you select another container runtime, see [Comparison of Docker, containerd, and Sandboxed-Container](https://www.alibabacloud.com/help/doc-detail/160313.htm).
  /// [runtimeVersion] The runtime version of containers. If not set, the cluster runtime will be used as the node pool runtime.
  /// [scalingConfig] Automatic scaling configuration.
  /// [scalingGroupId] The ID of the scaling group.
  /// [scalingPolicy] Scaling group mode, default value: `release`. Valid values:- `release`: in the standard mode, scaling is performed by creating and releasing ECS instances based on the usage of the application resource value.- `recycle`: in the speed mode, scaling is performed through creation, shutdown, and startup to increase the speed of scaling again (computing resources are not charged during shutdown, only storage fees are charged, except for local disk models).
  /// [securityGroupId] The security group ID of the node pool. This field has been replaced by `security_group_ids`, please use the `security_group_ids` field instead.
  /// [securityGroupIds] Multiple security groups can be configured for a node pool. If both `security_group_ids` and `security_group_id` are configured, `security_group_ids` takes effect. This field cannot be modified.
  /// [securityHardeningOs] Alibaba Cloud OS security reinforcement. Default value: `false`. Value:-`true`: enable Alibaba Cloud OS security reinforcement.-`false`: does not enable Alibaba Cloud OS security reinforcement.
  /// [socEnabled] Whether enable worker node to support soc security reinforcement, its valid value `true` or `false`. Default to `false` and apply to AliyunLinux series. See [SOC Reinforcement](https://help.aliyun.com/document_detail/196148.html).&gt; It is forbidden to set both `security_hardening_os` and `soc_enabled` to `true` at the same time.
  /// [spotInstancePools] The number of instance types that are available. Auto Scaling creates preemptible instances of multiple instance types that are available at the lowest cost. Valid values: 1 to 10.
  /// [spotInstanceRemedy] Specifies whether to supplement preemptible instances when the number of preemptible instances drops below the specified minimum number. If you set the value to true, Auto Scaling attempts to create a new preemptible instance when the system notifies that an existing preemptible instance is about to be reclaimed. Valid values: `true`: enables the supplementation of preemptible instances. `false`: disables the supplementation of preemptible instances.
  /// [spotPriceLimits] The current single preemptible instance type market price range configuration.
  /// [spotStrategy] The preemptible instance type. Value:- `NoSpot` : Non-preemptible instance.- `SpotWithPriceLimit` : Set the upper limit of the preemptible instance price.- `SpotAsPriceGo` : The system automatically bids, following the actual price of the current market.
  /// [systemDiskBurstingEnabled] Specifies whether to enable the burst feature for system disks. Valid values:`true`: enables the burst feature. `false`: disables the burst feature. This parameter is supported only when `system_disk_category` is set to `cloud_auto`.
  /// [systemDiskCategories] The multi-disk categories of the system disk. When a high-priority disk type cannot be used, Auto Scaling automatically tries to create a system disk with the next priority disk category. Valid values see `system_disk_category`.
  /// [systemDiskCategory] The category of the system disk for nodes. Default value: `cloud_efficiency`. Valid values:- `cloud`: basic disk.- `cloud_efficiency`: ultra disk.- `cloud_ssd`: standard SSD.- `cloud_essd`: ESSD.- `cloud_auto`: ESSD AutoPL disk.- `cloud_essd_entry`: ESSD Entry disk.
  /// [systemDiskEncryptAlgorithm] The encryption algorithm used by the system disk. Value range: aes-256.
  /// [systemDiskEncrypted] Whether to encrypt the system disk. Value range: `true`: encryption. `false`: Do not encrypt.
  /// [systemDiskKmsKey] The ID of the KMS key used by the system disk.
  /// [systemDiskPerformanceLevel] The system disk performance of the node takes effect only for the ESSD disk.- `PL0`: maximum random read/write IOPS 10000 for a single disk.- `PL1`: maximum random read/write IOPS 50000 for a single disk.- `PL2`: highest random read/write IOPS 100000 for a single disk.- `PL3`: maximum random read/write IOPS 1 million for a single disk.
  /// [systemDiskProvisionedIops] The predefined IOPS of a system disk. Valid values: 0 to min{50,000, 1,000 × Capacity - Baseline IOPS}. Baseline IOPS = min{1,800 + 50 × Capacity, 50,000}. This parameter is supported only when `system_disk_category` is set to `cloud_auto`.
  /// [systemDiskSize] The size of the system disk. Unit: GiB. The value of this parameter must be at least 1 and greater than or equal to the image size. Default value: 40 or the size of the image, whichever is larger.- Basic disk: 20 to 500.- ESSD (cloud_essd): The valid values vary based on the performance level of the ESSD. PL0 ESSD: 1 to 2048. PL1 ESSD: 20 to 2048. PL2 ESSD: 461 to 2048. PL3 ESSD: 1261 to 2048.- ESSD AutoPL disk (cloud_auto): 1 to 2048.- Other disk categories: 20 to 2048.
  /// [systemDiskSnapshotPolicyId] The ID of the automatic snapshot policy used by the system disk.
  /// [tags] Add tags only for ECS instances. The maximum length of the tag key is 128 characters. The tag key and value cannot start with aliyun or acs:, or contain https:// or http://.
  /// [taints] A List of Kubernetes taints to assign to the nodes. Detailed below. More information in [Taints and Toleration](https://kubernetes.io/docs/concepts/scheduling-eviction/taint-and-toleration/).
  /// [teeConfig] The configuration about confidential computing for the cluster.
  /// [unschedulable] Whether the node after expansion can be scheduled.
  /// [userData] Node custom data, base64-encoded.
  /// [vswitchIds] The vswitches used by node pool workers.
  GetKubernetesNodePoolsNodepool({
    required this.autoRenew,
    required this.autoRenewPeriod,
    required this.cisEnabled,
    required this.compensateWithOnDemand,
    required this.cpuPolicy,
    required this.dataDisks,
    required this.deploymentSetId,
    required this.desiredSize,
    required this.imageId,
    required this.imageType,
    required this.installCloudMonitor,
    required this.instanceChargeType,
    required this.instanceTypes,
    required this.internetChargeType,
    required this.internetMaxBandwidthOut,
    required this.keyName,
    required this.kubeletConfiguration,
    required this.labels,
    required this.loginAsNonRoot,
    required this.management,
    required this.multiAzPolicy,
    required this.nodeNameMode,
    required this.nodePoolId,
    required this.nodePoolName,
    required this.onDemandBaseCapacity,
    required this.onDemandPercentageAboveBaseCapacity,
    required this.password,
    required this.period,
    required this.periodUnit,
    required this.platform,
    required this.preUserData,
    required this.privatePoolOptions,
    required this.ramRoleName,
    required this.rdsInstances,
    required this.resourceGroupId,
    required this.runtimeName,
    required this.runtimeVersion,
    required this.scalingConfig,
    required this.scalingGroupId,
    required this.scalingPolicy,
    required this.securityGroupId,
    required this.securityGroupIds,
    required this.securityHardeningOs,
    required this.socEnabled,
    required this.spotInstancePools,
    required this.spotInstanceRemedy,
    required this.spotPriceLimits,
    required this.spotStrategy,
    required this.systemDiskBurstingEnabled,
    required this.systemDiskCategories,
    required this.systemDiskCategory,
    required this.systemDiskEncryptAlgorithm,
    required this.systemDiskEncrypted,
    required this.systemDiskKmsKey,
    required this.systemDiskPerformanceLevel,
    required this.systemDiskProvisionedIops,
    required this.systemDiskSize,
    required this.systemDiskSnapshotPolicyId,
    required this.tags,
    required this.taints,
    required this.teeConfig,
    required this.unschedulable,
    required this.userData,
    required this.vswitchIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRenew': autoRenew,
      'autoRenewPeriod': autoRenewPeriod,
      'cisEnabled': cisEnabled,
      'compensateWithOnDemand': compensateWithOnDemand,
      'cpuPolicy': cpuPolicy,
      'dataDisks':
          pulumi.Input.mapInputValue<
            List<GetKubernetesNodePoolsNodepoolDataDisk>,
            List<Map<String, dynamic>>
          >(
            dataDisks,
            (value) =>
                pulumi.Input.encodeList<
                  GetKubernetesNodePoolsNodepoolDataDisk,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'deploymentSetId': deploymentSetId,
      'desiredSize': desiredSize,
      'imageId': imageId,
      'imageType': imageType,
      'installCloudMonitor': installCloudMonitor,
      'instanceChargeType': instanceChargeType,
      'instanceTypes': instanceTypes,
      'internetChargeType': internetChargeType,
      'internetMaxBandwidthOut': internetMaxBandwidthOut,
      'keyName': keyName,
      'kubeletConfiguration':
          pulumi.Input.mapInputValue<
            GetKubernetesNodePoolsNodepoolKubeletConfiguration,
            Map<String, dynamic>
          >(kubeletConfiguration, (value) => value.toMap()),
      'labels':
          pulumi.Input.mapInputValue<
            List<GetKubernetesNodePoolsNodepoolLabel>,
            List<Map<String, dynamic>>
          >(
            labels,
            (value) =>
                pulumi.Input.encodeList<
                  GetKubernetesNodePoolsNodepoolLabel,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'loginAsNonRoot': loginAsNonRoot,
      'management':
          pulumi.Input.mapInputValue<
            GetKubernetesNodePoolsNodepoolManagement,
            Map<String, dynamic>
          >(management, (value) => value.toMap()),
      'multiAzPolicy': multiAzPolicy,
      'nodeNameMode': nodeNameMode,
      'nodePoolId': nodePoolId,
      'nodePoolName': nodePoolName,
      'onDemandBaseCapacity': onDemandBaseCapacity,
      'onDemandPercentageAboveBaseCapacity':
          onDemandPercentageAboveBaseCapacity,
      'password': password,
      'period': period,
      'periodUnit': periodUnit,
      'platform': platform,
      'preUserData': preUserData,
      'privatePoolOptions':
          pulumi.Input.mapInputValue<
            GetKubernetesNodePoolsNodepoolPrivatePoolOptions,
            Map<String, dynamic>
          >(privatePoolOptions, (value) => value.toMap()),
      'ramRoleName': ramRoleName,
      'rdsInstances': rdsInstances,
      'resourceGroupId': resourceGroupId,
      'runtimeName': runtimeName,
      'runtimeVersion': runtimeVersion,
      'scalingConfig':
          pulumi.Input.mapInputValue<
            GetKubernetesNodePoolsNodepoolScalingConfig,
            Map<String, dynamic>
          >(scalingConfig, (value) => value.toMap()),
      'scalingGroupId': scalingGroupId,
      'scalingPolicy': scalingPolicy,
      'securityGroupId': securityGroupId,
      'securityGroupIds': securityGroupIds,
      'securityHardeningOs': securityHardeningOs,
      'socEnabled': socEnabled,
      'spotInstancePools': spotInstancePools,
      'spotInstanceRemedy': spotInstanceRemedy,
      'spotPriceLimits':
          pulumi.Input.mapInputValue<
            List<GetKubernetesNodePoolsNodepoolSpotPriceLimit>,
            List<Map<String, dynamic>>
          >(
            spotPriceLimits,
            (value) =>
                pulumi.Input.encodeList<
                  GetKubernetesNodePoolsNodepoolSpotPriceLimit,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'spotStrategy': spotStrategy,
      'systemDiskBurstingEnabled': systemDiskBurstingEnabled,
      'systemDiskCategories': systemDiskCategories,
      'systemDiskCategory': systemDiskCategory,
      'systemDiskEncryptAlgorithm': systemDiskEncryptAlgorithm,
      'systemDiskEncrypted': systemDiskEncrypted,
      'systemDiskKmsKey': systemDiskKmsKey,
      'systemDiskPerformanceLevel': systemDiskPerformanceLevel,
      'systemDiskProvisionedIops': systemDiskProvisionedIops,
      'systemDiskSize': systemDiskSize,
      'systemDiskSnapshotPolicyId': systemDiskSnapshotPolicyId,
      'tags': tags,
      'taints':
          pulumi.Input.mapInputValue<
            List<GetKubernetesNodePoolsNodepoolTaint>,
            List<Map<String, dynamic>>
          >(
            taints,
            (value) =>
                pulumi.Input.encodeList<
                  GetKubernetesNodePoolsNodepoolTaint,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'teeConfig':
          pulumi.Input.mapInputValue<
            GetKubernetesNodePoolsNodepoolTeeConfig,
            Map<String, dynamic>
          >(teeConfig, (value) => value.toMap()),
      'unschedulable': unschedulable,
      'userData': userData,
      'vswitchIds': vswitchIds,
    };
  }

  factory GetKubernetesNodePoolsNodepool.fromMap(Map<String, dynamic> map) {
    return GetKubernetesNodePoolsNodepool(
      autoRenew: pulumi.Input.fromValue(map['autoRenew'] as bool),
      autoRenewPeriod: pulumi.Input.fromValue(map['autoRenewPeriod'] as int),
      cisEnabled: pulumi.Input.fromValue(map['cisEnabled'] as bool),
      compensateWithOnDemand: pulumi.Input.fromValue(
        map['compensateWithOnDemand'] as bool,
      ),
      cpuPolicy: pulumi.Input.fromValue(map['cpuPolicy'] as String),
      dataDisks: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetKubernetesNodePoolsNodepoolDataDisk>(
          map['dataDisks']!,
          (value) => GetKubernetesNodePoolsNodepoolDataDisk.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      deploymentSetId: pulumi.Input.fromValue(map['deploymentSetId'] as String),
      desiredSize: pulumi.Input.fromValue(map['desiredSize'] as String),
      imageId: pulumi.Input.fromValue(map['imageId'] as String),
      imageType: pulumi.Input.fromValue(map['imageType'] as String),
      installCloudMonitor: pulumi.Input.fromValue(
        map['installCloudMonitor'] as bool,
      ),
      instanceChargeType: pulumi.Input.fromValue(
        map['instanceChargeType'] as String,
      ),
      instanceTypes: pulumi.Input.fromValue(
        (map['instanceTypes'] as List).cast<String>(),
      ),
      internetChargeType: pulumi.Input.fromValue(
        map['internetChargeType'] as String,
      ),
      internetMaxBandwidthOut: pulumi.Input.fromValue(
        map['internetMaxBandwidthOut'] as int,
      ),
      keyName: pulumi.Input.fromValue(map['keyName'] as String),
      kubeletConfiguration: pulumi.Input.fromValue(
        GetKubernetesNodePoolsNodepoolKubeletConfiguration.fromMap(
          (map['kubeletConfiguration']! as Map).cast<String, dynamic>(),
        ),
      ),
      labels: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetKubernetesNodePoolsNodepoolLabel>(
          map['labels']!,
          (value) => GetKubernetesNodePoolsNodepoolLabel.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      loginAsNonRoot: pulumi.Input.fromValue(map['loginAsNonRoot'] as bool),
      management: pulumi.Input.fromValue(
        GetKubernetesNodePoolsNodepoolManagement.fromMap(
          (map['management']! as Map).cast<String, dynamic>(),
        ),
      ),
      multiAzPolicy: pulumi.Input.fromValue(map['multiAzPolicy'] as String),
      nodeNameMode: pulumi.Input.fromValue(map['nodeNameMode'] as String),
      nodePoolId: pulumi.Input.fromValue(map['nodePoolId'] as String),
      nodePoolName: pulumi.Input.fromValue(map['nodePoolName'] as String),
      onDemandBaseCapacity: pulumi.Input.fromValue(
        map['onDemandBaseCapacity'] as String,
      ),
      onDemandPercentageAboveBaseCapacity: pulumi.Input.fromValue(
        map['onDemandPercentageAboveBaseCapacity'] as String,
      ),
      password: pulumi.Input.fromValue(map['password'] as String),
      period: pulumi.Input.fromValue(map['period'] as int),
      periodUnit: pulumi.Input.fromValue(map['periodUnit'] as String),
      platform: pulumi.Input.fromValue(map['platform'] as String),
      preUserData: pulumi.Input.fromValue(map['preUserData'] as String),
      privatePoolOptions: pulumi.Input.fromValue(
        GetKubernetesNodePoolsNodepoolPrivatePoolOptions.fromMap(
          (map['privatePoolOptions']! as Map).cast<String, dynamic>(),
        ),
      ),
      ramRoleName: pulumi.Input.fromValue(map['ramRoleName'] as String),
      rdsInstances: pulumi.Input.fromValue(
        (map['rdsInstances'] as List).cast<String>(),
      ),
      resourceGroupId: pulumi.Input.fromValue(map['resourceGroupId'] as String),
      runtimeName: pulumi.Input.fromValue(map['runtimeName'] as String),
      runtimeVersion: pulumi.Input.fromValue(map['runtimeVersion'] as String),
      scalingConfig: pulumi.Input.fromValue(
        GetKubernetesNodePoolsNodepoolScalingConfig.fromMap(
          (map['scalingConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      scalingGroupId: pulumi.Input.fromValue(map['scalingGroupId'] as String),
      scalingPolicy: pulumi.Input.fromValue(map['scalingPolicy'] as String),
      securityGroupId: pulumi.Input.fromValue(map['securityGroupId'] as String),
      securityGroupIds: pulumi.Input.fromValue(
        (map['securityGroupIds'] as List).cast<String>(),
      ),
      securityHardeningOs: pulumi.Input.fromValue(
        map['securityHardeningOs'] as bool,
      ),
      socEnabled: pulumi.Input.fromValue(map['socEnabled'] as bool),
      spotInstancePools: pulumi.Input.fromValue(
        map['spotInstancePools'] as int,
      ),
      spotInstanceRemedy: pulumi.Input.fromValue(
        map['spotInstanceRemedy'] as bool,
      ),
      spotPriceLimits: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetKubernetesNodePoolsNodepoolSpotPriceLimit>(
          map['spotPriceLimits']!,
          (value) => GetKubernetesNodePoolsNodepoolSpotPriceLimit.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      spotStrategy: pulumi.Input.fromValue(map['spotStrategy'] as String),
      systemDiskBurstingEnabled: pulumi.Input.fromValue(
        map['systemDiskBurstingEnabled'] as bool,
      ),
      systemDiskCategories: pulumi.Input.fromValue(
        (map['systemDiskCategories'] as List).cast<String>(),
      ),
      systemDiskCategory: pulumi.Input.fromValue(
        map['systemDiskCategory'] as String,
      ),
      systemDiskEncryptAlgorithm: pulumi.Input.fromValue(
        map['systemDiskEncryptAlgorithm'] as String,
      ),
      systemDiskEncrypted: pulumi.Input.fromValue(
        map['systemDiskEncrypted'] as bool,
      ),
      systemDiskKmsKey: pulumi.Input.fromValue(
        map['systemDiskKmsKey'] as String,
      ),
      systemDiskPerformanceLevel: pulumi.Input.fromValue(
        map['systemDiskPerformanceLevel'] as String,
      ),
      systemDiskProvisionedIops: pulumi.Input.fromValue(
        map['systemDiskProvisionedIops'] as int,
      ),
      systemDiskSize: pulumi.Input.fromValue(map['systemDiskSize'] as int),
      systemDiskSnapshotPolicyId: pulumi.Input.fromValue(
        map['systemDiskSnapshotPolicyId'] as String,
      ),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
      taints: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetKubernetesNodePoolsNodepoolTaint>(
          map['taints']!,
          (value) => GetKubernetesNodePoolsNodepoolTaint.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      teeConfig: pulumi.Input.fromValue(
        GetKubernetesNodePoolsNodepoolTeeConfig.fromMap(
          (map['teeConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      unschedulable: pulumi.Input.fromValue(map['unschedulable'] as bool),
      userData: pulumi.Input.fromValue(map['userData'] as String),
      vswitchIds: pulumi.Input.fromValue(
        (map['vswitchIds'] as List).cast<String>(),
      ),
    );
  }
}
