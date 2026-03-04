// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_elasticity_assurance_elasticity_assurance_args_doc}
/// The set of arguments for ElasticityAssurance.
/// {@endtemplate}
/// {@macro pulumi_ecs_elasticity_assurance_elasticity_assurance_args_doc}
class ElasticityAssuranceArgs {
  /// The total number of times that the elasticity assurance can be applied. Set the value to Unlimited. This value indicates that the elasticity assurance can be applied an unlimited number of times within its effective duration. Default value: Unlimited.
  final pulumi.Input<String>? assuranceTimes;

  /// Specifies whether to enable auto-renewal for the elasticity assurance. Valid values:
  /// - true
  /// - false
  ///
  /// Default value: `false`.
  final pulumi.Input<bool>? autoRenew;

  /// The auto-renewal period. Unit: month. Valid values: 1, 2, 3, 6, 12, 24, and 36.
  /// - Default value when `PeriodUnit` is set to Month: 1.
  /// - Default value when `PeriodUnit` is set to Year: 12.
  ///
  /// &gt; **NOTE:**  If you set `AutoRenew` to true, you must specify this parameter.
  final pulumi.Input<int>? autoRenewPeriod;

  /// Unit of duration. Value range:
  /// - Month: Month
  /// - Year: Year
  ///
  /// Default value: Year
  final pulumi.Input<String>? autoRenewPeriodUnit;

  /// Description of flexible guarantee service.
  final pulumi.Input<String>? description;

  /// The total number of instances for which to reserve the capacity of an instance type. Valid values: 1 to 1000. **NOTE:** From version 1.261.0, `instance_amount` can be modified.
  final pulumi.Input<int> instanceAmount;

  /// Instance type. Currently, only one instance type is supported.
  final pulumi.Input<String> instanceType;

  /// Length of purchase. The unit of duration is determined by the 'period_unit' parameter. Default value: 1.
  /// - When the `period_unit` parameter is set to Month, the valid values are 1, 2, 3, 4, 5, 6, 7, 8, and 9.
  /// - When the `period_unit` parameter is set to Year, the valid values are 1, 2, 3, 4, and 5.
  final pulumi.Input<int>? period;

  /// Duration unit. Value range:-Month: Month-Year: YearDefault value: Year
  final pulumi.Input<String>? periodUnit;

  /// The matching mode of flexible guarantee service. Possible values:-Open: flexible guarantee service for Open mode.-Target: specifies the flexible guarantee service of the mode.
  final pulumi.Input<String>? privatePoolOptionsMatchCriteria;

  /// The name of the flexible protection service.
  final pulumi.Input<String>? privatePoolOptionsName;

  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;

  /// Flexible guarantee service effective time.
  final pulumi.Input<String>? startTime;

  /// The tag key-value pair information bound by the elastic guarantee service.
  final pulumi.Input<Map<String, String>>? tags;

  /// The zone ID of the region to which the elastic Protection Service belongs. Currently, only the creation of flexible protection services in one available area is supported.
  final pulumi.Input<List<String>> zoneIds;

  /// Creates a new [ElasticityAssuranceArgs].
  /// [assuranceTimes] The total number of times that the elasticity assurance can be applied. Set the value to Unlimited. This value indicates that the elasticity assurance can be applied an unlimited number of times within its effective duration. Default value: Unlimited.
  /// [autoRenew] Specifies whether to enable auto-renewal for the elasticity assurance. Valid values:
  /// [autoRenewPeriod] The auto-renewal period. Unit: month. Valid values: 1, 2, 3, 6, 12, 24, and 36.
  /// [autoRenewPeriodUnit] Unit of duration. Value range:
  /// [description] Description of flexible guarantee service.
  /// [instanceAmount] The total number of instances for which to reserve the capacity of an instance type. Valid values: 1 to 1000. **NOTE:** From version 1.261.0, `instance_amount` can be modified.
  /// [instanceType] Instance type. Currently, only one instance type is supported.
  /// [period] Length of purchase. The unit of duration is determined by the 'period_unit' parameter. Default value: 1.
  /// [periodUnit] Duration unit. Value range:-Month: Month-Year: YearDefault value: Year
  /// [privatePoolOptionsMatchCriteria] The matching mode of flexible guarantee service. Possible values:-Open: flexible guarantee service for Open mode.-Target: specifies the flexible guarantee service of the mode.
  /// [privatePoolOptionsName] The name of the flexible protection service.
  /// [resourceGroupId] The ID of the resource group.
  /// [startTime] Flexible guarantee service effective time.
  /// [tags] The tag key-value pair information bound by the elastic guarantee service.
  /// [zoneIds] The zone ID of the region to which the elastic Protection Service belongs. Currently, only the creation of flexible protection services in one available area is supported.
  ElasticityAssuranceArgs({
    this.assuranceTimes,
    this.autoRenew,
    this.autoRenewPeriod,
    this.autoRenewPeriodUnit,
    this.description,
    required this.instanceAmount,
    required this.instanceType,
    this.period,
    this.periodUnit,
    this.privatePoolOptionsMatchCriteria,
    this.privatePoolOptionsName,
    this.resourceGroupId,
    this.startTime,
    this.tags,
    required this.zoneIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assuranceTimes': ?assuranceTimes,
      'autoRenew': ?autoRenew,
      'autoRenewPeriod': ?autoRenewPeriod,
      'autoRenewPeriodUnit': ?autoRenewPeriodUnit,
      'description': ?description,
      'instanceAmount': instanceAmount,
      'instanceType': instanceType,
      'period': ?period,
      'periodUnit': ?periodUnit,
      'privatePoolOptionsMatchCriteria': ?privatePoolOptionsMatchCriteria,
      'privatePoolOptionsName': ?privatePoolOptionsName,
      'resourceGroupId': ?resourceGroupId,
      'startTime': ?startTime,
      'tags': ?tags,
      'zoneIds': zoneIds,
    };
  }

  factory ElasticityAssuranceArgs.fromMap(Map<String, dynamic> map) {
    return ElasticityAssuranceArgs(
      assuranceTimes: (() {
        final guardedValue = map['assuranceTimes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      autoRenew: (() {
        final guardedValue = map['autoRenew'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      autoRenewPeriod: (() {
        final guardedValue = map['autoRenewPeriod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      autoRenewPeriodUnit: (() {
        final guardedValue = map['autoRenewPeriodUnit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceAmount: pulumi.Input.fromValue(map['instanceAmount'] as int),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      period: (() {
        final guardedValue = map['period'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      periodUnit: (() {
        final guardedValue = map['periodUnit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privatePoolOptionsMatchCriteria: (() {
        final guardedValue = map['privatePoolOptionsMatchCriteria'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privatePoolOptionsName: (() {
        final guardedValue = map['privatePoolOptionsName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      startTime: (() {
        final guardedValue = map['startTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      zoneIds: pulumi.Input.fromValue((map['zoneIds'] as List).cast<String>()),
    );
  }
}
