// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ValueAddedService resources.
class ValueAddedServiceState {
  /// The creation time of the resource
  final pulumi.Input<String>? createTime;
  /// The payment type of the resource
  final pulumi.Input<String>? paymentType;
  final pulumi.Input<int>? period;
  /// The region ID of the resource
  final pulumi.Input<String>? regionId;
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
  /// The status of the resource
  final pulumi.Input<String>? status;
  /// value added service type, Instance Backup 1 default key rotation 2 Expert service 3
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? valueAddedService;

  /// Creates a new [ValueAddedServiceState].
  /// [createTime] The creation time of the resource
  /// [paymentType] The payment type of the resource
  /// [period] Optional.
  /// [regionId] The region ID of the resource
  /// [renewPeriod] Automatic renewal period, in years.
  /// [renewStatus] The renewal status of the specified instance. Valid values:
  /// [status] The status of the resource
  /// [valueAddedService] value added service type, Instance Backup 1 default key rotation 2 Expert service 3
  ValueAddedServiceState({
    this.createTime,
    this.paymentType,
    this.period,
    this.regionId,
    this.renewPeriod,
    this.renewStatus,
    this.status,
    this.valueAddedService,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'paymentType': ?paymentType,
      'period': ?period,
      'regionId': ?regionId,
      'renewPeriod': ?renewPeriod,
      'renewStatus': ?renewStatus,
      'status': ?status,
      'valueAddedService': ?valueAddedService,
    };
  }

  factory ValueAddedServiceState.fromMap(Map<String, dynamic> map) {
    return ValueAddedServiceState(
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      paymentType: map['paymentType'] == null ? null : (map['paymentType'] as String).input(),
      period: map['period'] == null ? null : (map['period'] as int).input(),
      regionId: map['regionId'] == null ? null : (map['regionId'] as String).input(),
      renewPeriod: map['renewPeriod'] == null ? null : (map['renewPeriod'] as int).input(),
      renewStatus: map['renewStatus'] == null ? null : (map['renewStatus'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      valueAddedService: map['valueAddedService'] == null ? null : (map['valueAddedService'] as String).input(),
    );
  }
}

