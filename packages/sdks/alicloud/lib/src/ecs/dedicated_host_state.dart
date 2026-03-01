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
    pulumi.Output<String>? actionOnMaintenance,
    pulumi.Output<String>? autoPlacement,
    pulumi.Output<String>? autoReleaseTime,
    pulumi.Output<bool>? autoRenew,
    pulumi.Output<int>? autoRenewPeriod,
    pulumi.Output<double>? cpuOverCommitRatio,
    pulumi.Output<String>? dedicatedHostClusterId,
    pulumi.Output<String>? dedicatedHostName,
    pulumi.Output<String>? dedicatedHostType,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? detailFee,
    pulumi.Output<bool>? dryRun,
    pulumi.Output<String>? expiredTime,
    pulumi.Output<int>? minQuantity,
    pulumi.Output<List<DedicatedHostNetworkAttribute>>? networkAttributes,
    pulumi.Output<String>? paymentType,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? saleCycle,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? zoneId,
  }) :
      actionOnMaintenance = pulumi.Input.asOptionalInput<String>(actionOnMaintenance),
      autoPlacement = pulumi.Input.asOptionalInput<String>(autoPlacement),
      autoReleaseTime = pulumi.Input.asOptionalInput<String>(autoReleaseTime),
      autoRenew = pulumi.Input.asOptionalInput<bool>(autoRenew),
      autoRenewPeriod = pulumi.Input.asOptionalInput<int>(autoRenewPeriod),
      cpuOverCommitRatio = pulumi.Input.asOptionalInput<double>(cpuOverCommitRatio),
      dedicatedHostClusterId = pulumi.Input.asOptionalInput<String>(dedicatedHostClusterId),
      dedicatedHostName = pulumi.Input.asOptionalInput<String>(dedicatedHostName),
      dedicatedHostType = pulumi.Input.asOptionalInput<String>(dedicatedHostType),
      description = pulumi.Input.asOptionalInput<String>(description),
      detailFee = pulumi.Input.asOptionalInput<bool>(detailFee),
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      expiredTime = pulumi.Input.asOptionalInput<String>(expiredTime),
      minQuantity = pulumi.Input.asOptionalInput<int>(minQuantity),
      networkAttributes = pulumi.Input.asOptionalInput<List<DedicatedHostNetworkAttribute>>(networkAttributes),
      paymentType = pulumi.Input.asOptionalInput<String>(paymentType),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      saleCycle = pulumi.Input.asOptionalInput<String>(saleCycle),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

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
      actionOnMaintenance: map['actionOnMaintenance'] == null ? null : pulumi.Output.create<String>(map['actionOnMaintenance'] as String),
      autoPlacement: map['autoPlacement'] == null ? null : pulumi.Output.create<String>(map['autoPlacement'] as String),
      autoReleaseTime: map['autoReleaseTime'] == null ? null : pulumi.Output.create<String>(map['autoReleaseTime'] as String),
      autoRenew: map['autoRenew'] == null ? null : pulumi.Output.create<bool>(map['autoRenew'] as bool),
      autoRenewPeriod: map['autoRenewPeriod'] == null ? null : pulumi.Output.create<int>(map['autoRenewPeriod'] as int),
      cpuOverCommitRatio: map['cpuOverCommitRatio'] == null ? null : pulumi.Output.create<double>(map['cpuOverCommitRatio'] as double),
      dedicatedHostClusterId: map['dedicatedHostClusterId'] == null ? null : pulumi.Output.create<String>(map['dedicatedHostClusterId'] as String),
      dedicatedHostName: map['dedicatedHostName'] == null ? null : pulumi.Output.create<String>(map['dedicatedHostName'] as String),
      dedicatedHostType: map['dedicatedHostType'] == null ? null : pulumi.Output.create<String>(map['dedicatedHostType'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      detailFee: map['detailFee'] == null ? null : pulumi.Output.create<bool>(map['detailFee'] as bool),
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      expiredTime: map['expiredTime'] == null ? null : pulumi.Output.create<String>(map['expiredTime'] as String),
      minQuantity: map['minQuantity'] == null ? null : pulumi.Output.create<int>(map['minQuantity'] as int),
      networkAttributes: map['networkAttributes'] == null ? null : pulumi.Output.create<List<DedicatedHostNetworkAttribute>>(pulumi.Input.decodeList<DedicatedHostNetworkAttribute>(map['networkAttributes'], (value) => DedicatedHostNetworkAttribute.fromMap((value as Map).cast<String, dynamic>()))),
      paymentType: map['paymentType'] == null ? null : pulumi.Output.create<String>(map['paymentType'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      saleCycle: map['saleCycle'] == null ? null : pulumi.Output.create<String>(map['saleCycle'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

