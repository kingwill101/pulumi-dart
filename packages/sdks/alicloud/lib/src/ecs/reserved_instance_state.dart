// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reserved_instance_operation_lock.dart';

/// Input properties used for looking up and filtering ReservedInstance resources.
class ReservedInstanceState {
  /// Indicates the sharing status of the reserved instance when the AllocationType parameter is set to Shared. Valid values: `allocated`: The reserved instance is allocated to another account. `beAllocated`: The reserved instance is allocated by another account.
  final pulumi.Input<String>? allocationStatus;
  /// The auto-renewal term of the reserved instance. This parameter takes effect only when AutoRenew is set to true. Valid values: 1, 12, 36, and 60. Default value when `period_unit` is set to Month: 1 Default value when `period_unit` is set to Year: 12
  final pulumi.Input<int>? autoRenewPeriod;
  /// The time when the reserved instance was created.
  final pulumi.Input<String>? createTime;
  /// Description of the RI. 2 to 256 English or Chinese characters. It cannot start with `http://` or `https://`.
  final pulumi.Input<String>? description;
  /// The time when the reserved instance expires.
  final pulumi.Input<String>? expiredTime;
  /// Number of instances allocated to an RI (An RI is a coupon that includes one or more allocated instances.).
  final pulumi.Input<int>? instanceAmount;
  /// Instance type of the RI. For more information, see [Instance type families](https://www.alibabacloud.com/help/doc-detail/25378.html).
  final pulumi.Input<String>? instanceType;
  /// Field `name` has been deprecated from provider version 1.194.0. New field `reserved_instance_name` instead.
  final pulumi.Input<String>? name;
  /// Payment type of the RI. Default value: `All Upfront`. Valid values:
  /// - `No Upfront`: No upfront payment.
  /// - `Partial Upfront`: A portion of upfront payment.
  /// - `All Upfront`: Full upfront payment.
  final pulumi.Input<String>? offeringType;
  /// Details about the lock status of the reserved instance.
  final pulumi.Input<List<ReservedInstanceOperationLock>>? operationLocks;
  /// The validity period of the reserved instance. Default value: `1`. **NOTE:** From version 1.183.0, `period` can be set to `5`, when `period_unit` is `Year`.
  /// - When `period_unit` is `Year`, Valid values: `1`, `3`, `5`.
  /// - When `period_unit` is `Month`, Valid values: `1`.
  final pulumi.Input<int>? period;
  /// The unit of the validity period of the reserved instance. Valid value: `Month`, `Year`. Default value: `Year`. **NOTE:** From version 1.183.0, `period_unit` can be set to `Month`.
  final pulumi.Input<String>? periodUnit;
  /// The operating system type of the image used by the instance. Optional values: `Windows`, `Linux`. Default is `Linux`.
  final pulumi.Input<String>? platform;
  /// Automatic renewal status. Valid values: `AutoRenewal`,`Normal`.
  final pulumi.Input<String>? renewalStatus;
  /// Name of the RI. The name must be a string of 2 to 128 characters in length and can contain letters, numbers, colons (:), underscores (_), and hyphens. It must start with a letter. It cannot start with http:// or https://.
  final pulumi.Input<String>? reservedInstanceName;
  /// Resource group ID.
  final pulumi.Input<String>? resourceGroupId;
  /// Scope of the RI. Optional values: `Region`: region-level, `Zone`: zone-level. Default is `Region`.
  final pulumi.Input<String>? scope;
  /// The time when the reserved instance took effect.
  final pulumi.Input<String>? startTime;
  /// The status of the reserved instance.
  final pulumi.Input<String>? status;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// ID of the zone to which the RI belongs. When Scope is set to Zone, this parameter is required. For information about the zone list, see [DescribeZones](https://www.alibabacloud.com/help/doc-detail/25610.html).
  final pulumi.Input<String>? zoneId;

