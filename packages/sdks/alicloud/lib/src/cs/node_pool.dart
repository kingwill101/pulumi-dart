import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_pool_args.dart';
import 'node_pool_auto_mode.dart';
import 'node_pool_eflo_node_group.dart';
import 'node_pool_instance_metadata_options.dart';
import 'node_pool_kubelet_configuration.dart';
import 'node_pool_management.dart';
import 'node_pool_private_pool_options.dart';
import 'node_pool_rolling_policy.dart';
import 'node_pool_scaling_config.dart';
import 'node_pool_state.dart';
import 'node_pool_tee_config.dart';
import 'node_pool_upgrade_policy.dart';

/// ## Import
///
/// Container Service for Kubernetes (ACK) Nodepool can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cs/nodePool:NodePool example <cluster_id>:<node_pool_id>
/// ```
class NodePool extends pulumi.CustomResource {
  /// Whether to enable auto mode. When enabled, the system will automatically manage the node pool with optimized default configurations. **Note:** When `auto_mode` is enabled, many parameters will be automatically set to default values and cannot be modified. See `auto_mode.enable` below for details. See `auto_mode` below.
  late final pulumi.Output<NodePoolAutoMode> autoMode;

  /// Whether to enable automatic renewal for nodes in the node pool takes effect only when `instance_charge_type` is set to `PrePaid`. Default value: `false`. Valid values:
  late final pulumi.Output<bool?> autoRenew;

  /// The automatic renewal period of nodes in the node pool takes effect only when you select Prepaid and Automatic Renewal, and is a required value. When `PeriodUnit = Month`, the value range is {1, 2, 3, 6, 12}. Default value: 1.
  late final pulumi.Output<int?> autoRenewPeriod;

  /// Whether enable worker node to support cis security reinforcement, its valid value `true` or `false`. Default to `false` and apply to AliyunLinux series. Use `security_hardening_os` instead.
  late final pulumi.Output<bool?> cisEnabled;

  /// The id of kubernetes cluster.
  late final pulumi.Output<String> clusterId;

  /// Specifies whether to automatically create pay-as-you-go instances to meet the required number of ECS instances if preemptible instances cannot be created due to reasons such as cost or insufficient inventory. This parameter takes effect when you set `multi_az_policy` to `COST_OPTIMIZED`. Valid values: `true`: automatically creates pay-as-you-go instances to meet the required number of ECS instances if preemptible instances cannot be created. `false`: does not create pay-as-you-go instances to meet the required number of ECS instances if preemptible instances cannot be created.
  late final pulumi.Output<bool?> compensateWithOnDemand;

  /// Node CPU management policies. Default value: `none`. When the cluster version is 1.12.6 or later, the following two policies are supported:
  late final pulumi.Output<String> cpuPolicy;

  /// Configure the data disk of the node in the node pool. See `data_disks` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> dataDisks;

  /// The deployment set of node pool. Specify the deploymentSet to ensure that the nodes in the node pool can be distributed on different physical machines.
  late final pulumi.Output<String?> deploymentSetId;

  /// Number of expected nodes in the node pool.
  late final pulumi.Output<String?> desiredSize;

  /// Lingjun node pool configuration. See `eflo_node_group` below.
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<NodePoolEfloNodeGroup?> efloNodeGroup;

  /// Whether to force deletion.
  ///
  /// &gt; **NOTE:** This parameter only takes effect when deletion is triggered.
  late final pulumi.Output<bool?> forceDelete;

  /// After you select this check box, if data disks have been attached to the specified ECS instances and the file system of the last data disk is uninitialized, the system automatically formats the last data disk to ext4 and mounts the data disk to /var/lib/docker and /var/lib/kubelet. The original data on the disk will be cleared. Make sure that you back up data in advance. If no data disk is mounted on the ECS instance, no new data disk will be purchased. Default is `false`.
  late final pulumi.Output<bool> formatDisk;

