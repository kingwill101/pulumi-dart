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
    required pulumi.Output<String> paymentType,
    pulumi.Output<int>? period,
    pulumi.Output<int>? renewPeriod,
    pulumi.Output<String>? renewStatus,
    pulumi.Output<String>? valueAddedService,
  }) :
      paymentType = pulumi.Input.asInput<String>(paymentType),
      period = pulumi.Input.asOptionalInput<int>(period),
      renewPeriod = pulumi.Input.asOptionalInput<int>(renewPeriod),
      renewStatus = pulumi.Input.asOptionalInput<String>(renewStatus),
      valueAddedService = pulumi.Input.asOptionalInput<String>(valueAddedService);

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
      paymentType: pulumi.Output.create<String>(map['paymentType'] as String),
      period: map['period'] == null ? null : pulumi.Output.create<int>(map['period'] as int),
      renewPeriod: map['renewPeriod'] == null ? null : pulumi.Output.create<int>(map['renewPeriod'] as int),
      renewStatus: map['renewStatus'] == null ? null : pulumi.Output.create<String>(map['renewStatus'] as String),
      valueAddedService: map['valueAddedService'] == null ? null : pulumi.Output.create<String>(map['valueAddedService'] as String),
    );
  }
}