  /// Creates a new [ReservedInstanceState].
  /// [allocationStatus] Indicates the sharing status of the reserved instance when the AllocationType parameter is set to Shared. Valid values: `allocated`: The reserved instance is allocated to another account. `beAllocated`: The reserved instance is allocated by another account.
  /// [autoRenewPeriod] The auto-renewal term of the reserved instance. This parameter takes effect only when AutoRenew is set to true. Valid values: 1, 12, 36, and 60. Default value when `period_unit` is set to Month: 1 Default value when `period_unit` is set to Year: 12
  /// [createTime] The time when the reserved instance was created.
  /// [description] Description of the RI. 2 to 256 English or Chinese characters. It cannot start with `http://` or `https://`.
  /// [expiredTime] The time when the reserved instance expires.
  /// [instanceAmount] Number of instances allocated to an RI (An RI is a coupon that includes one or more allocated instances.).
  /// [instanceType] Instance type of the RI. For more information, see [Instance type families](https://www.alibabacloud.com/help/doc-detail/25378.html).
  /// [name] Field `name` has been deprecated from provider version 1.194.0. New field `reserved_instance_name` instead.
  /// [offeringType] Payment type of the RI. Default value: `All Upfront`. Valid values:
  /// [operationLocks] Details about the lock status of the reserved instance.
  /// [period] The validity period of the reserved instance. Default value: `1`. **NOTE:** From version 1.183.0, `period` can be set to `5`, when `period_unit` is `Year`.
  /// [periodUnit] The unit of the validity period of the reserved instance. Valid value: `Month`, `Year`. Default value: `Year`. **NOTE:** From version 1.183.0, `period_unit` can be set to `Month`.
  /// [platform] The operating system type of the image used by the instance. Optional values: `Windows`, `Linux`. Default is `Linux`.
  /// [renewalStatus] Automatic renewal status. Valid values: `AutoRenewal`,`Normal`.
  /// [reservedInstanceName] Name of the RI. The name must be a string of 2 to 128 characters in length and can contain letters, numbers, colons (:), underscores (_), and hyphens. It must start with a letter. It cannot start with http:// or https://.
  /// [resourceGroupId] Resource group ID.
  /// [scope] Scope of the RI. Optional values: `Region`: region-level, `Zone`: zone-level. Default is `Region`.
  /// [startTime] The time when the reserved instance took effect.
  /// [status] The status of the reserved instance.
  /// [tags] A mapping of tags to assign to the resource.
  /// [zoneId] ID of the zone to which the RI belongs. When Scope is set to Zone, this parameter is required. For information about the zone list, see [DescribeZones](https://www.alibabacloud.com/help/doc-detail/25610.html).
  ReservedInstanceState({
    this.allocationStatus,
    this.autoRenewPeriod,
    this.createTime,
    this.description,
    this.expiredTime,
    this.instanceAmount,
    this.instanceType,
    this.name,
    this.offeringType,
    this.operationLocks,
    this.period,
    this.periodUnit,
    this.platform,
    this.renewalStatus,
    this.reservedInstanceName,
    this.resourceGroupId,
    this.scope,
    this.startTime,
    this.status,
    this.tags,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationStatus': ?allocationStatus,
      'autoRenewPeriod': ?autoRenewPeriod,
      'createTime': ?createTime,
      'description': ?description,
      'expiredTime': ?expiredTime,
      'instanceAmount': ?instanceAmount,
      'instanceType': ?instanceType,
      'name': ?name,
      'offeringType': ?offeringType,
      'operationLocks': ?pulumi.Input.mapOptionalInputValue<List<ReservedInstanceOperationLock>, List<Map<String, dynamic>>>(operationLocks, (value) => pulumi.Input.encodeList<ReservedInstanceOperationLock, Map<String, dynamic>>(value, (value) => value.toMap())),
      'period': ?period,
      'periodUnit': ?periodUnit,
      'platform': ?platform,
      'renewalStatus': ?renewalStatus,
      'reservedInstanceName': ?reservedInstanceName,
      'resourceGroupId': ?resourceGroupId,
      'scope': ?scope,
      'startTime': ?startTime,
      'status': ?status,
      'tags': ?tags,
      'zoneId': ?zoneId,
    };
  }

  factory ReservedInstanceState.fromMap(Map<String, dynamic> map) {
    return ReservedInstanceState(
      allocationStatus: (() { final guardedValue = map['allocationStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autoRenewPeriod: (() { final guardedValue = map['autoRenewPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expiredTime: (() { final guardedValue = map['expiredTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceAmount: (() { final guardedValue = map['instanceAmount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      offeringType: (() { final guardedValue = map['offeringType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operationLocks: (() { final guardedValue = map['operationLocks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReservedInstanceOperationLock>(guardedValue, (value) => ReservedInstanceOperationLock.fromMap((value as Map).cast<String, dynamic>()))); })(),
      period: (() { final guardedValue = map['period']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      periodUnit: (() { final guardedValue = map['periodUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      platform: (() { final guardedValue = map['platform']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      renewalStatus: (() { final guardedValue = map['renewalStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reservedInstanceName: (() { final guardedValue = map['reservedInstanceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

