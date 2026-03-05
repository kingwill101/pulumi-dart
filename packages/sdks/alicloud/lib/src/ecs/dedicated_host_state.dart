// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dedicated_host_network_attribute.dart';

/// Input properties used for looking up and filtering DedicatedHost resources.
class DedicatedHostState {
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
  final pulumi.Input<String>? dedicatedHostType;
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
  /// The status of the dedicated host.
  final pulumi.Input<String>? status;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The zone ID of the dedicated host. This parameter is empty by default. If you do not specify this parameter, the system automatically selects a zone.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [DedicatedHostState].
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
  /// [status] The status of the dedicated host.
  /// [tags] A mapping of tags to assign to the resource.
  /// [zoneId] The zone ID of the dedicated host. This parameter is empty by default. If you do not specify this parameter, the system automatically selects a zone.
  DedicatedHostState({
    this.actionOnMaintenance,
    this.autoPlacement,
    this.autoReleaseTime,
    this.autoRenew,
    this.autoRenewPeriod,
    this.cpuOverCommitRatio,
    this.dedicatedHostClusterId,
    this.dedicatedHostName,
    this.dedicatedHostType,
    this.description,
    this.detailFee,
    this.dryRun,
    this.expiredTime,
    this.minQuantity,
    this.networkAttributes,
    this.paymentType,
    this.resourceGroupId,
    this.saleCycle,
    this.status,
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
      'dedicatedHostType': ?dedicatedHostType,
      'description': ?description,
      'detailFee': ?detailFee,
      'dryRun': ?dryRun,
      'expiredTime': ?expiredTime,
      'minQuantity': ?minQuantity,
      'networkAttributes': ?pulumi.Input.mapOptionalInputValue<List<DedicatedHostNetworkAttribute>, List<Map<String, dynamic>>>(networkAttributes, (value) => pulumi.Input.encodeList<DedicatedHostNetworkAttribute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'paymentType': ?paymentType,
      'resourceGroupId': ?resourceGroupId,
      'saleCycle': ?saleCycle,
      'status': ?status,
      'tags': ?tags,
      'zoneId': ?zoneId,
    };
  }

  factory DedicatedHostState.fromMap(Map<String, dynamic> map) {
    return DedicatedHostState(
      actionOnMaintenance: (() { final guardedValue = map['actionOnMaintenance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autoPlacement: (() { final guardedValue = map['autoPlacement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autoReleaseTime: (() { final guardedValue = map['autoReleaseTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autoRenew: (() { final guardedValue = map['autoRenew']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      autoRenewPeriod: (() { final guardedValue = map['autoRenewPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      cpuOverCommitRatio: (() { final guardedValue = map['cpuOverCommitRatio']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      dedicatedHostClusterId: (() { final guardedValue = map['dedicatedHostClusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dedicatedHostName: (() { final guardedValue = map['dedicatedHostName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dedicatedHostType: (() { final guardedValue = map['dedicatedHostType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      detailFee: (() { final guardedValue = map['detailFee']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dryRun: (() { final guardedValue = map['dryRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      expiredTime: (() { final guardedValue = map['expiredTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minQuantity: (() { final guardedValue = map['minQuantity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      networkAttributes: (() { final guardedValue = map['networkAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DedicatedHostNetworkAttribute>(guardedValue, (value) => DedicatedHostNetworkAttribute.fromMap((value as Map).cast<String, dynamic>()))); })(),
      paymentType: (() { final guardedValue = map['paymentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      saleCycle: (() { final guardedValue = map['saleCycle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

