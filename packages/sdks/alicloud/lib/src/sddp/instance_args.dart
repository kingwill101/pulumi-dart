// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sddp_instance_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_sddp_instance_instance_args_doc}
class InstanceArgs {
  /// The dataphin. Valid values: `yes`,`no`.
  final pulumi.Input<String>? dataphin;
  /// The dataphin count. Valid values: 1 to 20.
  final pulumi.Input<String>? dataphinCount;
  /// The logistics.
  final pulumi.Input<String>? logistics;
  /// The modify type. Valid values: `Upgrade`, `Downgrade`.  **NOTE:** The `modify_type` is required when you execute a update operation.
  final pulumi.Input<String>? modifyType;
  /// The OSS storage capacity.
  final pulumi.Input<String>? ossSize;
  /// The payment type of the resource. Valid values: `Subscription`.
  final pulumi.Input<String> paymentType;
  /// The Prepaid period. Valid values: `1`, `2`, `3`, `6`,`12`,`24`.
  final pulumi.Input<int> period;
  /// Automatic renewal period. **NOTE:** The `renew_period` is required under the condition that renewal_status is `AutoRenewal`,
  final pulumi.Input<int>? renewPeriod;
  /// Automatic renewal status. Valid values: `AutoRenewal`,`ManualRenewal`. Default Value: `ManualRenewal`.
  final pulumi.Input<String>? renewalStatus;
  /// Whether to use the database. Valid values:`yes`,`no`.
  final pulumi.Input<String> sdCbool;
  /// The number of instances.
  final pulumi.Input<String> sdc;
  /// The sddp version. Valid values: `version_audit`,`version_company`,`version_dlp`.
  final pulumi.Input<String> sddpVersion;
  /// Whether to use OSS. Valid values: `yes`,`no`.
  final pulumi.Input<String> udCbool;
  /// OSS Size.
  final pulumi.Input<String> udc;

  /// Creates a new [InstanceArgs].
  /// [dataphin] The dataphin. Valid values: `yes`,`no`.
  /// [dataphinCount] The dataphin count. Valid values: 1 to 20.
  /// [logistics] The logistics.
  /// [modifyType] The modify type. Valid values: `Upgrade`, `Downgrade`.  **NOTE:** The `modify_type` is required when you execute a update operation.
  /// [ossSize] The OSS storage capacity.
  /// [paymentType] The payment type of the resource. Valid values: `Subscription`.
  /// [period] The Prepaid period. Valid values: `1`, `2`, `3`, `6`,`12`,`24`.
  /// [renewPeriod] Automatic renewal period. **NOTE:** The `renew_period` is required under the condition that renewal_status is `AutoRenewal`,
  /// [renewalStatus] Automatic renewal status. Valid values: `AutoRenewal`,`ManualRenewal`. Default Value: `ManualRenewal`.
  /// [sdCbool] Whether to use the database. Valid values:`yes`,`no`.
  /// [sdc] The number of instances.
  /// [sddpVersion] The sddp version. Valid values: `version_audit`,`version_company`,`version_dlp`.
  /// [udCbool] Whether to use OSS. Valid values: `yes`,`no`.
  /// [udc] OSS Size.
  InstanceArgs({
    this.dataphin,
    this.dataphinCount,
    this.logistics,
    this.modifyType,
    this.ossSize,
    required this.paymentType,
    required this.period,
    this.renewPeriod,
    this.renewalStatus,
    required this.sdCbool,
    required this.sdc,
    required this.sddpVersion,
    required this.udCbool,
    required this.udc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataphin': ?dataphin,
      'dataphinCount': ?dataphinCount,
      'logistics': ?logistics,
      'modifyType': ?modifyType,
      'ossSize': ?ossSize,
      'paymentType': paymentType,
      'period': period,
      'renewPeriod': ?renewPeriod,
      'renewalStatus': ?renewalStatus,
      'sdCbool': sdCbool,
      'sdc': sdc,
      'sddpVersion': sddpVersion,
      'udCbool': udCbool,
      'udc': udc,
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      dataphin: (() { final guardedValue = map['dataphin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataphinCount: (() { final guardedValue = map['dataphinCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logistics: (() { final guardedValue = map['logistics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modifyType: (() { final guardedValue = map['modifyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ossSize: (() { final guardedValue = map['ossSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      paymentType: pulumi.Input.fromValue(map['paymentType'] as String),
      period: pulumi.Input.fromValue(map['period'] as int),
      renewPeriod: (() { final guardedValue = map['renewPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      renewalStatus: (() { final guardedValue = map['renewalStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sdCbool: pulumi.Input.fromValue(map['sdCbool'] as String),
      sdc: pulumi.Input.fromValue(map['sdc'] as String),
      sddpVersion: pulumi.Input.fromValue(map['sddpVersion'] as String),
      udCbool: pulumi.Input.fromValue(map['udCbool'] as String),
      udc: pulumi.Input.fromValue(map['udc'] as String),
    );
  }
}

