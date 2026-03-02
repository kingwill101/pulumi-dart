// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Instance resources.
class InstanceState {
  /// Specifies whether to enable auto-renewal. Unit: months. Valid values: `true` and `false`.
  final pulumi.Input<bool>? autoRenew;
  /// The auto renew period. Valid values: `1`,`3`, `6`, `12`, `24`, `36`. **NOTE:** The attribute `auto_renew` is valid when the attribute is `true`.
  final pulumi.Input<int>? autoRenewPeriod;
  /// The size of the data disk. Unit: GB. Valid values: `0` to `16380`.
  final pulumi.Input<int>? dataDiskSize;
  /// The ID of the image.  You can use the `alicloud.simpleapplicationserver.getImages` to query the available images in the specified region. The value must be an integral multiple of 20.
  final pulumi.Input<String>? imageId;
  /// The name of the simple application server.
  final pulumi.Input<String>? instanceName;
  /// The password of the simple application server. The password must be 8 to 30 characters in length. It must contain at least three of the following character types: uppercase letters, lowercase letters, digits, and special characters. Special characters include: `( ) ~ ! @ # $ % ^ & * - + = | { } [ ] : ; < > , . ? /`.
  final pulumi.Input<String>? password;
  /// The paymen type of the resource. Valid values: `Subscription`.
  final pulumi.Input<String>? paymentType;
  /// The period. Unit: months. Valid values: `1`,`3`, `6`, `12`, `24`, `36`.
  final pulumi.Input<int>? period;
  /// The ID of the plan. You can use the `alicloud.simpleapplicationserver.getServerPlans`  to query all the plans provided by Simple Application Server in the specified region.
  final pulumi.Input<String>? planId;
  /// The status of the simple application server. Valid values: `Resetting`, `Running`, `Stopped`.
  final pulumi.Input<String>? status;

  /// Creates a new [InstanceState].
  /// [autoRenew] Specifies whether to enable auto-renewal. Unit: months. Valid values: `true` and `false`.
  /// [autoRenewPeriod] The auto renew period. Valid values: `1`,`3`, `6`, `12`, `24`, `36`. **NOTE:** The attribute `auto_renew` is valid when the attribute is `true`.
  /// [dataDiskSize] The size of the data disk. Unit: GB. Valid values: `0` to `16380`.
  /// [imageId] The ID of the image.  You can use the `alicloud.simpleapplicationserver.getImages` to query the available images in the specified region. The value must be an integral multiple of 20.
  /// [instanceName] The name of the simple application server.
  /// [password] The password of the simple application server. The password must be 8 to 30 characters in length. It must contain at least three of the following character types: uppercase letters, lowercase letters, digits, and special characters. Special characters include: `( ) ~ ! @ # $ % ^ & * - + = | { } [ ] : ; < > , . ? /`.
  /// [paymentType] The paymen type of the resource. Valid values: `Subscription`.
  /// [period] The period. Unit: months. Valid values: `1`,`3`, `6`, `12`, `24`, `36`.
  /// [planId] The ID of the plan. You can use the `alicloud.simpleapplicationserver.getServerPlans`  to query all the plans provided by Simple Application Server in the specified region.
  /// [status] The status of the simple application server. Valid values: `Resetting`, `Running`, `Stopped`.
  InstanceState({
    this.autoRenew,
    this.autoRenewPeriod,
    this.dataDiskSize,
    this.imageId,
    this.instanceName,
    this.password,
    this.paymentType,
    this.period,
    this.planId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRenew': ?autoRenew,
      'autoRenewPeriod': ?autoRenewPeriod,
      'dataDiskSize': ?dataDiskSize,
      'imageId': ?imageId,
      'instanceName': ?instanceName,
      'password': ?password,
      'paymentType': ?paymentType,
      'period': ?period,
      'planId': ?planId,
      'status': ?status,
    };
  }

  factory InstanceState.fromMap(Map<String, dynamic> map) {
    return InstanceState(
      autoRenew: map['autoRenew'] == null ? null : (map['autoRenew'] as bool).input(),
      autoRenewPeriod: map['autoRenewPeriod'] == null ? null : (map['autoRenewPeriod'] as int).input(),
      dataDiskSize: map['dataDiskSize'] == null ? null : (map['dataDiskSize'] as int).input(),
      imageId: map['imageId'] == null ? null : (map['imageId'] as String).input(),
      instanceName: map['instanceName'] == null ? null : (map['instanceName'] as String).input(),
      password: map['password'] == null ? null : (map['password'] as String).input(),
      paymentType: map['paymentType'] == null ? null : (map['paymentType'] as String).input(),
      period: map['period'] == null ? null : (map['period'] as int).input(),
      planId: map['planId'] == null ? null : (map['planId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

