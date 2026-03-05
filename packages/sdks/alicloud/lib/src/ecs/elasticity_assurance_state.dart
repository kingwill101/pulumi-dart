// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ElasticityAssurance resources.
class ElasticityAssuranceState {
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
  /// The first ID of the resource
  final pulumi.Input<String>? elasticityAssuranceId;
  /// Flexible guarantee service failure time.
  final pulumi.Input<String>? endTime;
  /// The total number of instances for which to reserve the capacity of an instance type. Valid values: 1 to 1000. **NOTE:** From version 1.261.0, `instance_amount` can be modified.
  final pulumi.Input<int>? instanceAmount;
  /// The billing method of the instance. Possible value: PostPaid. Currently, only pay-as-you-go is supported.
  final pulumi.Input<String>? instanceChargeType;
  /// Instance type. Currently, only one instance type is supported.
  final pulumi.Input<String>? instanceType;
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
  /// (Available since v1.261.0) The region ID of the elasticity assurance.
  final pulumi.Input<String>? regionId;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// Flexible guarantee service effective time.
  final pulumi.Input<String>? startTime;
  /// Flexible guarantee effective way. Possible values:-Now: Effective immediately.-Later: the specified time takes effect.
  final pulumi.Input<String>? startTimeType;
  /// The status of flexible guarantee services. Possible values:-Preparing: in preparation.-Prepared: to take effect.-Active: in effect.-Released: Released.
  final pulumi.Input<String>? status;
  /// The tag key-value pair information bound by the elastic guarantee service.
  final pulumi.Input<Map<String, String>>? tags;
  /// This parameter is not yet available.
  final pulumi.Input<int>? usedAssuranceTimes;
  /// The zone ID of the region to which the elastic Protection Service belongs. Currently, only the creation of flexible protection services in one available area is supported.
  final pulumi.Input<List<String>>? zoneIds;

  /// Creates a new [ElasticityAssuranceState].
  /// [assuranceTimes] The total number of times that the elasticity assurance can be applied. Set the value to Unlimited. This value indicates that the elasticity assurance can be applied an unlimited number of times within its effective duration. Default value: Unlimited.
  /// [autoRenew] Specifies whether to enable auto-renewal for the elasticity assurance. Valid values:
  /// [autoRenewPeriod] The auto-renewal period. Unit: month. Valid values: 1, 2, 3, 6, 12, 24, and 36.
  /// [autoRenewPeriodUnit] Unit of duration. Value range:
  /// [description] Description of flexible guarantee service.
  /// [elasticityAssuranceId] The first ID of the resource
  /// [endTime] Flexible guarantee service failure time.
  /// [instanceAmount] The total number of instances for which to reserve the capacity of an instance type. Valid values: 1 to 1000. **NOTE:** From version 1.261.0, `instance_amount` can be modified.
  /// [instanceChargeType] The billing method of the instance. Possible value: PostPaid. Currently, only pay-as-you-go is supported.
  /// [instanceType] Instance type. Currently, only one instance type is supported.
  /// [period] Length of purchase. The unit of duration is determined by the 'period_unit' parameter. Default value: 1.
  /// [periodUnit] Duration unit. Value range:-Month: Month-Year: YearDefault value: Year
  /// [privatePoolOptionsMatchCriteria] The matching mode of flexible guarantee service. Possible values:-Open: flexible guarantee service for Open mode.-Target: specifies the flexible guarantee service of the mode.
  /// [privatePoolOptionsName] The name of the flexible protection service.
  /// [regionId] (Available since v1.261.0) The region ID of the elasticity assurance.
  /// [resourceGroupId] The ID of the resource group.
  /// [startTime] Flexible guarantee service effective time.
  /// [startTimeType] Flexible guarantee effective way. Possible values:-Now: Effective immediately.-Later: the specified time takes effect.
  /// [status] The status of flexible guarantee services. Possible values:-Preparing: in preparation.-Prepared: to take effect.-Active: in effect.-Released: Released.
  /// [tags] The tag key-value pair information bound by the elastic guarantee service.
  /// [usedAssuranceTimes] This parameter is not yet available.
  /// [zoneIds] The zone ID of the region to which the elastic Protection Service belongs. Currently, only the creation of flexible protection services in one available area is supported.
  ElasticityAssuranceState({
    this.assuranceTimes,
    this.autoRenew,
    this.autoRenewPeriod,
    this.autoRenewPeriodUnit,
    this.description,
    this.elasticityAssuranceId,
    this.endTime,
    this.instanceAmount,
    this.instanceChargeType,
    this.instanceType,
    this.period,
    this.periodUnit,
    this.privatePoolOptionsMatchCriteria,
    this.privatePoolOptionsName,
    this.regionId,
    this.resourceGroupId,
    this.startTime,
    this.startTimeType,
    this.status,
    this.tags,
    this.usedAssuranceTimes,
    this.zoneIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assuranceTimes': ?assuranceTimes,
      'autoRenew': ?autoRenew,
      'autoRenewPeriod': ?autoRenewPeriod,
      'autoRenewPeriodUnit': ?autoRenewPeriodUnit,
      'description': ?description,
      'elasticityAssuranceId': ?elasticityAssuranceId,
      'endTime': ?endTime,
      'instanceAmount': ?instanceAmount,
      'instanceChargeType': ?instanceChargeType,
      'instanceType': ?instanceType,
      'period': ?period,
      'periodUnit': ?periodUnit,
      'privatePoolOptionsMatchCriteria': ?privatePoolOptionsMatchCriteria,
      'privatePoolOptionsName': ?privatePoolOptionsName,
      'regionId': ?regionId,
      'resourceGroupId': ?resourceGroupId,
      'startTime': ?startTime,
      'startTimeType': ?startTimeType,
      'status': ?status,
      'tags': ?tags,
      'usedAssuranceTimes': ?usedAssuranceTimes,
      'zoneIds': ?zoneIds,
    };
  }

  factory ElasticityAssuranceState.fromMap(Map<String, dynamic> map) {
    return ElasticityAssuranceState(
      assuranceTimes: (() { final guardedValue = map['assuranceTimes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autoRenew: (() { final guardedValue = map['autoRenew']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      autoRenewPeriod: (() { final guardedValue = map['autoRenewPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      autoRenewPeriodUnit: (() { final guardedValue = map['autoRenewPeriodUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      elasticityAssuranceId: (() { final guardedValue = map['elasticityAssuranceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceAmount: (() { final guardedValue = map['instanceAmount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      instanceChargeType: (() { final guardedValue = map['instanceChargeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      period: (() { final guardedValue = map['period']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      periodUnit: (() { final guardedValue = map['periodUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privatePoolOptionsMatchCriteria: (() { final guardedValue = map['privatePoolOptionsMatchCriteria']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privatePoolOptionsName: (() { final guardedValue = map['privatePoolOptionsName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionId: (() { final guardedValue = map['regionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTimeType: (() { final guardedValue = map['startTimeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      usedAssuranceTimes: (() { final guardedValue = map['usedAssuranceTimes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      zoneIds: (() { final guardedValue = map['zoneIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