  /// The custom image ID. The system-provided image is used by default.
  late final pulumi.Output<String> imageId;

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
  late final pulumi.Output<String> imageType;

  /// Whether to install cloud monitoring on the ECS node. After installation, you can view the monitoring information of the created ECS instance in the cloud monitoring console and recommend enable it. Default value: `false`. Valid values:
  late final pulumi.Output<bool?> installCloudMonitor;

  /// Node payment type. Valid values: `PostPaid`, `PrePaid`, default is `PostPaid`. If value is `PrePaid`, the arguments `period`, `period_unit`, `auto_renew` and `auto_renew_period` are required.
  late final pulumi.Output<String> instanceChargeType;

  /// ECS instance metadata access configuration. See `instance_metadata_options` below.
  late final pulumi.Output<NodePoolInstanceMetadataOptions>
  instanceMetadataOptions;

  /// Instance property configuration. See `instance_patterns` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> instancePatterns;

  /// In the node instance specification list, you can select multiple instance specifications as alternatives. When each node is created, it will try to purchase from the first specification until it is created successfully. The final purchased instance specifications may vary with inventory changes.
  late final pulumi.Output<List<String>?> instanceTypes;

  /// The instance list. Add existing nodes under the same cluster VPC to the node pool.
  late final pulumi.Output<List<String>?> instances;

  /// The billing method for network usage. Valid values `PayByBandwidth` and `PayByTraffic`. Conflict with `eip_internet_charge_type`, EIP and public network IP can only choose one.
  late final pulumi.Output<String?> internetChargeType;

  /// The maximum bandwidth of the public IP address of the node. The unit is Mbps(Mega bit per second). The value range is:\[1,100\]
  late final pulumi.Output<int?> internetMaxBandwidthOut;

  /// Add an existing instance to the node pool, whether to keep the original instance name. It is recommended to set to `true`.
  late final pulumi.Output<bool> keepInstanceName;

  /// The name of the key pair. When the node pool is a managed node pool, only `key_name` is supported.
  late final pulumi.Output<String?> keyName;

  /// An KMS encrypts password used to a cs kubernetes. You have to specify one of `password` `key_name` `kms_encrypted_password` fields.
  late final pulumi.Output<String?> kmsEncryptedPassword;

  /// An KMS encryption context used to decrypt `kms_encrypted_password` before creating or updating a cs kubernetes with `kms_encrypted_password`. See [Encryption Context](https://www.alibabacloud.com/help/doc-detail/42975.htm). It is valid when `kms_encrypted_password` is set.
  late final pulumi.Output<Map<String, String>?> kmsEncryptionContext;

  /// Kubelet configuration parameters for worker nodes. See `kubelet_configuration` below. More information in [Kubelet Configuration](https://kubernetes.io/docs/reference/config-api/kubelet-config.v1beta1/). See `kubelet_configuration` below.
  late final pulumi.Output<NodePoolKubeletConfiguration?> kubeletConfiguration;

  /// A List of Kubernetes labels to assign to the nodes . Only labels that are applied with the ACK API are managed by this argument. Detailed below. More information in [Labels](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/). See `labels` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> labels;

  /// Whether the ECS instance is logged on as a ecs-user user. Valid value: `true` and `false`.
  late final pulumi.Output<bool?> loginAsNonRoot;

  /// Managed node pool configuration. See `management` below.
  late final pulumi.Output<NodePoolManagement> management;

  /// The scaling policy for ECS instances in a multi-zone scaling group. Valid value: `PRIORITY`, `COST_OPTIMIZED` and `BALANCE`. `PRIORITY`: scales the capacity according to the virtual switches you define (VSwitchIds.N). When an ECS instance cannot be created in the zone where the higher-priority vSwitch is located, the next-priority vSwitch is automatically used to create an ECS instance. `COST_OPTIMIZED`: try to create by vCPU unit price from low to high. When the scaling configuration is configured with multiple instances of preemptible billing, preemptible instances are created first. You can continue to use the `CompensateWithOnDemand` parameter to specify whether to automatically try to create a preemptible instance by paying for it. It takes effect only when the scaling configuration has multi-instance specifications or preemptible instances. `BALANCE`: distributes ECS instances evenly among the multi-zone specified by the scaling group. If the zones become unbalanced due to insufficient inventory, you can use the API RebalanceInstances to balance resources.
  late final pulumi.Output<String> multiAzPolicy;

