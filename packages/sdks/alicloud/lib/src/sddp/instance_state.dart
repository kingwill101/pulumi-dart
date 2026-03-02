// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Instance resources.
class InstanceState {
  /// Whether the required RAM authorization is configured.
  final pulumi.Input<bool>? authed;
  /// The dataphin. Valid values: `yes`,`no`.
  final pulumi.Input<String>? dataphin;
  /// The dataphin count. Valid values: 1 to 20.
  final pulumi.Input<String>? dataphinCount;
  /// The number of instances.
  final pulumi.Input<String>? instanceNum;
  /// The logistics.
  final pulumi.Input<String>? logistics;
  /// The modify type. Valid values: `Upgrade`, `Downgrade`.  **NOTE:** The `modify_type` is required when you execute a update operation.
  final pulumi.Input<String>? modifyType;
  /// Whether the authorized MaxCompute (ODPS) assets.
  final pulumi.Input<bool>? odpsSet;
  /// Whether the authorized oss assets.
  final pulumi.Input<bool>? ossBucketSet;
  /// The OSS storage capacity.
  final pulumi.Input<String>? ossSize;
  /// The payment type of the resource. Valid values: `Subscription`.
  final pulumi.Input<String>? paymentType;
  /// The Prepaid period. Valid values: `1`, `2`, `3`, `6`,`12`,`24`.
  final pulumi.Input<int>? period;
  /// Whether the authorized rds assets.
  final pulumi.Input<bool>? rdsSet;
  /// The remaining days of the protection period of the assets in the current login account.
  final pulumi.Input<String>? remainDays;
  /// Automatic renewal period. **NOTE:** The `renew_period` is required under the condition that renewal_status is `AutoRenewal`,
  final pulumi.Input<int>? renewPeriod;
  /// Automatic renewal status. Valid values: `AutoRenewal`,`ManualRenewal`. Default Value: `ManualRenewal`.
  final pulumi.Input<String>? renewalStatus;
  /// Whether to use the database. Valid values:`yes`,`no`.
  final pulumi.Input<String>? sdCbool;
  /// The number of instances.
  final pulumi.Input<String>? sdc;
  /// The sddp version. Valid values: `version_audit`,`version_company`,`version_dlp`.
  final pulumi.Input<String>? sddpVersion;
  /// The status of the resource.
  final pulumi.Input<String>? status;
  /// Whether to use OSS. Valid values: `yes`,`no`.
  final pulumi.Input<String>? udCbool;
  /// OSS Size.
  final pulumi.Input<String>? udc;

  /// Creates a new [InstanceState].
  /// [authed] Whether the required RAM authorization is configured.
  /// [dataphin] The dataphin. Valid values: `yes`,`no`.
  /// [dataphinCount] The dataphin count. Valid values: 1 to 20.
  /// [instanceNum] The number of instances.
  /// [logistics] The logistics.
  /// [modifyType] The modify type. Valid values: `Upgrade`, `Downgrade`.  **NOTE:** The `modify_type` is required when you execute a update operation.
  /// [odpsSet] Whether the authorized MaxCompute (ODPS) assets.
  /// [ossBucketSet] Whether the authorized oss assets.
  /// [ossSize] The OSS storage capacity.
  /// [paymentType] The payment type of the resource. Valid values: `Subscription`.
  /// [period] The Prepaid period. Valid values: `1`, `2`, `3`, `6`,`12`,`24`.
  /// [rdsSet] Whether the authorized rds assets.
  /// [remainDays] The remaining days of the protection period of the assets in the current login account.
  /// [renewPeriod] Automatic renewal period. **NOTE:** The `renew_period` is required under the condition that renewal_status is `AutoRenewal`,
  /// [renewalStatus] Automatic renewal status. Valid values: `AutoRenewal`,`ManualRenewal`. Default Value: `ManualRenewal`.
  /// [sdCbool] Whether to use the database. Valid values:`yes`,`no`.
  /// [sdc] The number of instances.
  /// [sddpVersion] The sddp version. Valid values: `version_audit`,`version_company`,`version_dlp`.
  /// [status] The status of the resource.
  /// [udCbool] Whether to use OSS. Valid values: `yes`,`no`.
  /// [udc] OSS Size.
  InstanceState({
    this.authed,
    this.dataphin,
    this.dataphinCount,
    this.instanceNum,
    this.logistics,
    this.modifyType,
    this.odpsSet,
    this.ossBucketSet,
    this.ossSize,
    this.paymentType,
    this.period,
    this.rdsSet,
    this.remainDays,
    this.renewPeriod,
    this.renewalStatus,
    this.sdCbool,
    this.sdc,
    this.sddpVersion,
    this.status,
    this.udCbool,
    this.udc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authed': ?authed,
      'dataphin': ?dataphin,
      'dataphinCount': ?dataphinCount,
      'instanceNum': ?instanceNum,
      'logistics': ?logistics,
      'modifyType': ?modifyType,
      'odpsSet': ?odpsSet,
      'ossBucketSet': ?ossBucketSet,
      'ossSize': ?ossSize,
      'paymentType': ?paymentType,
      'period': ?period,
      'rdsSet': ?rdsSet,
      'remainDays': ?remainDays,
      'renewPeriod': ?renewPeriod,
      'renewalStatus': ?renewalStatus,
      'sdCbool': ?sdCbool,
      'sdc': ?sdc,
      'sddpVersion': ?sddpVersion,
      'status': ?status,
      'udCbool': ?udCbool,
      'udc': ?udc,
    };
  }

  factory InstanceState.fromMap(Map<String, dynamic> map) {
    return InstanceState(
      authed: map['authed'] == null ? null : (map['authed'] as bool).input(),
      dataphin: map['dataphin'] == null ? null : (map['dataphin'] as String).input(),
      dataphinCount: map['dataphinCount'] == null ? null : (map['dataphinCount'] as String).input(),
      instanceNum: map['instanceNum'] == null ? null : (map['instanceNum'] as String).input(),
      logistics: map['logistics'] == null ? null : (map['logistics'] as String).input(),
      modifyType: map['modifyType'] == null ? null : (map['modifyType'] as String).input(),
      odpsSet: map['odpsSet'] == null ? null : (map['odpsSet'] as bool).input(),
      ossBucketSet: map['ossBucketSet'] == null ? null : (map['ossBucketSet'] as bool).input(),
      ossSize: map['ossSize'] == null ? null : (map['ossSize'] as String).input(),
      paymentType: map['paymentType'] == null ? null : (map['paymentType'] as String).input(),
      period: map['period'] == null ? null : (map['period'] as int).input(),
      rdsSet: map['rdsSet'] == null ? null : (map['rdsSet'] as bool).input(),
      remainDays: map['remainDays'] == null ? null : (map['remainDays'] as String).input(),
      renewPeriod: map['renewPeriod'] == null ? null : (map['renewPeriod'] as int).input(),
      renewalStatus: map['renewalStatus'] == null ? null : (map['renewalStatus'] as String).input(),
      sdCbool: map['sdCbool'] == null ? null : (map['sdCbool'] as String).input(),
      sdc: map['sdc'] == null ? null : (map['sdc'] as String).input(),
      sddpVersion: map['sddpVersion'] == null ? null : (map['sddpVersion'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      udCbool: map['udCbool'] == null ? null : (map['udCbool'] as String).input(),
      udc: map['udc'] == null ? null : (map['udc'] as String).input(),
    );
  }
}

