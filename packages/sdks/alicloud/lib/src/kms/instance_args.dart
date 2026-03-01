// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_bind_vpc.dart';

/// {@template pulumi_kms_instance_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_kms_instance_instance_args_doc}
class InstanceArgs {
  /// Aucillary VPCs used to access this KMS instance See `bind_vpcs` below.
  final pulumi.Input<List<InstanceBindVpc>>? bindVpcs;
  /// Whether to force deletion even without backup.
  ///
  /// > **NOTE:** This parameter only takes effect when deletion is triggered.
  final pulumi.Input<String>? forceDeleteWithoutBackup;
  /// The name of the resource
  final pulumi.Input<String>? instanceName;
  /// Maximum number of stored keys. The attribute is valid when the attribute `payment_type` is `Subscription`.
  final pulumi.Input<int>? keyNum;
  /// Instance Audit Log Switch. This attribute was limited to Subscription (prepaid) payment type before v1.264.0. As of v1.264.0, it is also supported for PayAsYouGo (postpaid) instances.
  final pulumi.Input<String>? log;
  /// Instance log capacity. This attribute was limited to Subscription (prepaid) payment type before v1.264.0. As of v1.264.0, it is also supported for PayAsYouGo (postpaid) instances.
  final pulumi.Input<int>? logStorage;
  /// The billing method. Valid values:
  ///
  /// - Subscription: the subscription billing method.
  /// - PayAsYouGo: the pay-as-you-go billing method.
  final pulumi.Input<String>? paymentType;
  final pulumi.Input<int>? period;
  /// KMS Instance commodity type (software/hardware)
  final pulumi.Input<String>? productVersion;
  /// The auto-renewal period. Unit: month.
  ///
  /// > **NOTE:**   This parameter is required if the `RenewalStatus` parameter is set to `AutoRenewal`.
  final pulumi.Input<int>? renewPeriod;
  /// The renewal status of the specified instance. Valid values:
  ///
  /// - AutoRenewal: The instance is automatically renewed.
  /// - ManualRenewal: The instance is manually renewed.
  /// - NotRenewal: The instance is not renewed.
  final pulumi.Input<String>? renewStatus;
  final pulumi.Input<String>? renewalPeriodUnit;
  /// Maximum number of Secrets. The attribute is valid when the attribute `payment_type` is `Subscription`.
  final pulumi.Input<int>? secretNum;
  /// The computation performance level of the KMS instance. The attribute is valid when the attribute `payment_type` is `Subscription`.
  final pulumi.Input<int>? spec;
  /// The tag of the resource
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the virtual private cloud (VPC) that is associated with the KMS instance.
  final pulumi.Input<String> vpcId;
  /// The number of managed accesses. The maximum number of VPCs that can access this KMS instance. The attribute is valid when the attribute `payment_type` is `Subscription`.
  final pulumi.Input<int>? vpcNum;
  /// Instance bind vswitches
  final pulumi.Input<List<String>> vswitchIds;
  /// zone id
  final pulumi.Input<List<String>> zoneIds;