  /// . Field 'name' has been deprecated from provider version 1.219.0. New field 'node_pool_name' instead.
  late final pulumi.Output<String> name;

  /// The worker node number of the node pool. From version 1.111.0, `node_count` is not required.
  late final pulumi.Output<int> nodeCount;

  /// Each node name consists of a prefix, its private network IP, and a suffix, separated by commas. The input format is `customized,,ip,`.
  /// - The prefix and suffix can be composed of one or more parts separated by '.', each part can use lowercase letters, numbers and '-', and the beginning and end of the node name must be lowercase letters and numbers.
  /// - The node IP address is the complete private IP address of the node.
  /// - For example, if the string `customized,aliyun,ip,com` is passed in (where 'customized' and 'ip' are fixed strings, 'aliyun' is the prefix, and 'com' is the suffix), the name of the node is `aliyun192.168.xxx.xxxcom`.
  late final pulumi.Output<String> nodeNameMode;

  /// The first ID of the resource.
  late final pulumi.Output<String> nodePoolId;

  /// The name of node pool.
  late final pulumi.Output<String> nodePoolName;

  /// The minimum number of pay-as-you-go instances that must be kept in the scaling group. Valid values: 0 to 1000. If the number of pay-as-you-go instances is less than the value of this parameter, Auto Scaling preferably creates pay-as-you-go instances.
  late final pulumi.Output<String?> onDemandBaseCapacity;

  /// The percentage of pay-as-you-go instances among the extra instances that exceed the number specified by `on_demand_base_capacity`. Valid values: 0 to 100.
  late final pulumi.Output<String?> onDemandPercentageAboveBaseCapacity;

  /// The password of ssh login. You have to specify one of `password` and `key_name` fields. The password rule is 8 to 30 characters and contains at least three items (upper and lower case letters, numbers, and special symbols).
  late final pulumi.Output<String?> password;

  /// Node payment period. Its valid value is one of {1, 2, 3, 6, 12}.
  late final pulumi.Output<int?> period;

  /// Node payment period unit, valid value: `Month`. Default is `Month`.
  late final pulumi.Output<String?> periodUnit;

  /// Operating system release, using `image_type` instead.
  late final pulumi.Output<String> platform;

  /// Node pre custom data, base64-encoded, the script executed before the node is initialized.
  late final pulumi.Output<String?> preUserData;

  /// Private node pool configuration. See `private_pool_options` below.
  late final pulumi.Output<NodePoolPrivatePoolOptions?> privatePoolOptions;

  /// The name of the Worker RAM role.
  /// * If it is empty, the default Worker RAM role created in the cluster will be used.
  /// * If the specified RAM role is not empty, the specified RAM role must be a **Common Service role**, and its **trusted service** configuration must be **cloud server**. For more information, see [Create a common service role](https://help.aliyun.com/document_detail/116800.html). If the specified RAM role is not the default Worker RAM role created in the cluster, the role name cannot start with 'KubernetesMasterRole-'or 'KubernetesWorkerRole.
  ///
  /// &gt; **NOTE:**  This parameter is only supported for ACK-managed clusters of 1.22 or later versions.
  late final pulumi.Output<String> ramRoleName;

  /// The list of RDS instances.
  late final pulumi.Output<List<String>?> rdsInstances;

  /// The ID of the resource group
  late final pulumi.Output<String> resourceGroupId;
  late final pulumi.Output<NodePoolRollingPolicy?> rollingPolicy;

