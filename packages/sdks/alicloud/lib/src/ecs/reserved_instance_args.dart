// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_reserved_instance_reserved_instance_args_doc}
/// The set of arguments for ReservedInstance.
/// {@endtemplate}
/// {@macro pulumi_ecs_reserved_instance_reserved_instance_args_doc}
class ReservedInstanceArgs {
  /// The auto-renewal term of the reserved instance. This parameter takes effect only when AutoRenew is set to true. Valid values: 1, 12, 36, and 60. Default value when `period_unit` is set to Month: 1 Default value when `period_unit` is set to Year: 12
  final pulumi.Input<int>? autoRenewPeriod;

  /// Description of the RI. 2 to 256 English or Chinese characters. It cannot start with `http://` or `https://`.
  final pulumi.Input<String>? description;

  /// Number of instances allocated to an RI (An RI is a coupon that includes one or more allocated instances.).
  final pulumi.Input<int>? instanceAmount;

  /// Instance type of the RI. For more information, see [Instance type families](https://www.alibabacloud.com/help/doc-detail/25378.html).
  final pulumi.Input<String> instanceType;

  /// Field `name` has been deprecated from provider version 1.194.0. New field `reserved_instance_name` instead.
  final pulumi.Input<String>? name;

  /// Payment type of the RI. Default value: `All Upfront`. Valid values:
  /// - `No Upfront`: No upfront payment.
  /// - `Partial Upfront`: A portion of upfront payment.
  /// - `All Upfront`: Full upfront payment.
  final pulumi.Input<String>? offeringType;

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

  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// ID of the zone to which the RI belongs. When Scope is set to Zone, this parameter is required. For information about the zone list, see [DescribeZones](https://www.alibabacloud.com/help/doc-detail/25610.html).
  final pulumi.Input<String>? zoneId;

  /// Creates a new [ReservedInstanceArgs].
  /// [autoRenewPeriod] The auto-renewal term of the reserved instance. This parameter takes effect only when AutoRenew is set to true. Valid values: 1, 12, 36, and 60. Default value when `period_unit` is set to Month: 1 Default value when `period_unit` is set to Year: 12
  /// [description] Description of the RI. 2 to 256 English or Chinese characters. It cannot start with `http://` or `https://`.
  /// [instanceAmount] Number of instances allocated to an RI (An RI is a coupon that includes one or more allocated instances.).
  /// [instanceType] Instance type of the RI. For more information, see [Instance type families](https://www.alibabacloud.com/help/doc-detail/25378.html).
  /// [name] Field `name` has been deprecated from provider version 1.194.0. New field `reserved_instance_name` instead.
  /// [offeringType] Payment type of the RI. Default value: `All Upfront`. Valid values:
  /// [period] The validity period of the reserved instance. Default value: `1`. **NOTE:** From version 1.183.0, `period` can be set to `5`, when `period_unit` is `Year`.
  /// [periodUnit] The unit of the validity period of the reserved instance. Valid value: `Month`, `Year`. Default value: `Year`. **NOTE:** From version 1.183.0, `period_unit` can be set to `Month`.
  /// [platform] The operating system type of the image used by the instance. Optional values: `Windows`, `Linux`. Default is `Linux`.
  /// [renewalStatus] Automatic renewal status. Valid values: `AutoRenewal`,`Normal`.
  /// [reservedInstanceName] Name of the RI. The name must be a string of 2 to 128 characters in length and can contain letters, numbers, colons (:), underscores (_), and hyphens. It must start with a letter. It cannot start with http:// or https://.
  /// [resourceGroupId] Resource group ID.
  /// [scope] Scope of the RI. Optional values: `Region`: region-level, `Zone`: zone-level. Default is `Region`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [zoneId] ID of the zone to which the RI belongs. When Scope is set to Zone, this parameter is required. For information about the zone list, see [DescribeZones](https://www.alibabacloud.com/help/doc-detail/25610.html).
  ReservedInstanceArgs({
    this.autoRenewPeriod,
    this.description,
    this.instanceAmount,
    required this.instanceType,
    this.name,
    this.offeringType,
    this.period,
    this.periodUnit,
    this.platform,
    this.renewalStatus,
    this.reservedInstanceName,
    this.resourceGroupId,
    this.scope,
    this.tags,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRenewPeriod': ?autoRenewPeriod,
      'description': ?description,
      'instanceAmount': ?instanceAmount,
      'instanceType': instanceType,
      'name': ?name,
      'offeringType': ?offeringType,
      'period': ?period,
      'periodUnit': ?periodUnit,
      'platform': ?platform,
      'renewalStatus': ?renewalStatus,
      'reservedInstanceName': ?reservedInstanceName,
      'resourceGroupId': ?resourceGroupId,
      'scope': ?scope,
      'tags': ?tags,
      'zoneId': ?zoneId,
    };
  }

  factory ReservedInstanceArgs.fromMap(Map<String, dynamic> map) {
    return ReservedInstanceArgs(
      autoRenewPeriod: (() {
        final guardedValue = map['autoRenewPeriod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceAmount: (() {
        final guardedValue = map['instanceAmount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      offeringType: (() {
        final guardedValue = map['offeringType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
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
      platform: (() {
        final guardedValue = map['platform'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      renewalStatus: (() {
        final guardedValue = map['renewalStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      reservedInstanceName: (() {
        final guardedValue = map['reservedInstanceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scope: (() {
        final guardedValue = map['scope'];
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
      zoneId: (() {
        final guardedValue = map['zoneId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
