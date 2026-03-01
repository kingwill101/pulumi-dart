// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Instance resources.
class InstanceState {
  /// DNS security level. Valid values: `no`, `basic`, `advanced`.
  final pulumi.Input<String>? dnsSecurity;
  /// Number of domain names bound.
  final pulumi.Input<String>? domainNumbers;
  final pulumi.Input<String>? paymentType;
  /// Creating a pre-paid instance, it must be set, the unit is month, please enter an integer multiple of 12 for annually paid products.
  final pulumi.Input<int>? period;
  /// Automatic renewal period, the unit is month. When setting RenewalStatus to AutoRenewal, it must be set.
  final pulumi.Input<int>? renewPeriod;
  /// Automatic renewal status. Valid values: `AutoRenewal`, `ManualRenewal`, default to `ManualRenewal`.
  final pulumi.Input<String>? renewalStatus;
  /// Paid package version. Valid values: `version_personal`, `version_enterprise_basic`, `version_enterprise_advanced`.
  final pulumi.Input<String>? versionCode;
  /// Paid package version name.
  final pulumi.Input<String>? versionName;

  /// Creates a new [InstanceState].
  /// [dnsSecurity] DNS security level. Valid values: `no`, `basic`, `advanced`.
  /// [domainNumbers] Number of domain names bound.
  /// [paymentType] Optional.
  /// [period] Creating a pre-paid instance, it must be set, the unit is month, please enter an integer multiple of 12 for annually paid products.
  /// [renewPeriod] Automatic renewal period, the unit is month. When setting RenewalStatus to AutoRenewal, it must be set.
  /// [renewalStatus] Automatic renewal status. Valid values: `AutoRenewal`, `ManualRenewal`, default to `ManualRenewal`.
  /// [versionCode] Paid package version. Valid values: `version_personal`, `version_enterprise_basic`, `version_enterprise_advanced`.
  /// [versionName] Paid package version name.
  InstanceState({
    pulumi.Output<String>? dnsSecurity,
    pulumi.Output<String>? domainNumbers,
    pulumi.Output<String>? paymentType,
    pulumi.Output<int>? period,
    pulumi.Output<int>? renewPeriod,
    pulumi.Output<String>? renewalStatus,
    pulumi.Output<String>? versionCode,
    pulumi.Output<String>? versionName,
  }) :
      dnsSecurity = pulumi.Input.asOptionalInput<String>(dnsSecurity),
      domainNumbers = pulumi.Input.asOptionalInput<String>(domainNumbers),
      paymentType = pulumi.Input.asOptionalInput<String>(paymentType),
      period = pulumi.Input.asOptionalInput<int>(period),
      renewPeriod = pulumi.Input.asOptionalInput<int>(renewPeriod),
      renewalStatus = pulumi.Input.asOptionalInput<String>(renewalStatus),
      versionCode = pulumi.Input.asOptionalInput<String>(versionCode),
      versionName = pulumi.Input.asOptionalInput<String>(versionName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsSecurity': ?dnsSecurity,
      'domainNumbers': ?domainNumbers,
      'paymentType': ?paymentType,
      'period': ?period,
      'renewPeriod': ?renewPeriod,
      'renewalStatus': ?renewalStatus,
      'versionCode': ?versionCode,
      'versionName': ?versionName,
    };
  }

  factory InstanceState.fromMap(Map<String, dynamic> map) {
    return InstanceState(
      dnsSecurity: map['dnsSecurity'] == null ? null : pulumi.Output.create<String>(map['dnsSecurity'] as String),
      domainNumbers: map['domainNumbers'] == null ? null : pulumi.Output.create<String>(map['domainNumbers'] as String),
      paymentType: map['paymentType'] == null ? null : pulumi.Output.create<String>(map['paymentType'] as String),
      period: map['period'] == null ? null : pulumi.Output.create<int>(map['period'] as int),
      renewPeriod: map['renewPeriod'] == null ? null : pulumi.Output.create<int>(map['renewPeriod'] as int),
      renewalStatus: map['renewalStatus'] == null ? null : pulumi.Output.create<String>(map['renewalStatus'] as String),
      versionCode: map['versionCode'] == null ? null : pulumi.Output.create<String>(map['versionCode'] as String),
      versionName: map['versionName'] == null ? null : pulumi.Output.create<String>(map['versionName'] as String),
    );
  }
}

