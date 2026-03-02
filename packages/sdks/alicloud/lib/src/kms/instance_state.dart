// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_bind_vpc.dart';

/// Input properties used for looking up and filtering Instance resources.
class InstanceState {
  /// Aucillary VPCs used to access this KMS instance See `bind_vpcs` below.
  final pulumi.Input<List<InstanceBindVpc>>? bindVpcs;
  /// KMS instance certificate chain in PEM format.
  final pulumi.Input<String>? caCertificateChainPem;
  /// The creation time of the resource.
  final pulumi.Input<String>? createTime;
  /// (Available since v1.233.1) Instance expiration time.
  final pulumi.Input<String>? endDate;
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
  /// Instance status.
  final pulumi.Input<String>? status;
  /// The tag of the resource
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the virtual private cloud (VPC) that is associated with the KMS instance.
  final pulumi.Input<String>? vpcId;
  /// The number of managed accesses. The maximum number of VPCs that can access this KMS instance. The attribute is valid when the attribute `payment_type` is `Subscription`.
  final pulumi.Input<int>? vpcNum;
  /// Instance bind vswitches
  final pulumi.Input<List<String>>? vswitchIds;
  /// zone id
  final pulumi.Input<List<String>>? zoneIds;

  /// Creates a new [InstanceState].
  /// [bindVpcs] Aucillary VPCs used to access this KMS instance See `bind_vpcs` below.
  /// [caCertificateChainPem] KMS instance certificate chain in PEM format.
  /// [createTime] The creation time of the resource.
  /// [endDate] (Available since v1.233.1) Instance expiration time.
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
  /// [status] Instance status.
  /// [tags] The tag of the resource
  /// [vpcId] The ID of the virtual private cloud (VPC) that is associated with the KMS instance.
  /// [vpcNum] The number of managed accesses. The maximum number of VPCs that can access this KMS instance. The attribute is valid when the attribute `payment_type` is `Subscription`.
  /// [vswitchIds] Instance bind vswitches
  /// [zoneIds] zone id
  InstanceState({
    this.bindVpcs,
    this.caCertificateChainPem,
    this.createTime,
    this.endDate,
    this.forceDeleteWithoutBackup,
    this.instanceName,
    this.keyNum,
    this.log,
    this.logStorage,
    this.paymentType,
    this.period,
    this.productVersion,
    this.renewPeriod,
    this.renewStatus,
    this.renewalPeriodUnit,
    this.secretNum,
    this.spec,
    this.status,
    this.tags,
    this.vpcId,
    this.vpcNum,
    this.vswitchIds,
    this.zoneIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bindVpcs': ?pulumi.Input.mapOptionalInputValue<List<InstanceBindVpc>, List<Map<String, dynamic>>>(bindVpcs, (value) => pulumi.Input.encodeList<InstanceBindVpc, Map<String, dynamic>>(value, (value) => value.toMap())),
      'caCertificateChainPem': ?caCertificateChainPem,
      'createTime': ?createTime,
      'endDate': ?endDate,
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
      'status': ?status,
      'tags': ?tags,
      'vpcId': ?vpcId,
      'vpcNum': ?vpcNum,
      'vswitchIds': ?vswitchIds,
      'zoneIds': ?zoneIds,
    };
  }

  factory InstanceState.fromMap(Map<String, dynamic> map) {
    return InstanceState(
      bindVpcs: map['bindVpcs'] == null ? null : (pulumi.Input.decodeList<InstanceBindVpc>(map['bindVpcs']!, (value) => InstanceBindVpc.fromMap((value as Map).cast<String, dynamic>()))).input(),
      caCertificateChainPem: map['caCertificateChainPem'] == null ? null : (map['caCertificateChainPem']! as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      endDate: map['endDate'] == null ? null : (map['endDate']! as String).input(),
      forceDeleteWithoutBackup: map['forceDeleteWithoutBackup'] == null ? null : (map['forceDeleteWithoutBackup']! as String).input(),
      instanceName: map['instanceName'] == null ? null : (map['instanceName']! as String).input(),
      keyNum: map['keyNum'] == null ? null : (map['keyNum']! as int).input(),
      log: map['log'] == null ? null : (map['log']! as String).input(),
      logStorage: map['logStorage'] == null ? null : (map['logStorage']! as int).input(),
      paymentType: map['paymentType'] == null ? null : (map['paymentType']! as String).input(),
      period: map['period'] == null ? null : (map['period']! as int).input(),
      productVersion: map['productVersion'] == null ? null : (map['productVersion']! as String).input(),
      renewPeriod: map['renewPeriod'] == null ? null : (map['renewPeriod']! as int).input(),
      renewStatus: map['renewStatus'] == null ? null : (map['renewStatus']! as String).input(),
      renewalPeriodUnit: map['renewalPeriodUnit'] == null ? null : (map['renewalPeriodUnit']! as String).input(),
      secretNum: map['secretNum'] == null ? null : (map['secretNum']! as int).input(),
      spec: map['spec'] == null ? null : (map['spec']! as int).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId']! as String).input(),
      vpcNum: map['vpcNum'] == null ? null : (map['vpcNum']! as int).input(),
      vswitchIds: map['vswitchIds'] == null ? null : ((map['vswitchIds']! as List).cast<String>()).input(),
      zoneIds: map['zoneIds'] == null ? null : ((map['zoneIds']! as List).cast<String>()).input(),
    );
  }
}