  /// The runtime name of containers. If not set, the cluster runtime will be used as the node pool runtime. If you select another container runtime, see [Comparison of Docker, containerd, and Sandboxed-Container](https://www.alibabacloud.com/help/doc-detail/160313.htm).
  late final pulumi.Output<String> runtimeName;

  /// The runtime version of containers. If not set, the cluster runtime will be used as the node pool runtime.
  late final pulumi.Output<String> runtimeVersion;

  /// Automatic scaling configuration. See `scaling_config` below.
  late final pulumi.Output<NodePoolScalingConfig> scalingConfig;

  /// The ID of the scaling group.
  late final pulumi.Output<String> scalingGroupId;

  /// Scaling group mode, default value: `release`. Valid values:
  late final pulumi.Output<String> scalingPolicy;

  /// The security group ID of the node pool. This field has been replaced by `security_group_ids`, please use the `security_group_ids` field instead.
  late final pulumi.Output<String> securityGroupId;

  /// Multiple security groups can be configured for a node pool. If both `security_group_ids` and `security_group_id` are configured, `security_group_ids` takes effect. This field cannot be modified.
  late final pulumi.Output<List<String>> securityGroupIds;

  /// Alibaba Cloud OS security reinforcement. Default value: `false`. Value:
  late final pulumi.Output<bool?> securityHardeningOs;

  /// Whether enable worker node to support soc security reinforcement, its valid value `true` or `false`. Default to `false` and apply to AliyunLinux series. See [SOC Reinforcement](https://help.aliyun.com/document_detail/196148.html).
  ///
  /// &gt; **NOTE:**  It is forbidden to set both `security_hardening_os` and `soc_enabled` to `true` at the same time.
  late final pulumi.Output<bool?> socEnabled;

  /// The number of instance types that are available. Auto Scaling creates preemptible instances of multiple instance types that are available at the lowest cost. Valid values: 1 to 10.
  late final pulumi.Output<int?> spotInstancePools;

  /// Specifies whether to supplement preemptible instances when the number of preemptible instances drops below the specified minimum number. If you set the value to true, Auto Scaling attempts to create a new preemptible instance when the system notifies that an existing preemptible instance is about to be reclaimed. Valid values: `true`: enables the supplementation of preemptible instances. `false`: disables the supplementation of preemptible instances.
  late final pulumi.Output<bool?> spotInstanceRemedy;

  /// The current single preemptible instance type market price range configuration. See `spot_price_limit` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> spotPriceLimits;

  /// The preemptible instance type. Value:
  /// - `NoSpot` : Non-preemptible instance.
  /// - `SpotWithPriceLimit` : Set the upper limit of the preemptible instance price.
  /// - `SpotAsPriceGo` : The system automatically bids, following the actual price of the current market.
  late final pulumi.Output<String> spotStrategy;

  /// Specifies whether to enable the burst feature for system disks. Valid values:`true`: enables the burst feature. `false`: disables the burst feature. This parameter is supported only when `system_disk_category` is set to `cloud_auto`.
  late final pulumi.Output<bool?> systemDiskBurstingEnabled;

  /// The multi-disk categories of the system disk. When a high-priority disk type cannot be used, Auto Scaling automatically tries to create a system disk with the next priority disk category. Valid values see `system_disk_category`.
  late final pulumi.Output<List<String>> systemDiskCategories;

  /// The category of the system disk for nodes. Default value: `cloud_efficiency`. Valid values:
  late final pulumi.Output<String> systemDiskCategory;

  /// The encryption algorithm used by the system disk. Value range: aes-256.
  late final pulumi.Output<String?> systemDiskEncryptAlgorithm;

  /// Whether to encrypt the system disk. Value range: `true`: encryption. `false`: Do not encrypt.
  late final pulumi.Output<bool?> systemDiskEncrypted;

  /// The ID of the KMS key used by the system disk.
  late final pulumi.Output<String?> systemDiskKmsKey;

