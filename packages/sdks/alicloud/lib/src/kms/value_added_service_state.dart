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
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? paymentType,
    pulumi.Output<int>? period,
    pulumi.Output<String>? regionId,
    pulumi.Output<int>? renewPeriod,
    pulumi.Output<String>? renewStatus,
    pulumi.Output<String>? status,
    pulumi.Output<String>? valueAddedService,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      paymentType = pulumi.Input.asOptionalInput<String>(paymentType),
      period = pulumi.Input.asOptionalInput<int>(period),
      regionId = pulumi.Input.asOptionalInput<String>(regionId),
      renewPeriod = pulumi.Input.asOptionalInput<int>(renewPeriod),
      renewStatus = pulumi.Input.asOptionalInput<String>(renewStatus),
      status = pulumi.Input.asOptionalInput<String>(status),
      valueAddedService = pulumi.Input.asOptionalInput<String>(valueAddedService);

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
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      paymentType: map['paymentType'] == null ? null : pulumi.Output.create<String>(map['paymentType'] as String),
      period: map['period'] == null ? null : pulumi.Output.create<int>(map['period'] as int),
      regionId: map['regionId'] == null ? null : pulumi.Output.create<String>(map['regionId'] as String),
      renewPeriod: map['renewPeriod'] == null ? null : pulumi.Output.create<int>(map['renewPeriod'] as int),
      renewStatus: map['renewStatus'] == null ? null : pulumi.Output.create<String>(map['renewStatus'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      valueAddedService: map['valueAddedService'] == null ? null : pulumi.Output.create<String>(map['valueAddedService'] as String),
    );
  }
}

