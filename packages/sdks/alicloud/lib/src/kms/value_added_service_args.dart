// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kms_value_added_service_value_added_service_args_doc}
/// The set of arguments for ValueAddedService.
/// {@endtemplate}
/// {@macro pulumi_kms_value_added_service_value_added_service_args_doc}
class ValueAddedServiceArgs {
  /// The payment type of the resource
  final pulumi.Input<String> paymentType;
  final pulumi.Input<int>? period;
  /// Automatic renewal period, in years.
  ///
  /// > **NOTE:**  When setting `RenewalStatus` to `AutoRenewal`, it must be set.
  final pulumi.Input<int>? renewPeriod;
  /// The renewal status of the specified instance. Valid values:
  ///
  /// - AutoRenewal: The instance is automatically renewed.
  /// - ManualRenewal: The instance is manually renewed.
  /// - NotRenewal: The instance is not renewed.
  final pulumi.Input<String>? renewStatus;
  /// value added service type, Instance Backup 1 default key rotation 2 Expert service 3
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? valueAddedService;

  /// Creates a new [ValueAddedServiceArgs].
  /// [paymentType] The payment type of the resource
  /// [period] Optional.
  /// [renewPeriod] Automatic renewal period, in years.
  /// [renewStatus] The renewal status of the specified instance. Valid values:
  /// [valueAddedService] value added service type, Instance Backup 1 default key rotation 2 Expert service 3
  ValueAddedServiceArgs({
    required this.paymentType,
    this.period,
    this.renewPeriod,
    this.renewStatus,
    this.valueAddedService,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'paymentType': paymentType,
      'period': ?period,
      'renewPeriod': ?renewPeriod,
      'renewStatus': ?renewStatus,
      'valueAddedService': ?valueAddedService,
    };
  }

  factory ValueAddedServiceArgs.fromMap(Map<String, dynamic> map) {
    return ValueAddedServiceArgs(
      paymentType: (map['paymentType'] as String).input(),
      period: map['period'] == null ? null : (map['period'] as int).input(),
      renewPeriod: map['renewPeriod'] == null ? null : (map['renewPeriod'] as int).input(),
      renewStatus: map['renewStatus'] == null ? null : (map['renewStatus'] as String).input(),
      valueAddedService: map['valueAddedService'] == null ? null : (map['valueAddedService'] as String).input(),
    );
  }
}