  /// The system disk performance of the node takes effect only for the ESSD disk.
  /// - `PL0`: maximum random read/write IOPS 10000 for a single disk.
  /// - `PL1`: maximum random read/write IOPS 50000 for a single disk.
  /// - `PL2`: highest random read/write IOPS 100000 for a single disk.
  /// - `PL3`: maximum random read/write IOPS 1 million for a single disk.
  late final pulumi.Output<String?> systemDiskPerformanceLevel;

  /// The predefined IOPS of a system disk. Valid values: 0 to min{50,000, 1,000 × Capacity - Baseline IOPS}. Baseline IOPS = min{1,800 + 50 × Capacity, 50,000}. This parameter is supported only when `system_disk_category` is set to `cloud_auto`.
  late final pulumi.Output<int?> systemDiskProvisionedIops;

  /// The size of the system disk. Unit: GiB. The value of this parameter must be at least 1 and greater than or equal to the image size. Default value: 40 or the size of the image, whichever is larger.
  /// - Basic disk: 20 to 500.
  /// - ESSD (cloud_essd): The valid values vary based on the performance level of the ESSD. PL0 ESSD: 1 to 2048. PL1 ESSD: 20 to 2048. PL2 ESSD: 461 to 2048. PL3 ESSD: 1261 to 2048.
  /// - ESSD AutoPL disk (cloud_auto): 1 to 2048.
  /// - Other disk categories: 20 to 2048.
  late final pulumi.Output<int?> systemDiskSize;

  /// The ID of the automatic snapshot policy used by the system disk.
  late final pulumi.Output<String?> systemDiskSnapshotPolicyId;

  /// Add tags only for ECS instances. The maximum length of the tag key is 128 characters. The tag key and value cannot start with aliyun or acs:, or contain https:// or http://.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A List of Kubernetes taints to assign to the nodes. Detailed below. More information in [Taints and Toleration](https://kubernetes.io/docs/concepts/scheduling-eviction/taint-and-toleration/). See `taints` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> taints;

  /// The configuration about confidential computing for the cluster. See `tee_config` below.
  late final pulumi.Output<NodePoolTeeConfig> teeConfig;

  /// Node pool type, value range:
  /// -'ess': common node pool (including hosting function and auto scaling function).
  /// -'lingjun': Lingjun node pool.
  late final pulumi.Output<String> type;

  /// Whether the node after expansion can be scheduled.
  late final pulumi.Output<bool?> unschedulable;
  late final pulumi.Output<bool?> updateNodes;

  /// Configuration block for node pool upgrade operations. This is a transient parameter that triggers node pool upgrades when specified. Once the upgrade completes, this block should be removed from your configuration to prevent unintended re-upgrades on subsequent applies. See `upgrade_policy` below.
  ///
  /// &gt; **NOTE:** This parameter only applies during resource update.
  late final pulumi.Output<NodePoolUpgradePolicy?> upgradePolicy;

  /// Node custom data, base64-encoded.
  late final pulumi.Output<String?> userData;

  /// The vswitches used by node pool workers.
  late final pulumi.Output<List<String>?> vswitchIds;

