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
      dataphin: map['dataphin'] == null ? null : (map['dataphin']! as String).input(),
      dataphinCount: map['dataphinCount'] == null ? null : (map['dataphinCount']! as String).input(),
      logistics: map['logistics'] == null ? null : (map['logistics']! as String).input(),
      modifyType: map['modifyType'] == null ? null : (map['modifyType']! as String).input(),
      ossSize: map['ossSize'] == null ? null : (map['ossSize']! as String).input(),
      paymentType: (map['paymentType'] as String).input(),
      period: (map['period'] as int).input(),
      renewPeriod: map['renewPeriod'] == null ? null : (map['renewPeriod']! as int).input(),
      renewalStatus: map['renewalStatus'] == null ? null : (map['renewalStatus']! as String).input(),
      sdCbool: (map['sdCbool'] as String).input(),
      sdc: (map['sdc'] as String).input(),
      sddpVersion: (map['sddpVersion'] as String).input(),
      udCbool: (map['udCbool'] as String).input(),
      udc: (map['udc'] as String).input(),
    );
  }
}

