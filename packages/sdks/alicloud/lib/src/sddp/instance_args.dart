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
    pulumi.Output<String>? dataphin,
    pulumi.Output<String>? dataphinCount,
    pulumi.Output<String>? logistics,
    pulumi.Output<String>? modifyType,
    pulumi.Output<String>? ossSize,
    required pulumi.Output<String> paymentType,
    required pulumi.Output<int> period,
    pulumi.Output<int>? renewPeriod,
    pulumi.Output<String>? renewalStatus,
    required pulumi.Output<String> sdCbool,
    required pulumi.Output<String> sdc,
    required pulumi.Output<String> sddpVersion,
    required pulumi.Output<String> udCbool,
    required pulumi.Output<String> udc,
  }) :
      dataphin = pulumi.Input.asOptionalInput<String>(dataphin),
      dataphinCount = pulumi.Input.asOptionalInput<String>(dataphinCount),
      logistics = pulumi.Input.asOptionalInput<String>(logistics),
      modifyType = pulumi.Input.asOptionalInput<String>(modifyType),
      ossSize = pulumi.Input.asOptionalInput<String>(ossSize),
      paymentType = pulumi.Input.asInput<String>(paymentType),
      period = pulumi.Input.asInput<int>(period),
      renewPeriod = pulumi.Input.asOptionalInput<int>(renewPeriod),
      renewalStatus = pulumi.Input.asOptionalInput<String>(renewalStatus),
      sdCbool = pulumi.Input.asInput<String>(sdCbool),
      sdc = pulumi.Input.asInput<String>(sdc),
      sddpVersion = pulumi.Input.asInput<String>(sddpVersion),
      udCbool = pulumi.Input.asInput<String>(udCbool),
      udc = pulumi.Input.asInput<String>(udc);

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
      dataphin: map['dataphin'] == null ? null : pulumi.Output.create<String>(map['dataphin'] as String),
      dataphinCount: map['dataphinCount'] == null ? null : pulumi.Output.create<String>(map['dataphinCount'] as String),
      logistics: map['logistics'] == null ? null : pulumi.Output.create<String>(map['logistics'] as String),
      modifyType: map['modifyType'] == null ? null : pulumi.Output.create<String>(map['modifyType'] as String),
      ossSize: map['ossSize'] == null ? null : pulumi.Output.create<String>(map['ossSize'] as String),
      paymentType: pulumi.Output.create<String>(map['paymentType'] as String),
      period: pulumi.Output.create<int>(map['period'] as int),
      renewPeriod: map['renewPeriod'] == null ? null : pulumi.Output.create<int>(map['renewPeriod'] as int),
      renewalStatus: map['renewalStatus'] == null ? null : pulumi.Output.create<String>(map['renewalStatus'] as String),
      sdCbool: pulumi.Output.create<String>(map['sdCbool'] as String),
      sdc: pulumi.Output.create<String>(map['sdc'] as String),
      sddpVersion: pulumi.Output.create<String>(map['sddpVersion'] as String),
      udCbool: pulumi.Output.create<String>(map['udCbool'] as String),
      udc: pulumi.Output.create<String>(map['udc'] as String),
    );
  }
}