  /// Creates a new [NodePool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NodePool]. {@macro pulumi_cs_node_pool_node_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NodePool(
    String name, {
    NodePoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cs/nodePool:NodePool',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    autoMode = registerOutput<NodePoolAutoMode>('autoMode');
    autoRenew = registerOutput<bool?>('autoRenew');
    autoRenewPeriod = registerOutput<int?>('autoRenewPeriod');
    cisEnabled = registerOutput<bool?>('cisEnabled');
    clusterId = registerOutput<String>('clusterId');
    compensateWithOnDemand = registerOutput<bool?>('compensateWithOnDemand');
    cpuPolicy = registerOutput<String>('cpuPolicy');
    dataDisks = registerOutput<List<Map<String, dynamic>>?>('dataDisks');
    deploymentSetId = registerOutput<String?>('deploymentSetId');
    desiredSize = registerOutput<String?>('desiredSize');
    efloNodeGroup = registerOutput<NodePoolEfloNodeGroup?>('efloNodeGroup');
    forceDelete = registerOutput<bool?>('forceDelete');
    formatDisk = registerOutput<bool>('formatDisk');
    imageId = registerOutput<String>('imageId');
    imageType = registerOutput<String>('imageType');
    installCloudMonitor = registerOutput<bool?>('installCloudMonitor');
    instanceChargeType = registerOutput<String>('instanceChargeType');
    instanceMetadataOptions = registerOutput<NodePoolInstanceMetadataOptions>(
      'instanceMetadataOptions',
    );
    instancePatterns = registerOutput<List<Map<String, dynamic>>?>(
      'instancePatterns',
    );
    instanceTypes = registerOutput<List<String>?>('instanceTypes');
    instances = registerOutput<List<String>?>('instances');
    internetChargeType = registerOutput<String?>('internetChargeType');
    internetMaxBandwidthOut = registerOutput<int?>('internetMaxBandwidthOut');
    keepInstanceName = registerOutput<bool>('keepInstanceName');
    keyName = registerOutput<String?>('keyName');
    kmsEncryptedPassword = registerOutput<String?>('kmsEncryptedPassword');
    kmsEncryptionContext = registerOutput<Map<String, String>?>(
      'kmsEncryptionContext',
    );
    kubeletConfiguration = registerOutput<NodePoolKubeletConfiguration?>(
      'kubeletConfiguration',
    );
    labels = registerOutput<List<Map<String, dynamic>>?>('labels');
    loginAsNonRoot = registerOutput<bool?>('loginAsNonRoot');
    management = registerOutput<NodePoolManagement>('management');
    multiAzPolicy = registerOutput<String>('multiAzPolicy');
    this.name = registerOutput<String>('name');
    nodeCount = registerOutput<int>('nodeCount');
    nodeNameMode = registerOutput<String>('nodeNameMode');
    nodePoolId = registerOutput<String>('nodePoolId');
    nodePoolName = registerOutput<String>('nodePoolName');
    onDemandBaseCapacity = registerOutput<String?>('onDemandBaseCapacity');
    onDemandPercentageAboveBaseCapacity = registerOutput<String?>(
      'onDemandPercentageAboveBaseCapacity',
    );
    password = registerOutput<String?>('password');
    period = registerOutput<int?>('period');
    periodUnit = registerOutput<String?>('periodUnit');
    platform = registerOutput<String>('platform');
    preUserData = registerOutput<String?>('preUserData');
    privatePoolOptions = registerOutput<NodePoolPrivatePoolOptions?>(
      'privatePoolOptions',
    );
    ramRoleName = registerOutput<String>('ramRoleName');
    rdsInstances = registerOutput<List<String>?>('rdsInstances');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    rollingPolicy = registerOutput<NodePoolRollingPolicy?>('rollingPolicy');
    runtimeName = registerOutput<String>('runtimeName');
    runtimeVersion = registerOutput<String>('runtimeVersion');
    scalingConfig = registerOutput<NodePoolScalingConfig>('scalingConfig');
    scalingGroupId = registerOutput<String>('scalingGroupId');
    scalingPolicy = registerOutput<String>('scalingPolicy');
    securityGroupId = registerOutput<String>('securityGroupId');
    securityGroupIds = registerOutput<List<String>>('securityGroupIds');
    securityHardeningOs = registerOutput<bool?>('securityHardeningOs');
    socEnabled = registerOutput<bool?>('socEnabled');
    spotInstancePools = registerOutput<int?>('spotInstancePools');
    spotInstanceRemedy = registerOutput<bool?>('spotInstanceRemedy');
    spotPriceLimits = registerOutput<List<Map<String, dynamic>>?>(
      'spotPriceLimits',
    );
    spotStrategy = registerOutput<String>('spotStrategy');
    systemDiskBurstingEnabled = registerOutput<bool?>(
      'systemDiskBurstingEnabled',
    );
    systemDiskCategories = registerOutput<List<String>>('systemDiskCategories');
    systemDiskCategory = registerOutput<String>('systemDiskCategory');
    systemDiskEncryptAlgorithm = registerOutput<String?>(
      'systemDiskEncryptAlgorithm',
    );
    systemDiskEncrypted = registerOutput<bool?>('systemDiskEncrypted');
    systemDiskKmsKey = registerOutput<String?>('systemDiskKmsKey');
    systemDiskPerformanceLevel = registerOutput<String?>(
      'systemDiskPerformanceLevel',
    );
    systemDiskProvisionedIops = registerOutput<int?>(
      'systemDiskProvisionedIops',
    );
    systemDiskSize = registerOutput<int?>('systemDiskSize');
    systemDiskSnapshotPolicyId = registerOutput<String?>(
      'systemDiskSnapshotPolicyId',
    );
    tags = registerOutput<Map<String, String>?>('tags');
    taints = registerOutput<List<Map<String, dynamic>>?>('taints');
    teeConfig = registerOutput<NodePoolTeeConfig>('teeConfig');
    type = registerOutput<String>('type');
    unschedulable = registerOutput<bool?>('unschedulable');
    updateNodes = registerOutput<bool?>('updateNodes');
    upgradePolicy = registerOutput<NodePoolUpgradePolicy?>('upgradePolicy');
    userData = registerOutput<String?>('userData');
    vswitchIds = registerOutput<List<String>?>('vswitchIds');
  }