  /// Creates a new [InstanceArgs].
  /// [bindVpcs] Aucillary VPCs used to access this KMS instance See `bind_vpcs` below.
  /// [forceDeleteWithoutBackup] Whether to force deletion even without backup.
  /// [instanceName] The name of the resource
  /// [keyNum] Maximum number of stored keys. The attribute is valid when the attribute `payment_type` is `Subscription`.
  /// [log] Instance Audit Log Switch. This attribute was limited to Subscription (prepaid) payment type before v1.264.0. As of v1.264.0, it is also supported for PayAsYouGo (postpaid) instances.
  /// [logStorage] Instance log capacity. This attribute was limited to Subscription (prepaid) payment type before v1.264.0. As of v1.264.0, it is also supported for PayAsYouGo (postpaid) instances.
  /// [paymentType] The billing method. Valid values:
  /// [period] Optional.
  /// [productVersion] KMS Instance commodity type (software/hardware)
  /// [renewPeriod] The auto-renewal period. Unit: month.
  /// [renewStatus] The renewal status of the specified instance. Valid values:
  /// [renewalPeriodUnit] Optional.
  /// [secretNum] Maximum number of Secrets. The attribute is valid when the attribute `payment_type` is `Subscription`.
  /// [spec] The computation performance level of the KMS instance. The attribute is valid when the attribute `payment_type` is `Subscription`.
  /// [tags] The tag of the resource
  /// [vpcId] The ID of the virtual private cloud (VPC) that is associated with the KMS instance.
  /// [vpcNum] The number of managed accesses. The maximum number of VPCs that can access this KMS instance. The attribute is valid when the attribute `payment_type` is `Subscription`.
  /// [vswitchIds] Instance bind vswitches
  /// [zoneIds] zone id
  InstanceArgs({
    pulumi.Output<List<InstanceBindVpc>>? bindVpcs,
    pulumi.Output<String>? forceDeleteWithoutBackup,
    pulumi.Output<String>? instanceName,
    pulumi.Output<int>? keyNum,
    pulumi.Output<String>? log,
    pulumi.Output<int>? logStorage,
    pulumi.Output<String>? paymentType,
    pulumi.Output<int>? period,
    pulumi.Output<String>? productVersion,
    pulumi.Output<int>? renewPeriod,
    pulumi.Output<String>? renewStatus,
    pulumi.Output<String>? renewalPeriodUnit,
    pulumi.Output<int>? secretNum,
    pulumi.Output<int>? spec,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> vpcId,
    pulumi.Output<int>? vpcNum,
    required pulumi.Output<List<String>> vswitchIds,
    required pulumi.Output<List<String>> zoneIds,
  }) :
      bindVpcs = pulumi.Input.asOptionalInput<List<InstanceBindVpc>>(bindVpcs),
      forceDeleteWithoutBackup = pulumi.Input.asOptionalInput<String>(forceDeleteWithoutBackup),
      instanceName = pulumi.Input.asOptionalInput<String>(instanceName),
      keyNum = pulumi.Input.asOptionalInput<int>(keyNum),
      log = pulumi.Input.asOptionalInput<String>(log),
      logStorage = pulumi.Input.asOptionalInput<int>(logStorage),
      paymentType = pulumi.Input.asOptionalInput<String>(paymentType),
      period = pulumi.Input.asOptionalInput<int>(period),
      productVersion = pulumi.Input.asOptionalInput<String>(productVersion),
      renewPeriod = pulumi.Input.asOptionalInput<int>(renewPeriod),
      renewStatus = pulumi.Input.asOptionalInput<String>(renewStatus),
      renewalPeriodUnit = pulumi.Input.asOptionalInput<String>(renewalPeriodUnit),
      secretNum = pulumi.Input.asOptionalInput<int>(secretNum),
      spec = pulumi.Input.asOptionalInput<int>(spec),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpcId = pulumi.Input.asInput<String>(vpcId),
      vpcNum = pulumi.Input.asOptionalInput<int>(vpcNum),
      vswitchIds = pulumi.Input.asInput<List<String>>(vswitchIds),
      zoneIds = pulumi.Input.asInput<List<String>>(zoneIds);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bindVpcs': ?pulumi.Input.mapOptionalInputValue<List<InstanceBindVpc>, List<Map<String, dynamic>>>(bindVpcs, (value) => pulumi.Input.encodeList<InstanceBindVpc, Map<String, dynamic>>(value, (value) => value.toMap())),
      'forceDeleteWithoutBackup': ?forceDeleteWithoutBackup,
      'instanceName': ?instanceName,
      'keyNum': ?keyNum,
      'log': ?log,
      'logStorage': ?logStorage,
      'paymentType': ?paymentType,
      'period': ?period,
      'productVersion': ?productVersion,
      'renewPeriod': ?renewPeriod,
      'renewStatus': ?renewStatus,
      'renewalPeriodUnit': ?renewalPeriodUnit,
      'secretNum': ?secretNum,
      'spec': ?spec,
      'tags': ?tags,
      'vpcId': vpcId,
      'vpcNum': ?vpcNum,
      'vswitchIds': vswitchIds,
      'zoneIds': zoneIds,
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      bindVpcs: map['bindVpcs'] == null ? null : pulumi.Output.create<List<InstanceBindVpc>>(pulumi.Input.decodeList<InstanceBindVpc>(map['bindVpcs'], (value) => InstanceBindVpc.fromMap((value as Map).cast<String, dynamic>()))),
      forceDeleteWithoutBackup: map['forceDeleteWithoutBackup'] == null ? null : pulumi.Output.create<String>(map['forceDeleteWithoutBackup'] as String),
      instanceName: map['instanceName'] == null ? null : pulumi.Output.create<String>(map['instanceName'] as String),
      keyNum: map['keyNum'] == null ? null : pulumi.Output.create<int>(map['keyNum'] as int),
      log: map['log'] == null ? null : pulumi.Output.create<String>(map['log'] as String),
      logStorage: map['logStorage'] == null ? null : pulumi.Output.create<int>(map['logStorage'] as int),
      paymentType: map['paymentType'] == null ? null : pulumi.Output.create<String>(map['paymentType'] as String),
      period: map['period'] == null ? null : pulumi.Output.create<int>(map['period'] as int),
      productVersion: map['productVersion'] == null ? null : pulumi.Output.create<String>(map['productVersion'] as String),
      renewPeriod: map['renewPeriod'] == null ? null : pulumi.Output.create<int>(map['renewPeriod'] as int),
      renewStatus: map['renewStatus'] == null ? null : pulumi.Output.create<String>(map['renewStatus'] as String),
      renewalPeriodUnit: map['renewalPeriodUnit'] == null ? null : pulumi.Output.create<String>(map['renewalPeriodUnit'] as String),
      secretNum: map['secretNum'] == null ? null : pulumi.Output.create<int>(map['secretNum'] as int),
      spec: map['spec'] == null ? null : pulumi.Output.create<int>(map['spec'] as int),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vpcId: pulumi.Output.create<String>(map['vpcId'] as String),
      vpcNum: map['vpcNum'] == null ? null : pulumi.Output.create<int>(map['vpcNum'] as int),
      vswitchIds: pulumi.Output.create<List<String>>((map['vswitchIds'] as List).cast<String>()),
      zoneIds: pulumi.Output.create<List<String>>((map['zoneIds'] as List).cast<String>()),
    );
  }
}

