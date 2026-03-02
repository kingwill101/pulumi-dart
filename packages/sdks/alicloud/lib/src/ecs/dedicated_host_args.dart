// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dedicated_host_network_attribute.dart';

/// {@template pulumi_ecs_dedicated_host_dedicated_host_args_doc}
/// The set of arguments for DedicatedHost.
/// {@endtemplate}
/// {@macro pulumi_ecs_dedicated_host_dedicated_host_args_doc}
class DedicatedHostArgs {
  /// The policy used to migrate the instances from the dedicated host when the dedicated host fails or needs to be repaired online. Valid values: `Migrate`, `Stop`.
  final pulumi.Input<String>? actionOnMaintenance;
  /// Specifies whether to add the dedicated host to the resource pool for automatic deployment. If you do not specify the DedicatedHostId parameter when you create an instance on a dedicated host, Alibaba Cloud automatically selects a dedicated host from the resource pool to host the instance. Valid values: `on`, `off`. Default: `on`.
  final pulumi.Input<String>? autoPlacement;
  /// The automatic release time of the dedicated host. Specify the time in the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time must be in UTC+0.
  final pulumi.Input<String>? autoReleaseTime;
  /// Specifies whether to automatically renew the subscription dedicated host.
  final pulumi.Input<bool>? autoRenew;
  /// The auto-renewal period of the dedicated host. Unit: months. Valid values: `1`, `2`, `3`, `6`, and `12`. takes effect and is required only when the AutoRenew parameter is set to true.
  final pulumi.Input<int>? autoRenewPeriod;
  /// CPU oversold ratio. Only custom specifications g6s, c6s, r6s support setting the CPU oversold ratio.
  final pulumi.Input<double>? cpuOverCommitRatio;
  /// The dedicated host cluster ID to which the dedicated host belongs.
  final pulumi.Input<String>? dedicatedHostClusterId;
  /// The name of the dedicated host. The name must be 2 to 128 characters in length. It must start with a letter but cannot start with http:// or https://. It can contain letters, digits, colons (:), underscores (_), and hyphens (-).
  final pulumi.Input<String>? dedicatedHostName;
  /// The type of the dedicated host. You can call the [DescribeDedicatedHostTypes](https://www.alibabacloud.com/help/doc-detail/134240.htm) operation to obtain the most recent list of dedicated host types.
  final pulumi.Input<String> dedicatedHostType;
  /// The description of the dedicated host. The description must be 2 to 256 characters in length and cannot start with http:// or https://.
  final pulumi.Input<String>? description;
  /// Specifies whether to return the billing details of the order when the billing method is changed from subscription to pay-as-you-go. Default: `false`.
  final pulumi.Input<bool>? detailFee;
  /// Specifies whether to only validate the request. Default: `false`.
  final pulumi.Input<bool>? dryRun;
  /// The subscription period of the dedicated host. The Period parameter takes effect and is required only when the ChargeType parameter is set to PrePaid.
  final pulumi.Input<String>? expiredTime;
  /// Specify the minimum purchase quantity of a dedicated host.
  final pulumi.Input<int>? minQuantity;
  /// dedicated host network parameters. contains the following attributes:
  final pulumi.Input<List<DedicatedHostNetworkAttribute>>? networkAttributes;
  /// The billing method of the dedicated host. Valid values: `PrePaid`, `PostPaid`. Default: `PostPaid`.
  final pulumi.Input<String>? paymentType;
  /// The ID of the resource group to which the dedicated host belongs.
  final pulumi.Input<String>? resourceGroupId;
  /// The unit of the subscription period of the dedicated host.
  final pulumi.Input<String>? saleCycle;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The zone ID of the dedicated host. This parameter is empty by default. If you do not specify this parameter, the system automatically selects a zone.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [DedicatedHostArgs].
  /// [actionOnMaintenance] The policy used to migrate the instances from the dedicated host when the dedicated host fails or needs to be repaired online. Valid values: `Migrate`, `Stop`.
  /// [autoPlacement] Specifies whether to add the dedicated host to the resource pool for automatic deployment. If you do not specify the DedicatedHostId parameter when you create an instance on a dedicated host, Alibaba Cloud automatically selects a dedicated host from the resource pool to host the instance. Valid values: `on`, `off`. Default: `on`.
  /// [autoReleaseTime] The automatic release time of the dedicated host. Specify the time in the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time must be in UTC+0.
  /// [autoRenew] Specifies whether to automatically renew the subscription dedicated host.
  /// [autoRenewPeriod] The auto-renewal period of the dedicated host. Unit: months. Valid values: `1`, `2`, `3`, `6`, and `12`. takes effect and is required only when the AutoRenew parameter is set to true.
  /// [cpuOverCommitRatio] CPU oversold ratio. Only custom specifications g6s, c6s, r6s support setting the CPU oversold ratio.
  /// [dedicatedHostClusterId] The dedicated host cluster ID to which the dedicated host belongs.
  /// [dedicatedHostName] The name of the dedicated host. The name must be 2 to 128 characters in length. It must start with a letter but cannot start with http:// or https://. It can contain letters, digits, colons (:), underscores (_), and hyphens (-).
  /// [dedicatedHostType] The type of the dedicated host. You can call the [DescribeDedicatedHostTypes](https://www.alibabacloud.com/help/doc-detail/134240.htm) operation to obtain the most recent list of dedicated host types.
  /// [description] The description of the dedicated host. The description must be 2 to 256 characters in length and cannot start with http:// or https://.
  /// [detailFee] Specifies whether to return the billing details of the order when the billing method is changed from subscription to pay-as-you-go. Default: `false`.
  /// [dryRun] Specifies whether to only validate the request. Default: `false`.
  /// [expiredTime] The subscription period of the dedicated host. The Period parameter takes effect and is required only when the ChargeType parameter is set to PrePaid.
  /// [minQuantity] Specify the minimum purchase quantity of a dedicated host.
  /// [networkAttributes] dedicated host network parameters. contains the following attributes:
  /// [paymentType] The billing method of the dedicated host. Valid values: `PrePaid`, `PostPaid`. Default: `PostPaid`.
  /// [resourceGroupId] The ID of the resource group to which the dedicated host belongs.
  /// [saleCycle] The unit of the subscription period of the dedicated host.
  /// [tags] A mapping of tags to assign to the resource.
  /// [zoneId] The zone ID of the dedicated host. This parameter is empty by default. If you do not specify this parameter, the system automatically selects a zone.
  DedicatedHostArgs({
    this.actionOnMaintenance,
    this.autoPlacement,
    this.autoReleaseTime,
    this.autoRenew,
    this.autoRenewPeriod,
    this.cpuOverCommitRatio,
    this.dedicatedHostClusterId,
    this.dedicatedHostName,
    required this.dedicatedHostType,
    this.description,
    this.detailFee,
    this.dryRun,
    this.expiredTime,
    this.minQuantity,
    this.networkAttributes,
    this.paymentType,
    this.resourceGroupId,
    this.saleCycle,
    this.tags,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionOnMaintenance': ?actionOnMaintenance,
      'autoPlacement': ?autoPlacement,
      'autoReleaseTime': ?autoReleaseTime,
      'autoRenew': ?autoRenew,
      'autoRenewPeriod': ?autoRenewPeriod,
      'cpuOverCommitRatio': ?cpuOverCommitRatio,
      'dedicatedHostClusterId': ?dedicatedHostClusterId,
      'dedicatedHostName': ?dedicatedHostName,
      'dedicatedHostType': dedicatedHostType,
      'description': ?description,
      'detailFee': ?detailFee,
      'dryRun': ?dryRun,
      'expiredTime': ?expiredTime,
      'minQuantity': ?minQuantity,
      'networkAttributes': ?pulumi.Input.mapOptionalInputValue<List<DedicatedHostNetworkAttribute>, List<Map<String, dynamic>>>(networkAttributes, (value) => pulumi.Input.encodeList<DedicatedHostNetworkAttribute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'paymentType': ?paymentType,
      'resourceGroupId': ?resourceGroupId,
      'saleCycle': ?saleCycle,
      'tags': ?tags,
      'zoneId': ?zoneId,
    };
  }

  factory DedicatedHostArgs.fromMap(Map<String, dynamic> map) {
    return DedicatedHostArgs(
      actionOnMaintenance: map['actionOnMaintenance'] == null ? null : (map['actionOnMaintenance'] as String).input(),
      autoPlacement: map['autoPlacement'] == null ? null : (map['autoPlacement'] as String).input(),
      autoReleaseTime: map['autoReleaseTime'] == null ? null : (map['autoReleaseTime'] as String).input(),
      autoRenew: map['autoRenew'] == null ? null : (map['autoRenew'] as bool).input(),
      autoRenewPeriod: map['autoRenewPeriod'] == null ? null : (map['autoRenewPeriod'] as int).input(),
      cpuOverCommitRatio: map['cpuOverCommitRatio'] == null ? null : (map['cpuOverCommitRatio'] as double).input(),
      dedicatedHostClusterId: map['dedicatedHostClusterId'] == null ? null : (map['dedicatedHostClusterId'] as String).input(),
      dedicatedHostName: map['dedicatedHostName'] == null ? null : (map['dedicatedHostName'] as String).input(),
      dedicatedHostType: (map['dedicatedHostType'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      detailFee: map['detailFee'] == null ? null : (map['detailFee'] as bool).input(),
      dryRun: map['dryRun'] == null ? null : (map['dryRun'] as bool).input(),
      expiredTime: map['expiredTime'] == null ? null : (map['expiredTime'] as String).input(),
      minQuantity: map['minQuantity'] == null ? null : (map['minQuantity'] as int).input(),
      networkAttributes: map['networkAttributes'] == null ? null : (pulumi.Input.decodeList<DedicatedHostNetworkAttribute>(map['networkAttributes'], (value) => DedicatedHostNetworkAttribute.fromMap((value as Map).cast<String, dynamic>()))).input(),
      paymentType: map['paymentType'] == null ? null : (map['paymentType'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      saleCycle: map['saleCycle'] == null ? null : (map['saleCycle'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      zoneId: map['zoneId'] == null ? null : (map['zoneId'] as String).input(),
    );
  }
}