  /// Gets an existing [NodePool] resource's state with the given [name] and [id].
  static NodePool get(
    String name,
    pulumi.Input<String> id, {
    NodePoolState? state,
  }) {
    return NodePool._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NodePool._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cs/nodePool:NodePool',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    autoMode = registerOutput<NodePoolAutoMode>('autoMode');
    autoRenew = registerOutput<bool?>('autoRenew');
    autoRenewPeriod = registerOutput<int?>('autoRenewPeriod');
    cisEnabled = registerOutput<bool?>('cisEnabled');
    clusterId = registerOutput<String>('clusterId');
    compensateWithOnDemand = registerOutput<bool?>('compensateWithOnDemand');
    cpuPolicy = registerOutput<String>('cpuPolicy');
    dataDisks = registerOutput<List<Map<String, dynamic>>?>('dataDisks');
    deploymentSetId = registerOutput<String?>('deploymentSetId');
    desiredSize = registerOutput<String?>('desiredSize');
    efloNodeGroup = registerOutput<NodePoolEfloNodeGroup?>('efloNodeGroup');
    forceDelete = registerOutput<bool?>('forceDelete');
    formatDisk = registerOutput<bool>('formatDisk');
    imageId = registerOutput<String>('imageId');
    imageType = registerOutput<String>('imageType');
    installCloudMonitor = registerOutput<bool?>('installCloudMonitor');
    instanceChargeType = registerOutput<String>('instanceChargeType');
    instanceMetadataOptions = registerOutput<NodePoolInstanceMetadataOptions>(
      'instanceMetadataOptions',
    );
    instancePatterns = registerOutput<List<Map<String, dynamic>>?>(
      'instancePatterns',
    );
    instanceTypes = registerOutput<List<String>?>('instanceTypes');
    instances = registerOutput<List<String>?>('instances');
    internetChargeType = registerOutput<String?>('internetChargeType');
    internetMaxBandwidthOut = registerOutput<int?>('internetMaxBandwidthOut');
    keepInstanceName = registerOutput<bool>('keepInstanceName');
    keyName = registerOutput<String?>('keyName');
    kmsEncryptedPassword = registerOutput<String?>('kmsEncryptedPassword');
    kmsEncryptionContext = registerOutput<Map<String, String>?>(
      'kmsEncryptionContext',
    );
    kubeletConfiguration = registerOutput<NodePoolKubeletConfiguration?>(
      'kubeletConfiguration',
    );
    labels = registerOutput<List<Map<String, dynamic>>?>('labels');
    loginAsNonRoot = registerOutput<bool?>('loginAsNonRoot');
    management = registerOutput<NodePoolManagement>('management');
    multiAzPolicy = registerOutput<String>('multiAzPolicy');
    this.name = registerOutput<String>('name');
    nodeCount = registerOutput<int>('nodeCount');
    nodeNameMode = registerOutput<String>('nodeNameMode');
    nodePoolId = registerOutput<String>('nodePoolId');
    nodePoolName = registerOutput<String>('nodePoolName');
    onDemandBaseCapacity = registerOutput<String?>('onDemandBaseCapacity');
    onDemandPercentageAboveBaseCapacity = registerOutput<String?>(
      'onDemandPercentageAboveBaseCapacity',
    );
    password = registerOutput<String?>('password');
    period = registerOutput<int?>('period');
    periodUnit = registerOutput<String?>('periodUnit');
    platform = registerOutput<String>('platform');
    preUserData = registerOutput<String?>('preUserData');
    privatePoolOptions = registerOutput<NodePoolPrivatePoolOptions?>(
      'privatePoolOptions',
    );
    ramRoleName = registerOutput<String>('ramRoleName');
    rdsInstances = registerOutput<List<String>?>('rdsInstances');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    rollingPolicy = registerOutput<NodePoolRollingPolicy?>('rollingPolicy');
    runtimeName = registerOutput<String>('runtimeName');
    runtimeVersion = registerOutput<String>('runtimeVersion');
    scalingConfig = registerOutput<NodePoolScalingConfig>('scalingConfig');
    scalingGroupId = registerOutput<String>('scalingGroupId');
    scalingPolicy = registerOutput<String>('scalingPolicy');
    securityGroupId = registerOutput<String>('securityGroupId');
    securityGroupIds = registerOutput<List<String>>('securityGroupIds');
    securityHardeningOs = registerOutput<bool?>('securityHardeningOs');
    socEnabled = registerOutput<bool?>('socEnabled');
    spotInstancePools = registerOutput<int?>('spotInstancePools');
    spotInstanceRemedy = registerOutput<bool?>('spotInstanceRemedy');
    spotPriceLimits = registerOutput<List<Map<String, dynamic>>?>(
      'spotPriceLimits',
    );
    spotStrategy = registerOutput<String>('spotStrategy');
    systemDiskBurstingEnabled = registerOutput<bool?>(
      'systemDiskBurstingEnabled',
    );
    systemDiskCategories = registerOutput<List<String>>('systemDiskCategories');
    systemDiskCategory = registerOutput<String>('systemDiskCategory');
    systemDiskEncryptAlgorithm = registerOutput<String?>(
      'systemDiskEncryptAlgorithm',
    );
    systemDiskEncrypted = registerOutput<bool?>('systemDiskEncrypted');
    systemDiskKmsKey = registerOutput<String?>('systemDiskKmsKey');
    systemDiskPerformanceLevel = registerOutput<String?>(
      'systemDiskPerformanceLevel',
    );
    systemDiskProvisionedIops = registerOutput<int?>(
      'systemDiskProvisionedIops',
    );
    systemDiskSize = registerOutput<int?>('systemDiskSize');
    systemDiskSnapshotPolicyId = registerOutput<String?>(
      'systemDiskSnapshotPolicyId',
    );
    tags = registerOutput<Map<String, String>?>('tags');
    taints = registerOutput<List<Map<String, dynamic>>?>('taints');
    teeConfig = registerOutput<NodePoolTeeConfig>('teeConfig');
    type = registerOutput<String>('type');
    unschedulable = registerOutput<bool?>('unschedulable');
    updateNodes = registerOutput<bool?>('updateNodes');
    upgradePolicy = registerOutput<NodePoolUpgradePolicy?>('upgradePolicy');
    userData = registerOutput<String?>('userData');
    vswitchIds = registerOutput<List<String>?>('vswitchIds');
  }
}
