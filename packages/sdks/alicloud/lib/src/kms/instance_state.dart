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
  /// &gt; **NOTE:** This parameter only takes effect when deletion is triggered.
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
  /// &gt; **NOTE:**   This parameter is required if the `RenewalStatus` parameter is set to `AutoRenewal`.
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
      'bindVpcs':
          ?pulumi.Input.mapOptionalInputValue<
            List<InstanceBindVpc>,
            List<Map<String, dynamic>>
          >(
            bindVpcs,
            (value) =>
                pulumi.Input.encodeList<InstanceBindVpc, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
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
      bindVpcs: (() {
        final guardedValue = map['bindVpcs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InstanceBindVpc>(
            guardedValue,
            (value) =>
                InstanceBindVpc.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      caCertificateChainPem: (() {
        final guardedValue = map['caCertificateChainPem'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      endDate: (() {
        final guardedValue = map['endDate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      forceDeleteWithoutBackup: (() {
        final guardedValue = map['forceDeleteWithoutBackup'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceName: (() {
        final guardedValue = map['instanceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keyNum: (() {
        final guardedValue = map['keyNum'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      log: (() {
        final guardedValue = map['log'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      logStorage: (() {
        final guardedValue = map['logStorage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      paymentType: (() {
        final guardedValue = map['paymentType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      period: (() {
        final guardedValue = map['period'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      productVersion: (() {
        final guardedValue = map['productVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      renewPeriod: (() {
        final guardedValue = map['renewPeriod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      renewStatus: (() {
        final guardedValue = map['renewStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      renewalPeriodUnit: (() {
        final guardedValue = map['renewalPeriodUnit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secretNum: (() {
        final guardedValue = map['secretNum'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      spec: (() {
        final guardedValue = map['spec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      vpcId: (() {
        final guardedValue = map['vpcId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vpcNum: (() {
        final guardedValue = map['vpcNum'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      vswitchIds: (() {
        final guardedValue = map['vswitchIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      zoneIds: (() {
        final guardedValue = map['zoneIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
