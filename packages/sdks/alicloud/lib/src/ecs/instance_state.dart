// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_cpu_options.dart';
import 'instance_data_disk.dart';
import 'instance_image_options.dart';
import 'instance_maintenance_time.dart';
import 'instance_network_interfaces.dart';

/// Input properties used for looking up and filtering Instance resources.
class InstanceState {
  /// It has been deprecated from version "1.7.0". Setting "internet_max_bandwidth_out" larger than 0 can allocate a public ip address for an instance.
  final pulumi.Input<bool>? allocatePublicIp;
  /// The automatic release time of the `PostPaid` instance.
  /// The time follows the ISO 8601 standard and is in UTC time. Format: yyyy-MM-ddTHH:mm:ssZ. It must be at least half an hour later than the current time and less than 3 years since the current time.
  /// Setting it to null can cancel automatic release feature, and the ECS instance will not be released automatically.
  final pulumi.Input<String>? autoReleaseTime;
  /// Auto renewal period of an instance, in the unit of month. It is valid when `instance_charge_type` is `PrePaid`. Default to 1. Valid value:
  /// - [1, 2, 3, 6, 12] when `period_unit` in "Month"
  /// - [1, 2, 3] when `period_unit` in "Week"
  final pulumi.Input<int>? autoRenewPeriod;
  /// The Zone to start the instance in. It is ignored and will be computed when set `vswitch_id`.
  final pulumi.Input<String>? availabilityZone;
  /// The number of vCPUs.
  final pulumi.Input<int>? cpu;
  /// The options of cpu. See `cpu_options` below.
  ///
  /// > **NOTE:** System disk category `cloud` has been outdated and it only can be used none I/O Optimized ECS instances. Recommend `cloud_efficiency` and `cloud_ssd` disk.
  ///
  /// > **NOTE:** From version 1.5.0, instance's charge type can be changed to `PrePaid` by specifying `period` and `period_unit`, but it is irreversible.
  ///
  /// > **NOTE:** From version 1.5.0, instance's private IP address can be specified when creating VPC network instance.
  ///
  /// > **NOTE:** From version 1.5.0, instance's vswitch and private IP can be changed in the same availability zone. When they are changed, the instance will reboot to make the change take effect.
  ///
  /// > **NOTE:** From version 1.7.0, setting "internet_max_bandwidth_out" larger than 0 can allocate a public IP for an instance.
  /// Setting "internet_max_bandwidth_out" to 0 can release allocated public IP for VPC instance(For Classic instnace, its public IP cannot be release once it allocated, even thougth its bandwidth out is 0).
  /// However, at present, 'PrePaid' instance cannot narrow its max bandwidth out when its 'internet_charge_type' is "PayByBandwidth".
  ///
  /// > **NOTE:** From version 1.7.0, instance's type can be changed. When it is changed, the instance will reboot to make the change take effect.
  final pulumi.Input<InstanceCpuOptions>? cpuOptions;
  /// (Available since v1.232.0) The time when the instance was created.
  final pulumi.Input<String>? createTime;
  /// Performance mode of the t5 burstable instance. Valid values: 'Standard', 'Unlimited'.
  final pulumi.Input<String>? creditSpecification;
  /// The list of data disks created with instance. See `data_disks` below.
  final pulumi.Input<List<InstanceDataDisk>>? dataDisks;
  /// The ID of the dedicated host on which to create the instance. If you set the DedicatedHostId parameter, the `spot_strategy` and `spot_price_limit` parameters cannot be set. This is because preemptible instances cannot be created on dedicated hosts.
  final pulumi.Input<String>? dedicatedHostId;
  /// Whether enable the deletion protection or not. It does not work when the instance is spot. Default value: `false`.
  final pulumi.Input<bool>? deletionProtection;
  /// The group number of the instance in a deployment set when the deployment set is use.
  final pulumi.Input<String>? deploymentSetGroupNo;
  /// The ID of the deployment set to which to deploy the instance. **NOTE:** From version 1.176.0, instance's deploymentSetId can be removed when 'deployment_set_id' = "".
  final pulumi.Input<String>? deploymentSetId;
  /// Description of the instance, This description can have a string of 2 to 256 characters, It cannot begin with http:// or https://. Default value is null.
  final pulumi.Input<String>? description;
  /// Specifies whether to send a dry-run request. Default to false.
  /// - true: Only a dry-run request is sent and no instance is created. The system checks whether the required parameters are set, and validates the request format, service permissions, and available ECS instances. If the validation fails, the corresponding error code is returned. If the validation succeeds, the `DryRunOperation` error code is returned.
  /// - false: A request is sent. If the validation succeeds, the instance is created.
  final pulumi.Input<bool>? dryRun;
  /// Specifies whether to enable the Jumbo Frames feature for the instance. Valid values: `true`, `false`.
  final pulumi.Input<bool>? enableJumboFrame;
  /// (Available since v1.232.0) The expiration time of the instance.
  final pulumi.Input<String>? expiredTime;
  /// If it is true, the `PrePaid` instance will be change to `PostPaid` and then deleted forcibly.
  /// However, because of changing instance charge type has CPU core count quota limitation, so strongly recommand that "Don't modify instance charge type frequentlly in one month".
  final pulumi.Input<bool>? forceDelete;
  /// Host name of the ECS, which is a string of at least two characters. “hostname” cannot start or end with “.” or “-“. In addition, two or more consecutive “.” or “-“ symbols are not allowed. On Windows, the host name can contain a maximum of 15 characters, which can be a combination of uppercase/lowercase letters, numerals, and “-“. The host name cannot contain dots (“.”) or contain only numeric characters. When it is changed, the instance will reboot to make the change take effect.
  /// On other OSs such as Linux, the host name can contain a maximum of 64 characters, which can be segments separated by dots (“.”), where each segment can contain uppercase/lowercase letters, numerals, or “_“. When it is changed, the instance will reboot to make the change take effect.
  final pulumi.Input<String>? hostName;
  /// The ID of the Elastic High Performance Computing (E-HPC) cluster to which to assign the instance.
  final pulumi.Input<String>? hpcClusterId;
  /// Specifies whether to enable the access channel for instance metadata. Valid values: `enabled`, `disabled`. Default value: `enabled`.
  final pulumi.Input<String>? httpEndpoint;
  /// **NOTE:**: This parameter is not available for use yet. The HTTP PUT response hop limit for accessing instance metadata. Valid values: 1 to 64. Default value: 1.
  final pulumi.Input<int>? httpPutResponseHopLimit;
  /// Specifies whether to forcefully use the security-enhanced mode (IMDSv2) to access instance metadata. Default value: optional. Valid values:
  /// - optional: does not forcefully use the security-enhanced mode (IMDSv2).
  /// - required: forcefully uses the security-enhanced mode (IMDSv2). After you set this parameter to required, you cannot access instance metadata in normal mode.
  final pulumi.Input<String>? httpTokens;
  /// The Image to use for the instance. ECS instance's image can be replaced via changing `image_id`. When it is changed, the instance will reboot to make the change take effect. If you do not use `launch_template_id` or `launch_template_name` to specify a launch template, you must specify `image_id`.
  final pulumi.Input<String>? imageId;
  /// The options of images. See `image_options` below.
  final pulumi.Input<InstanceImageOptions>? imageOptions;
  /// Whether to change instance disks charge type when changing instance charge type.
  final pulumi.Input<bool>? includeDataDisks;
  /// Valid values are `PrePaid`, `PostPaid`. **NOTE:** From version 1.243.0, the default value `PostPaid` will be removed.
  /// **NOTE:** Since 1.9.6, it can be changed each other between `PostPaid` and `PrePaid`.
  /// However, since [some limitation about CPU core count in one month](https://www.alibabacloud.com/help/en/elastic-compute-service/latest/modifyinstancechargetype),
  /// there strongly recommends that `Don't change instance_charge_type frequentlly in one month`.
  final pulumi.Input<String>? instanceChargeType;
  /// The name of the ECS. This instance_name can have a string of 2 to 128 characters, must contain only alphanumeric characters or hyphens, such as "-",".","_", and must not begin with a hyphen, and must not begin with http:// or https://. **NOTE:** From version 1.243.0, the default value `ECS-Instance` will be removed.
  final pulumi.Input<String>? instanceName;
  /// The type of instance to start. When it is changed, the instance will reboot to make the change take effect. If you do not use `launch_template_id` or `launch_template_name` to specify a launch template, you must specify `instance_type`.
  final pulumi.Input<String>? instanceType;
  /// Internet charge type of the instance, Valid values are `PayByBandwidth`, `PayByTraffic`. At present, 'PrePaid' instance cannot change the value to "PayByBandwidth" from "PayByTraffic". **NOTE:** From version 1.243.0, the default value `PayByTraffic` will be removed.
  final pulumi.Input<String>? internetChargeType;
  /// Maximum incoming bandwidth from the public network, measured in Mbps (Mega bit per second). Value range: [1, 200]. If this value is not specified, then automatically sets it to 200 Mbps.
  final pulumi.Input<int>? internetMaxBandwidthIn;
  /// Maximum outgoing bandwidth to the public network, measured in Mbps (Mega bit per second). Value range:  [0, 100]. **NOTE:** From version 1.243.0, the default value `0` will be removed.
  final pulumi.Input<int>? internetMaxBandwidthOut;
  /// The number of IPv6 addresses to randomly generate for the primary ENI. Valid values: 1 to 10. **NOTE:** You cannot specify both the `ipv6_addresses` and `ipv6_address_count` parameters.
  final pulumi.Input<int>? ipv6AddressCount;
  /// A list of IPv6 address to be assigned to the primary ENI. Support up to 10. **NOTE:** From version 1.241.0, `ipv6_addresses` can be modified.
  final pulumi.Input<List<String>>? ipv6Addresses;
  /// Whether to use outdated instance type.
  final pulumi.Input<bool>? isOutdated;
  /// The name of key pair that can login ECS instance successfully without password. If it is specified, the password would be invalid. **NOTE:** From version 1.268.0, `key_name` can be modified. If you want to use `key_name`, We recommend you to use the resource alicloud_ecs_key_pair_attachment.
  /// > **NOTE:** When modifying `key_name`, if the instance status is `Running`, the ECS instance will be rebooted; If the instance status is `Stopped`, the ECS instance status will be changed to `Running`.
  final pulumi.Input<String>? keyName;
  /// An KMS encrypts password used to an instance. If the `password` is filled in, this field will be ignored. When it is changed, the instance will reboot to make the change take effect.
  final pulumi.Input<String>? kmsEncryptedPassword;
  /// An KMS encryption context used to decrypt `kms_encrypted_password` before creating or updating an instance with `kms_encrypted_password`. See [Encryption Context](https://www.alibabacloud.com/help/doc-detail/42975.htm). It is valid when `kms_encrypted_password` is set. When it is changed, the instance will reboot to make the change take effect.
  final pulumi.Input<Map<String, String>>? kmsEncryptionContext;
  /// The ID of the launch template. For more information, see [DescribeLaunchTemplates](https://www.alibabacloud.com/help/en/ecs/developer-reference/api-describelaunchtemplates).To use a launch template to create an instance, you must use the `launch_template_id` or `launch_template_name` parameter to specify the launch template.
  final pulumi.Input<String>? launchTemplateId;
  /// The name of the launch template.
  final pulumi.Input<String>? launchTemplateName;
  /// The version of the launch template. If you set `launch_template_id` or `launch_template_name` parameter but do not set the version number of the launch template, the default template version is used.
  final pulumi.Input<String>? launchTemplateVersion;
  /// The maintenance action. Valid values: `Stop`, `AutoRecover` and `AutoRedeploy`.
  /// * `Stop` : stops the instance.
  /// * `AutoRecover` : automatically recovers the instance.
  /// * `AutoRedeploy` : fails the instance over, which may cause damage to the data disks attached to the instance.
  final pulumi.Input<String>? maintenanceAction;
  /// Specifies whether to send an event notification before instance shutdown. Valid values: `true`, `false`. Default value: `false`.
  final pulumi.Input<bool>? maintenanceNotify;
  /// The time of maintenance. See `maintenance_time` below.
  final pulumi.Input<InstanceMaintenanceTime>? maintenanceTime;
  /// The memory size of the instance. Unit: MiB.
  final pulumi.Input<int>? memory;
  /// The index of the network card for Primary ENI.
  final pulumi.Input<int>? networkCardIndex;
  /// The ID of the Primary ENI.
  final pulumi.Input<String>? networkInterfaceId;
  /// The communication mode of the Primary ENI. Default value: `Standard`. Valid values:
  /// - `Standard`: Uses the TCP communication mode.
  /// - `HighPerformance`: Uses the remote direct memory access (RDMA) communication mode with Elastic RDMA Interface (ERI) enabled.
  final pulumi.Input<String>? networkInterfaceTrafficMode;
  /// The list of network interfaces created with instance. See `network_interfaces` below.
  final pulumi.Input<InstanceNetworkInterfaces>? networkInterfaces;
  /// The operation type. It is valid when `instance_charge_type` is `PrePaid`. Default value: `upgrade`. Valid values: `upgrade`, `downgrade`. **NOTE:**  When the new instance type specified by the `instance_type` parameter has lower specifications than the current instance type, you must set `operator_type` to `downgrade`.
  final pulumi.Input<String>? operatorType;
  /// The name of the operating system of the instance.
  final pulumi.Input<String>? osName;
  /// The type of the operating system of the instance.
  final pulumi.Input<String>? osType;
  /// Password to an instance is a string of 8 to 30 characters. It must contain uppercase/lowercase letters and numerals, but cannot contain special symbols. When it is changed, the instance will reboot to make the change take effect.
  final pulumi.Input<String>? password;
  /// Specifies whether to use the password preset in the image. Default value: `false`. Valid values:
  final pulumi.Input<bool>? passwordInherit;
  /// The duration that you will buy the resource, in month. It is valid and required when `instance_charge_type` is `PrePaid`. Valid values:
  /// - [1-9, 12, 24, 36, 48, 60] when `period_unit` in "Month"
  /// - [1-3] when `period_unit` in "Week"
  ///
  /// > **NOTE:** The attribute `period` is only used to create Subscription instance or modify the PayAsYouGo instance to Subscription. Once effect, it will not be modified that means running `pulumi up` will not effect the resource.
  final pulumi.Input<int>? period;
  /// The duration unit that you will buy the resource. It is valid when `instance_charge_type` is 'PrePaid'. Valid value: ["Week", "Month"]. Default to "Month".
  final pulumi.Input<String>? periodUnit;
  /// The primary private IP address of the ENI.
  final pulumi.Input<String>? primaryIpAddress;
  /// Instance private IP address can be specified when you creating new instance. It is valid when `vswitch_id` is specified. When it is changed, the instance will reboot to make the change take effect.
  final pulumi.Input<String>? privateIp;
  /// The ID of the private pool.
  final pulumi.Input<String>? privatePoolOptionsId;
  /// The type of the private pool. Default value: `None`. Valid values:
  /// - `Open`: Open private pool.
  /// - `Target`: Specified private pool. **NOTE:** If `private_pool_options_match_criteria` is set to `Target`, `private_pool_options_id` is required.
  /// - `None`: No private pool. The capacity in private pools is not used.
  final pulumi.Input<String>? privatePoolOptionsMatchCriteria;
  /// The instance public ip.
  final pulumi.Input<String>? publicIp;
  /// The number of queues supported by the ERI.
  final pulumi.Input<int>? queuePairNumber;
  /// Whether to renew an ECS instance automatically or not. It is valid when `instance_charge_type` is `PrePaid`. Default to "Normal". Valid values:
  /// - `AutoRenewal`: Enable auto renewal.
  /// - `Normal`: Disable auto renewal.
  /// - `NotRenewal`: No renewal any longer. After you specify this value, Alibaba Cloud stop sending notification of instance expiry, and only gives a brief reminder on the third day before the instance expiry.
  final pulumi.Input<String>? renewalStatus;
  /// The Id of resource group which the instance belongs.
  final pulumi.Input<String>? resourceGroupId;
  /// The name of the Resource Access Management (RAM) role. **NOTE:** From version 1.250.0, If you want to use `role_name`, We recommend you to use the resource alicloud_ecs_ram_role_attachment.
  final pulumi.Input<String>? roleName;
  /// The number of private IP addresses to be automatically assigned from within the CIDR block of the vswitch. **NOTE:** To assign secondary private IP addresses, you must specify `secondary_private_ips` or `secondary_private_ip_address_count` but not both.
  final pulumi.Input<int>? secondaryPrivateIpAddressCount;
  /// A list of Secondary private IP addresses which is selected from within the CIDR block of the vSwitch.
  final pulumi.Input<List<String>>? secondaryPrivateIps;
  /// The security enhancement strategy.
  /// - Active: Enable security enhancement strategy, it only works on system images.
  /// - Deactive: Disable security enhancement strategy, it works on all images.
  final pulumi.Input<String>? securityEnhancementStrategy;
  /// A list of security group ids to associate with. If you do not use `launch_template_id` or `launch_template_name` to specify a launch template, you must specify `security_groups`.
  final pulumi.Input<List<String>>? securityGroups;
  /// The retention time of the preemptive instance in hours. Valid values: `0`, `1`, `2`, `3`, `4`, `5`, `6`. Retention duration 2~6 is under invitation test, please submit a work order if you need to open. If the value is `0`, the mode is no protection period. Default value is `1`.
  final pulumi.Input<int>? spotDuration;
  /// The hourly price threshold of a instance, and it takes effect only when parameter 'spot_strategy' is 'SpotWithPriceLimit'. Three decimals is allowed at most.
  final pulumi.Input<double>? spotPriceLimit;
  /// The spot strategy of a Pay-As-You-Go instance, and it takes effect only when parameter `instance_charge_type` is 'PostPaid'. Value range:
  /// - NoSpot: A regular Pay-As-You-Go instance.
  /// - SpotWithPriceLimit: A price threshold for a spot instance
  /// - SpotAsPriceGo: A price that is based on the highest Pay-As-You-Go instance
  ///
  /// Default to NoSpot. Note: Currently, the spot instance only supports domestic site account.
  final pulumi.Input<String>? spotStrategy;
  /// (Available since v1.232.0) The time when the instance was last started.
  final pulumi.Input<String>? startTime;
  /// The instance status. Valid values: ["Running", "Stopped"]. You can control the instance start and stop through this parameter. Default to `Running`.
  final pulumi.Input<String>? status;
  /// The stop mode of the pay-as-you-go instance. Valid values: `StopCharging`,`KeepCharging`, `Not-applicable`. Default value: If the prerequisites required for enabling the economical mode are met, and you have enabled this mode in the ECS console, the default value is `StopCharging`. For more information, see "Enable the economical mode" in [Economical mode](https://www.alibabacloud.com/help/en/elastic-compute-service/latest/economical-mode). Otherwise, the default value is `KeepCharging`. **Note:** `Not-applicable`: Economical mode is not applicable to the instance.`
  /// * `KeepCharging`: standard mode. Billing of the instance continues after the instance is stopped, and resources are retained for the instance.
  /// * `StopCharging`: economical mode. Billing of some resources of the instance stops after the instance is stopped. When the instance is stopped, its resources such as vCPUs, memory, and public IP address are released. You may be unable to restart the instance if some types of resources are out of stock in the current region.
  final pulumi.Input<String>? stoppedMode;
  /// The ID of the automatic snapshot policy applied to the system disk. **NOTE:** If you want to use `system_disk_auto_snapshot_policy_id`, We recommend you to use the resource alicloud_ecs_auto_snapshot_policy_attachment.
  final pulumi.Input<String>? systemDiskAutoSnapshotPolicyId;
  /// Specifies whether to enable the performance burst feature for the system disk. Valid values:
  final pulumi.Input<bool>? systemDiskBurstingEnabled;
  /// Valid values are `ephemeral_ssd`, `cloud_efficiency`, `cloud_ssd`, `cloud_essd`, `cloud`, `cloud_auto`, `cloud_essd_entry`. only is used to some none I/O optimized instance. Valid values `cloud_auto` Available since v1.184.0.
  final pulumi.Input<String>? systemDiskCategory;
  /// The description of the system disk. The description must be 2 to 256 characters in length and cannot start with http:// or https://.
  final pulumi.Input<String>? systemDiskDescription;
  /// The algorithm to be used to encrypt the system disk. Valid values are `aes-256`, `sm4-128`. Default value is `aes-256`.
  final pulumi.Input<String>? systemDiskEncryptAlgorithm;
  /// Specifies whether to encrypt the system disk. Valid values: `true`,`false`. Default value: `false`.
  final pulumi.Input<bool>? systemDiskEncrypted;
  /// (Available since v1.210.0) The ID of system disk.
  final pulumi.Input<String>? systemDiskId;
  /// The ID of the Key Management Service (KMS) key to be used for the system disk.
  final pulumi.Input<String>? systemDiskKmsKeyId;
  /// The name of the system disk. The name must be 2 to 128 characters in length and can contain letters, digits, periods (.), colons (:), underscores (_), and hyphens (-). It must start with a letter and cannot start with http:// or https://.
  final pulumi.Input<String>? systemDiskName;
  /// The performance level of the ESSD used as the system disk, Valid values: `PL0`, `PL1`, `PL2`, `PL3`, Default to `PL1`;For more information about ESSD, See [Encryption Context](https://www.alibabacloud.com/help/doc-detail/122389.htm).
  final pulumi.Input<String>? systemDiskPerformanceLevel;
  /// The provisioned read/write IOPS of the ESSD AutoPL disk to use as the system disk.
  final pulumi.Input<int>? systemDiskProvisionedIops;
  /// Size of the system disk, measured in GiB. Value range: [20, 500]. The specified value must be equal to or greater than max{20, Imagesize}. Default value: max{40, ImageSize}.
  final pulumi.Input<int>? systemDiskSize;
  /// The ID of the dedicated block storage cluster. If you want to use disks in a dedicated block storage cluster as system disks when you create instances, you must specify this parameter. For more information about dedicated block storage clusters.
  final pulumi.Input<String>? systemDiskStorageClusterId;
  /// A mapping of tags to assign to the resource.
  /// - Key: It can be up to `128` characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It cannot be a null string.
  /// - Value: It can be up to `128` characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It can be a null string.
  final pulumi.Input<Map<String, String>>? tags;
  /// User-defined data to customize the startup behaviors of an ECS instance and to pass data into an ECS instance.
  /// It supports to setting a base64-encoded value, and it is the recommended usage.
  /// From version 1.60.0, it can be updated in-place. If updated, the instance will reboot to make the change take effect.
  /// Note: Not all changes will take effect, and it depends on [cloud-init module type](https://cloudinit.readthedocs.io/en/latest/topics/modules.html).
  final pulumi.Input<String>? userData;
  /// A mapping of tags to assign to the devices created by the instance at launch time.
  /// - Key: It can be up to `128` characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It cannot be a null string.
  /// - Value: It can be up to `128` characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It can be a null string.
  final pulumi.Input<Map<String, String>>? volumeTags;
  /// The ID of the VPC.
  final pulumi.Input<String>? vpcId;
  /// The virtual switch ID to launch in VPC. This parameter must be set unless you can create classic network instances. When it is changed, the instance will reboot to make the change take effect.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [InstanceState].
  /// [allocatePublicIp] It has been deprecated from version "1.7.0". Setting "internet_max_bandwidth_out" larger than 0 can allocate a public ip address for an instance.
  /// [autoReleaseTime] The automatic release time of the `PostPaid` instance.
  /// [autoRenewPeriod] Auto renewal period of an instance, in the unit of month. It is valid when `instance_charge_type` is `PrePaid`. Default to 1. Valid value:
  /// [availabilityZone] The Zone to start the instance in. It is ignored and will be computed when set `vswitch_id`.
  /// [cpu] The number of vCPUs.
  /// [cpuOptions] The options of cpu. See `cpu_options` below.
  /// [createTime] (Available since v1.232.0) The time when the instance was created.
  /// [creditSpecification] Performance mode of the t5 burstable instance. Valid values: 'Standard', 'Unlimited'.
  /// [dataDisks] The list of data disks created with instance. See `data_disks` below.
  /// [dedicatedHostId] The ID of the dedicated host on which to create the instance. If you set the DedicatedHostId parameter, the `spot_strategy` and `spot_price_limit` parameters cannot be set. This is because preemptible instances cannot be created on dedicated hosts.
  /// [deletionProtection] Whether enable the deletion protection or not. It does not work when the instance is spot. Default value: `false`.
  /// [deploymentSetGroupNo] The group number of the instance in a deployment set when the deployment set is use.
  /// [deploymentSetId] The ID of the deployment set to which to deploy the instance. **NOTE:** From version 1.176.0, instance's deploymentSetId can be removed when 'deployment_set_id' = "".
  /// [description] Description of the instance, This description can have a string of 2 to 256 characters, It cannot begin with http:// or https://. Default value is null.
  /// [dryRun] Specifies whether to send a dry-run request. Default to false.
  /// [enableJumboFrame] Specifies whether to enable the Jumbo Frames feature for the instance. Valid values: `true`, `false`.
  /// [expiredTime] (Available since v1.232.0) The expiration time of the instance.
  /// [forceDelete] If it is true, the `PrePaid` instance will be change to `PostPaid` and then deleted forcibly.
  /// [hostName] Host name of the ECS, which is a string of at least two characters. “hostname” cannot start or end with “.” or “-“. In addition, two or more consecutive “.” or “-“ symbols are not allowed. On Windows, the host name can contain a maximum of 15 characters, which can be a combination of uppercase/lowercase letters, numerals, and “-“. The host name cannot contain dots (“.”) or contain only numeric characters. When it is changed, the instance will reboot to make the change take effect.
  /// [hpcClusterId] The ID of the Elastic High Performance Computing (E-HPC) cluster to which to assign the instance.
  /// [httpEndpoint] Specifies whether to enable the access channel for instance metadata. Valid values: `enabled`, `disabled`. Default value: `enabled`.
  /// [httpPutResponseHopLimit] **NOTE:**: This parameter is not available for use yet. The HTTP PUT response hop limit for accessing instance metadata. Valid values: 1 to 64. Default value: 1.
  /// [httpTokens] Specifies whether to forcefully use the security-enhanced mode (IMDSv2) to access instance metadata. Default value: optional. Valid values:
  /// [imageId] The Image to use for the instance. ECS instance's image can be replaced via changing `image_id`. When it is changed, the instance will reboot to make the change take effect. If you do not use `launch_template_id` or `launch_template_name` to specify a launch template, you must specify `image_id`.
  /// [imageOptions] The options of images. See `image_options` below.
  /// [includeDataDisks] Whether to change instance disks charge type when changing instance charge type.
  /// [instanceChargeType] Valid values are `PrePaid`, `PostPaid`. **NOTE:** From version 1.243.0, the default value `PostPaid` will be removed.
  /// [instanceName] The name of the ECS. This instance_name can have a string of 2 to 128 characters, must contain only alphanumeric characters or hyphens, such as "-",".","_", and must not begin with a hyphen, and must not begin with http:// or https://. **NOTE:** From version 1.243.0, the default value `ECS-Instance` will be removed.
  /// [instanceType] The type of instance to start. When it is changed, the instance will reboot to make the change take effect. If you do not use `launch_template_id` or `launch_template_name` to specify a launch template, you must specify `instance_type`.
  /// [internetChargeType] Internet charge type of the instance, Valid values are `PayByBandwidth`, `PayByTraffic`. At present, 'PrePaid' instance cannot change the value to "PayByBandwidth" from "PayByTraffic". **NOTE:** From version 1.243.0, the default value `PayByTraffic` will be removed.
  /// [internetMaxBandwidthIn] Maximum incoming bandwidth from the public network, measured in Mbps (Mega bit per second). Value range: [1, 200]. If this value is not specified, then automatically sets it to 200 Mbps.
  /// [internetMaxBandwidthOut] Maximum outgoing bandwidth to the public network, measured in Mbps (Mega bit per second). Value range:  [0, 100]. **NOTE:** From version 1.243.0, the default value `0` will be removed.
  /// [ipv6AddressCount] The number of IPv6 addresses to randomly generate for the primary ENI. Valid values: 1 to 10. **NOTE:** You cannot specify both the `ipv6_addresses` and `ipv6_address_count` parameters.
  /// [ipv6Addresses] A list of IPv6 address to be assigned to the primary ENI. Support up to 10. **NOTE:** From version 1.241.0, `ipv6_addresses` can be modified.
  /// [isOutdated] Whether to use outdated instance type.
  /// [keyName] The name of key pair that can login ECS instance successfully without password. If it is specified, the password would be invalid. **NOTE:** From version 1.268.0, `key_name` can be modified. If you want to use `key_name`, We recommend you to use the resource alicloud_ecs_key_pair_attachment.
  /// [kmsEncryptedPassword] An KMS encrypts password used to an instance. If the `password` is filled in, this field will be ignored. When it is changed, the instance will reboot to make the change take effect.
  /// [kmsEncryptionContext] An KMS encryption context used to decrypt `kms_encrypted_password` before creating or updating an instance with `kms_encrypted_password`. See [Encryption Context](https://www.alibabacloud.com/help/doc-detail/42975.htm). It is valid when `kms_encrypted_password` is set. When it is changed, the instance will reboot to make the change take effect.
  /// [launchTemplateId] The ID of the launch template. For more information, see [DescribeLaunchTemplates](https://www.alibabacloud.com/help/en/ecs/developer-reference/api-describelaunchtemplates).To use a launch template to create an instance, you must use the `launch_template_id` or `launch_template_name` parameter to specify the launch template.
  /// [launchTemplateName] The name of the launch template.
  /// [launchTemplateVersion] The version of the launch template. If you set `launch_template_id` or `launch_template_name` parameter but do not set the version number of the launch template, the default template version is used.
  /// [maintenanceAction] The maintenance action. Valid values: `Stop`, `AutoRecover` and `AutoRedeploy`.
  /// [maintenanceNotify] Specifies whether to send an event notification before instance shutdown. Valid values: `true`, `false`. Default value: `false`.
  /// [maintenanceTime] The time of maintenance. See `maintenance_time` below.
  /// [memory] The memory size of the instance. Unit: MiB.
  /// [networkCardIndex] The index of the network card for Primary ENI.
  /// [networkInterfaceId] The ID of the Primary ENI.
  /// [networkInterfaceTrafficMode] The communication mode of the Primary ENI. Default value: `Standard`. Valid values:
  /// [networkInterfaces] The list of network interfaces created with instance. See `network_interfaces` below.
  /// [operatorType] The operation type. It is valid when `instance_charge_type` is `PrePaid`. Default value: `upgrade`. Valid values: `upgrade`, `downgrade`. **NOTE:**  When the new instance type specified by the `instance_type` parameter has lower specifications than the current instance type, you must set `operator_type` to `downgrade`.
  /// [osName] The name of the operating system of the instance.
  /// [osType] The type of the operating system of the instance.
  /// [password] Password to an instance is a string of 8 to 30 characters. It must contain uppercase/lowercase letters and numerals, but cannot contain special symbols. When it is changed, the instance will reboot to make the change take effect.
  /// [passwordInherit] Specifies whether to use the password preset in the image. Default value: `false`. Valid values:
  /// [period] The duration that you will buy the resource, in month. It is valid and required when `instance_charge_type` is `PrePaid`. Valid values:
  /// [periodUnit] The duration unit that you will buy the resource. It is valid when `instance_charge_type` is 'PrePaid'. Valid value: ["Week", "Month"]. Default to "Month".
  /// [primaryIpAddress] The primary private IP address of the ENI.
  /// [privateIp] Instance private IP address can be specified when you creating new instance. It is valid when `vswitch_id` is specified. When it is changed, the instance will reboot to make the change take effect.
  /// [privatePoolOptionsId] The ID of the private pool.
  /// [privatePoolOptionsMatchCriteria] The type of the private pool. Default value: `None`. Valid values:
  /// [publicIp] The instance public ip.
  /// [queuePairNumber] The number of queues supported by the ERI.
  /// [renewalStatus] Whether to renew an ECS instance automatically or not. It is valid when `instance_charge_type` is `PrePaid`. Default to "Normal". Valid values:
  /// [resourceGroupId] The Id of resource group which the instance belongs.
  /// [roleName] The name of the Resource Access Management (RAM) role. **NOTE:** From version 1.250.0, If you want to use `role_name`, We recommend you to use the resource alicloud_ecs_ram_role_attachment.
  /// [secondaryPrivateIpAddressCount] The number of private IP addresses to be automatically assigned from within the CIDR block of the vswitch. **NOTE:** To assign secondary private IP addresses, you must specify `secondary_private_ips` or `secondary_private_ip_address_count` but not both.
  /// [secondaryPrivateIps] A list of Secondary private IP addresses which is selected from within the CIDR block of the vSwitch.
  /// [securityEnhancementStrategy] The security enhancement strategy.
  /// [securityGroups] A list of security group ids to associate with. If you do not use `launch_template_id` or `launch_template_name` to specify a launch template, you must specify `security_groups`.
  /// [spotDuration] The retention time of the preemptive instance in hours. Valid values: `0`, `1`, `2`, `3`, `4`, `5`, `6`. Retention duration 2~6 is under invitation test, please submit a work order if you need to open. If the value is `0`, the mode is no protection period. Default value is `1`.
  /// [spotPriceLimit] The hourly price threshold of a instance, and it takes effect only when parameter 'spot_strategy' is 'SpotWithPriceLimit'. Three decimals is allowed at most.
  /// [spotStrategy] The spot strategy of a Pay-As-You-Go instance, and it takes effect only when parameter `instance_charge_type` is 'PostPaid'. Value range:
  /// [startTime] (Available since v1.232.0) The time when the instance was last started.
  /// [status] The instance status. Valid values: ["Running", "Stopped"]. You can control the instance start and stop through this parameter. Default to `Running`.
  /// [stoppedMode] The stop mode of the pay-as-you-go instance. Valid values: `StopCharging`,`KeepCharging`, `Not-applicable`. Default value: If the prerequisites required for enabling the economical mode are met, and you have enabled this mode in the ECS console, the default value is `StopCharging`. For more information, see "Enable the economical mode" in [Economical mode](https://www.alibabacloud.com/help/en/elastic-compute-service/latest/economical-mode). Otherwise, the default value is `KeepCharging`. **Note:** `Not-applicable`: Economical mode is not applicable to the instance.`
  /// [systemDiskAutoSnapshotPolicyId] The ID of the automatic snapshot policy applied to the system disk. **NOTE:** If you want to use `system_disk_auto_snapshot_policy_id`, We recommend you to use the resource alicloud_ecs_auto_snapshot_policy_attachment.
  /// [systemDiskBurstingEnabled] Specifies whether to enable the performance burst feature for the system disk. Valid values:
  /// [systemDiskCategory] Valid values are `ephemeral_ssd`, `cloud_efficiency`, `cloud_ssd`, `cloud_essd`, `cloud`, `cloud_auto`, `cloud_essd_entry`. only is used to some none I/O optimized instance. Valid values `cloud_auto` Available since v1.184.0.
  /// [systemDiskDescription] The description of the system disk. The description must be 2 to 256 characters in length and cannot start with http:// or https://.
  /// [systemDiskEncryptAlgorithm] The algorithm to be used to encrypt the system disk. Valid values are `aes-256`, `sm4-128`. Default value is `aes-256`.
  /// [systemDiskEncrypted] Specifies whether to encrypt the system disk. Valid values: `true`,`false`. Default value: `false`.
  /// [systemDiskId] (Available since v1.210.0) The ID of system disk.
  /// [systemDiskKmsKeyId] The ID of the Key Management Service (KMS) key to be used for the system disk.
  /// [systemDiskName] The name of the system disk. The name must be 2 to 128 characters in length and can contain letters, digits, periods (.), colons (:), underscores (_), and hyphens (-). It must start with a letter and cannot start with http:// or https://.
  /// [systemDiskPerformanceLevel] The performance level of the ESSD used as the system disk, Valid values: `PL0`, `PL1`, `PL2`, `PL3`, Default to `PL1`;For more information about ESSD, See [Encryption Context](https://www.alibabacloud.com/help/doc-detail/122389.htm).
  /// [systemDiskProvisionedIops] The provisioned read/write IOPS of the ESSD AutoPL disk to use as the system disk.
  /// [systemDiskSize] Size of the system disk, measured in GiB. Value range: [20, 500]. The specified value must be equal to or greater than max{20, Imagesize}. Default value: max{40, ImageSize}.
  /// [systemDiskStorageClusterId] The ID of the dedicated block storage cluster. If you want to use disks in a dedicated block storage cluster as system disks when you create instances, you must specify this parameter. For more information about dedicated block storage clusters.
  /// [tags] A mapping of tags to assign to the resource.
  /// [userData] User-defined data to customize the startup behaviors of an ECS instance and to pass data into an ECS instance.
  /// [volumeTags] A mapping of tags to assign to the devices created by the instance at launch time.
  /// [vpcId] The ID of the VPC.
  /// [vswitchId] The virtual switch ID to launch in VPC. This parameter must be set unless you can create classic network instances. When it is changed, the instance will reboot to make the change take effect.
  InstanceState({
    this.allocatePublicIp,
    this.autoReleaseTime,
    this.autoRenewPeriod,
    this.availabilityZone,
    this.cpu,
    this.cpuOptions,
    this.createTime,
    this.creditSpecification,
    this.dataDisks,
    this.dedicatedHostId,
    this.deletionProtection,
    this.deploymentSetGroupNo,
    this.deploymentSetId,
    this.description,
    this.dryRun,
    this.enableJumboFrame,
    this.expiredTime,
    this.forceDelete,
    this.hostName,
    this.hpcClusterId,
    this.httpEndpoint,
    this.httpPutResponseHopLimit,
    this.httpTokens,
    this.imageId,
    this.imageOptions,
    this.includeDataDisks,
    this.instanceChargeType,
    this.instanceName,
    this.instanceType,
    this.internetChargeType,
    this.internetMaxBandwidthIn,
    this.internetMaxBandwidthOut,
    this.ipv6AddressCount,
    this.ipv6Addresses,
    this.isOutdated,
    this.keyName,
    this.kmsEncryptedPassword,
    this.kmsEncryptionContext,
    this.launchTemplateId,
    this.launchTemplateName,
    this.launchTemplateVersion,
    this.maintenanceAction,
    this.maintenanceNotify,
    this.maintenanceTime,
    this.memory,
    this.networkCardIndex,
    this.networkInterfaceId,
    this.networkInterfaceTrafficMode,
    this.networkInterfaces,
    this.operatorType,
    this.osName,
    this.osType,
    this.password,
    this.passwordInherit,
    this.period,
    this.periodUnit,
    this.primaryIpAddress,
    this.privateIp,
    this.privatePoolOptionsId,
    this.privatePoolOptionsMatchCriteria,
    this.publicIp,
    this.queuePairNumber,
    this.renewalStatus,
    this.resourceGroupId,
    this.roleName,
    this.secondaryPrivateIpAddressCount,
    this.secondaryPrivateIps,
    this.securityEnhancementStrategy,
    this.securityGroups,
    this.spotDuration,
    this.spotPriceLimit,
    this.spotStrategy,
    this.startTime,
    this.status,
    this.stoppedMode,
    this.systemDiskAutoSnapshotPolicyId,
    this.systemDiskBurstingEnabled,
    this.systemDiskCategory,
    this.systemDiskDescription,
    this.systemDiskEncryptAlgorithm,
    this.systemDiskEncrypted,
    this.systemDiskId,
    this.systemDiskKmsKeyId,
    this.systemDiskName,
    this.systemDiskPerformanceLevel,
    this.systemDiskProvisionedIops,
    this.systemDiskSize,
    this.systemDiskStorageClusterId,
    this.tags,
    this.userData,
    this.volumeTags,
    this.vpcId,
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatePublicIp': ?allocatePublicIp,
      'autoReleaseTime': ?autoReleaseTime,
      'autoRenewPeriod': ?autoRenewPeriod,
      'availabilityZone': ?availabilityZone,
      'cpu': ?cpu,
      'cpuOptions': ?pulumi.Input.mapOptionalInputValue<InstanceCpuOptions, Map<String, dynamic>>(cpuOptions, (value) => value.toMap()),
      'createTime': ?createTime,
      'creditSpecification': ?creditSpecification,
      'dataDisks': ?pulumi.Input.mapOptionalInputValue<List<InstanceDataDisk>, List<Map<String, dynamic>>>(dataDisks, (value) => pulumi.Input.encodeList<InstanceDataDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dedicatedHostId': ?dedicatedHostId,
      'deletionProtection': ?deletionProtection,
      'deploymentSetGroupNo': ?deploymentSetGroupNo,
      'deploymentSetId': ?deploymentSetId,
      'description': ?description,
      'dryRun': ?dryRun,
      'enableJumboFrame': ?enableJumboFrame,
      'expiredTime': ?expiredTime,
      'forceDelete': ?forceDelete,
      'hostName': ?hostName,
      'hpcClusterId': ?hpcClusterId,
      'httpEndpoint': ?httpEndpoint,
      'httpPutResponseHopLimit': ?httpPutResponseHopLimit,
      'httpTokens': ?httpTokens,
      'imageId': ?imageId,
      'imageOptions': ?pulumi.Input.mapOptionalInputValue<InstanceImageOptions, Map<String, dynamic>>(imageOptions, (value) => value.toMap()),
      'includeDataDisks': ?includeDataDisks,
      'instanceChargeType': ?instanceChargeType,
      'instanceName': ?instanceName,
      'instanceType': ?instanceType,
      'internetChargeType': ?internetChargeType,
      'internetMaxBandwidthIn': ?internetMaxBandwidthIn,
      'internetMaxBandwidthOut': ?internetMaxBandwidthOut,
      'ipv6AddressCount': ?ipv6AddressCount,
      'ipv6Addresses': ?ipv6Addresses,
      'isOutdated': ?isOutdated,
      'keyName': ?keyName,
      'kmsEncryptedPassword': ?kmsEncryptedPassword,
      'kmsEncryptionContext': ?kmsEncryptionContext,
      'launchTemplateId': ?launchTemplateId,
      'launchTemplateName': ?launchTemplateName,
      'launchTemplateVersion': ?launchTemplateVersion,
      'maintenanceAction': ?maintenanceAction,
      'maintenanceNotify': ?maintenanceNotify,
      'maintenanceTime': ?pulumi.Input.mapOptionalInputValue<InstanceMaintenanceTime, Map<String, dynamic>>(maintenanceTime, (value) => value.toMap()),
      'memory': ?memory,
      'networkCardIndex': ?networkCardIndex,
      'networkInterfaceId': ?networkInterfaceId,
      'networkInterfaceTrafficMode': ?networkInterfaceTrafficMode,
      'networkInterfaces': ?pulumi.Input.mapOptionalInputValue<InstanceNetworkInterfaces, Map<String, dynamic>>(networkInterfaces, (value) => value.toMap()),
      'operatorType': ?operatorType,
      'osName': ?osName,
      'osType': ?osType,
      'password': ?password,
      'passwordInherit': ?passwordInherit,
      'period': ?period,
      'periodUnit': ?periodUnit,
      'primaryIpAddress': ?primaryIpAddress,
      'privateIp': ?privateIp,
      'privatePoolOptionsId': ?privatePoolOptionsId,
      'privatePoolOptionsMatchCriteria': ?privatePoolOptionsMatchCriteria,
      'publicIp': ?publicIp,
      'queuePairNumber': ?queuePairNumber,
      'renewalStatus': ?renewalStatus,
      'resourceGroupId': ?resourceGroupId,
      'roleName': ?roleName,
      'secondaryPrivateIpAddressCount': ?secondaryPrivateIpAddressCount,
      'secondaryPrivateIps': ?secondaryPrivateIps,
      'securityEnhancementStrategy': ?securityEnhancementStrategy,
      'securityGroups': ?securityGroups,
      'spotDuration': ?spotDuration,
      'spotPriceLimit': ?spotPriceLimit,
      'spotStrategy': ?spotStrategy,
      'startTime': ?startTime,
      'status': ?status,
      'stoppedMode': ?stoppedMode,
      'systemDiskAutoSnapshotPolicyId': ?systemDiskAutoSnapshotPolicyId,
      'systemDiskBurstingEnabled': ?systemDiskBurstingEnabled,
      'systemDiskCategory': ?systemDiskCategory,
      'systemDiskDescription': ?systemDiskDescription,
      'systemDiskEncryptAlgorithm': ?systemDiskEncryptAlgorithm,
      'systemDiskEncrypted': ?systemDiskEncrypted,
      'systemDiskId': ?systemDiskId,
      'systemDiskKmsKeyId': ?systemDiskKmsKeyId,
      'systemDiskName': ?systemDiskName,
      'systemDiskPerformanceLevel': ?systemDiskPerformanceLevel,
      'systemDiskProvisionedIops': ?systemDiskProvisionedIops,
      'systemDiskSize': ?systemDiskSize,
      'systemDiskStorageClusterId': ?systemDiskStorageClusterId,
      'tags': ?tags,
      'userData': ?userData,
      'volumeTags': ?volumeTags,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
    };
  }

  factory InstanceState.fromMap(Map<String, dynamic> map) {
    return InstanceState(
      allocatePublicIp: map['allocatePublicIp'] == null ? null : (map['allocatePublicIp'] as bool).input(),
      autoReleaseTime: map['autoReleaseTime'] == null ? null : (map['autoReleaseTime'] as String).input(),
      autoRenewPeriod: map['autoRenewPeriod'] == null ? null : (map['autoRenewPeriod'] as int).input(),
      availabilityZone: map['availabilityZone'] == null ? null : (map['availabilityZone'] as String).input(),
      cpu: map['cpu'] == null ? null : (map['cpu'] as int).input(),
      cpuOptions: map['cpuOptions'] == null ? null : (InstanceCpuOptions.fromMap((map['cpuOptions'] as Map).cast<String, dynamic>())).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      creditSpecification: map['creditSpecification'] == null ? null : (map['creditSpecification'] as String).input(),
      dataDisks: map['dataDisks'] == null ? null : (pulumi.Input.decodeList<InstanceDataDisk>(map['dataDisks'], (value) => InstanceDataDisk.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dedicatedHostId: map['dedicatedHostId'] == null ? null : (map['dedicatedHostId'] as String).input(),
      deletionProtection: map['deletionProtection'] == null ? null : (map['deletionProtection'] as bool).input(),
      deploymentSetGroupNo: map['deploymentSetGroupNo'] == null ? null : (map['deploymentSetGroupNo'] as String).input(),
      deploymentSetId: map['deploymentSetId'] == null ? null : (map['deploymentSetId'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      dryRun: map['dryRun'] == null ? null : (map['dryRun'] as bool).input(),
      enableJumboFrame: map['enableJumboFrame'] == null ? null : (map['enableJumboFrame'] as bool).input(),
      expiredTime: map['expiredTime'] == null ? null : (map['expiredTime'] as String).input(),
      forceDelete: map['forceDelete'] == null ? null : (map['forceDelete'] as bool).input(),
      hostName: map['hostName'] == null ? null : (map['hostName'] as String).input(),
      hpcClusterId: map['hpcClusterId'] == null ? null : (map['hpcClusterId'] as String).input(),
      httpEndpoint: map['httpEndpoint'] == null ? null : (map['httpEndpoint'] as String).input(),
      httpPutResponseHopLimit: map['httpPutResponseHopLimit'] == null ? null : (map['httpPutResponseHopLimit'] as int).input(),
      httpTokens: map['httpTokens'] == null ? null : (map['httpTokens'] as String).input(),
      imageId: map['imageId'] == null ? null : (map['imageId'] as String).input(),
      imageOptions: map['imageOptions'] == null ? null : (InstanceImageOptions.fromMap((map['imageOptions'] as Map).cast<String, dynamic>())).input(),
      includeDataDisks: map['includeDataDisks'] == null ? null : (map['includeDataDisks'] as bool).input(),
      instanceChargeType: map['instanceChargeType'] == null ? null : (map['instanceChargeType'] as String).input(),
      instanceName: map['instanceName'] == null ? null : (map['instanceName'] as String).input(),
      instanceType: map['instanceType'] == null ? null : (map['instanceType'] as String).input(),
      internetChargeType: map['internetChargeType'] == null ? null : (map['internetChargeType'] as String).input(),
      internetMaxBandwidthIn: map['internetMaxBandwidthIn'] == null ? null : (map['internetMaxBandwidthIn'] as int).input(),
      internetMaxBandwidthOut: map['internetMaxBandwidthOut'] == null ? null : (map['internetMaxBandwidthOut'] as int).input(),
      ipv6AddressCount: map['ipv6AddressCount'] == null ? null : (map['ipv6AddressCount'] as int).input(),
      ipv6Addresses: map['ipv6Addresses'] == null ? null : ((map['ipv6Addresses'] as List).cast<String>()).input(),
      isOutdated: map['isOutdated'] == null ? null : (map['isOutdated'] as bool).input(),
      keyName: map['keyName'] == null ? null : (map['keyName'] as String).input(),
      kmsEncryptedPassword: map['kmsEncryptedPassword'] == null ? null : (map['kmsEncryptedPassword'] as String).input(),
      kmsEncryptionContext: map['kmsEncryptionContext'] == null ? null : ((map['kmsEncryptionContext'] as Map).cast<String, String>()).input(),
      launchTemplateId: map['launchTemplateId'] == null ? null : (map['launchTemplateId'] as String).input(),
      launchTemplateName: map['launchTemplateName'] == null ? null : (map['launchTemplateName'] as String).input(),
      launchTemplateVersion: map['launchTemplateVersion'] == null ? null : (map['launchTemplateVersion'] as String).input(),
      maintenanceAction: map['maintenanceAction'] == null ? null : (map['maintenanceAction'] as String).input(),
      maintenanceNotify: map['maintenanceNotify'] == null ? null : (map['maintenanceNotify'] as bool).input(),
      maintenanceTime: map['maintenanceTime'] == null ? null : (InstanceMaintenanceTime.fromMap((map['maintenanceTime'] as Map).cast<String, dynamic>())).input(),
      memory: map['memory'] == null ? null : (map['memory'] as int).input(),
      networkCardIndex: map['networkCardIndex'] == null ? null : (map['networkCardIndex'] as int).input(),
      networkInterfaceId: map['networkInterfaceId'] == null ? null : (map['networkInterfaceId'] as String).input(),
      networkInterfaceTrafficMode: map['networkInterfaceTrafficMode'] == null ? null : (map['networkInterfaceTrafficMode'] as String).input(),
      networkInterfaces: map['networkInterfaces'] == null ? null : (InstanceNetworkInterfaces.fromMap((map['networkInterfaces'] as Map).cast<String, dynamic>())).input(),
      operatorType: map['operatorType'] == null ? null : (map['operatorType'] as String).input(),
      osName: map['osName'] == null ? null : (map['osName'] as String).input(),
      osType: map['osType'] == null ? null : (map['osType'] as String).input(),
      password: map['password'] == null ? null : (map['password'] as String).input(),
      passwordInherit: map['passwordInherit'] == null ? null : (map['passwordInherit'] as bool).input(),
      period: map['period'] == null ? null : (map['period'] as int).input(),
      periodUnit: map['periodUnit'] == null ? null : (map['periodUnit'] as String).input(),
      primaryIpAddress: map['primaryIpAddress'] == null ? null : (map['primaryIpAddress'] as String).input(),
      privateIp: map['privateIp'] == null ? null : (map['privateIp'] as String).input(),
      privatePoolOptionsId: map['privatePoolOptionsId'] == null ? null : (map['privatePoolOptionsId'] as String).input(),
      privatePoolOptionsMatchCriteria: map['privatePoolOptionsMatchCriteria'] == null ? null : (map['privatePoolOptionsMatchCriteria'] as String).input(),
      publicIp: map['publicIp'] == null ? null : (map['publicIp'] as String).input(),
      queuePairNumber: map['queuePairNumber'] == null ? null : (map['queuePairNumber'] as int).input(),
      renewalStatus: map['renewalStatus'] == null ? null : (map['renewalStatus'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      roleName: map['roleName'] == null ? null : (map['roleName'] as String).input(),
      secondaryPrivateIpAddressCount: map['secondaryPrivateIpAddressCount'] == null ? null : (map['secondaryPrivateIpAddressCount'] as int).input(),
      secondaryPrivateIps: map['secondaryPrivateIps'] == null ? null : ((map['secondaryPrivateIps'] as List).cast<String>()).input(),
      securityEnhancementStrategy: map['securityEnhancementStrategy'] == null ? null : (map['securityEnhancementStrategy'] as String).input(),
      securityGroups: map['securityGroups'] == null ? null : ((map['securityGroups'] as List).cast<String>()).input(),
      spotDuration: map['spotDuration'] == null ? null : (map['spotDuration'] as int).input(),
      spotPriceLimit: map['spotPriceLimit'] == null ? null : (map['spotPriceLimit'] as double).input(),
      spotStrategy: map['spotStrategy'] == null ? null : (map['spotStrategy'] as String).input(),
      startTime: map['startTime'] == null ? null : (map['startTime'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      stoppedMode: map['stoppedMode'] == null ? null : (map['stoppedMode'] as String).input(),
      systemDiskAutoSnapshotPolicyId: map['systemDiskAutoSnapshotPolicyId'] == null ? null : (map['systemDiskAutoSnapshotPolicyId'] as String).input(),
      systemDiskBurstingEnabled: map['systemDiskBurstingEnabled'] == null ? null : (map['systemDiskBurstingEnabled'] as bool).input(),
      systemDiskCategory: map['systemDiskCategory'] == null ? null : (map['systemDiskCategory'] as String).input(),
      systemDiskDescription: map['systemDiskDescription'] == null ? null : (map['systemDiskDescription'] as String).input(),
      systemDiskEncryptAlgorithm: map['systemDiskEncryptAlgorithm'] == null ? null : (map['systemDiskEncryptAlgorithm'] as String).input(),
      systemDiskEncrypted: map['systemDiskEncrypted'] == null ? null : (map['systemDiskEncrypted'] as bool).input(),
      systemDiskId: map['systemDiskId'] == null ? null : (map['systemDiskId'] as String).input(),
      systemDiskKmsKeyId: map['systemDiskKmsKeyId'] == null ? null : (map['systemDiskKmsKeyId'] as String).input(),
      systemDiskName: map['systemDiskName'] == null ? null : (map['systemDiskName'] as String).input(),
      systemDiskPerformanceLevel: map['systemDiskPerformanceLevel'] == null ? null : (map['systemDiskPerformanceLevel'] as String).input(),
      systemDiskProvisionedIops: map['systemDiskProvisionedIops'] == null ? null : (map['systemDiskProvisionedIops'] as int).input(),
      systemDiskSize: map['systemDiskSize'] == null ? null : (map['systemDiskSize'] as int).input(),
      systemDiskStorageClusterId: map['systemDiskStorageClusterId'] == null ? null : (map['systemDiskStorageClusterId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      userData: map['userData'] == null ? null : (map['userData'] as String).input(),
      volumeTags: map['volumeTags'] == null ? null : ((map['volumeTags'] as Map).cast<String, String>()).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId'] as String).input(),
    );
  }
}

