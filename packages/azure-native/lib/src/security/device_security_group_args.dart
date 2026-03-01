// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allowlist_custom_alert_rule.dart';
import 'denylist_custom_alert_rule.dart';
import 'threshold_custom_alert_rule.dart';
import 'time_window_custom_alert_rule.dart';

/// {@template pulumi_security_device_security_group_args_doc}
/// The set of arguments for DeviceSecurityGroup.
/// {@endtemplate}
/// {@macro pulumi_security_device_security_group_args_doc}
class DeviceSecurityGroupArgs {
  /// The allow-list custom alert rules.
  final pulumi.Input<List<AllowlistCustomAlertRule>>? allowlistRules;
  /// The deny-list custom alert rules.
  final pulumi.Input<List<DenylistCustomAlertRule>>? denylistRules;
  /// The name of the device security group. Note that the name of the device security group is case insensitive.
  final pulumi.Input<String>? deviceSecurityGroupName;
  /// The identifier of the resource.
  final pulumi.Input<String> resourceId;
  /// The list of custom alert threshold rules.
  final pulumi.Input<List<ThresholdCustomAlertRule>>? thresholdRules;
  /// The list of custom alert time-window rules.
  final pulumi.Input<List<TimeWindowCustomAlertRule>>? timeWindowRules;

  /// Creates a new [DeviceSecurityGroupArgs].
  /// [allowlistRules] The allow-list custom alert rules.
  /// [denylistRules] The deny-list custom alert rules.
  /// [deviceSecurityGroupName] The name of the device security group. Note that the name of the device security group is case insensitive.
  /// [resourceId] The identifier of the resource.
  /// [thresholdRules] The list of custom alert threshold rules.
  /// [timeWindowRules] The list of custom alert time-window rules.
  DeviceSecurityGroupArgs({
    List<AllowlistCustomAlertRule>? allowlistRules,
    List<DenylistCustomAlertRule>? denylistRules,
    String? deviceSecurityGroupName,
    required String resourceId,
    List<ThresholdCustomAlertRule>? thresholdRules,
    List<TimeWindowCustomAlertRule>? timeWindowRules,
  }) :
      allowlistRules = pulumi.Input.asOptionalInput<List<AllowlistCustomAlertRule>>(allowlistRules),
      denylistRules = pulumi.Input.asOptionalInput<List<DenylistCustomAlertRule>>(denylistRules),
      deviceSecurityGroupName = pulumi.Input.asOptionalInput<String>(deviceSecurityGroupName),
      resourceId = pulumi.Input.asInput<String>(resourceId),
      thresholdRules = pulumi.Input.asOptionalInput<List<ThresholdCustomAlertRule>>(thresholdRules),
      timeWindowRules = pulumi.Input.asOptionalInput<List<TimeWindowCustomAlertRule>>(timeWindowRules);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowlistRules': ?pulumi.Input.mapOptionalInputValue<List<AllowlistCustomAlertRule>, List<Map<String, dynamic>>>(allowlistRules, (value) => pulumi.Input.encodeList<AllowlistCustomAlertRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'denylistRules': ?pulumi.Input.mapOptionalInputValue<List<DenylistCustomAlertRule>, List<Map<String, dynamic>>>(denylistRules, (value) => pulumi.Input.encodeList<DenylistCustomAlertRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deviceSecurityGroupName': ?deviceSecurityGroupName,
      'resourceId': resourceId,
      'thresholdRules': ?pulumi.Input.mapOptionalInputValue<List<ThresholdCustomAlertRule>, List<Map<String, dynamic>>>(thresholdRules, (value) => pulumi.Input.encodeList<ThresholdCustomAlertRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeWindowRules': ?pulumi.Input.mapOptionalInputValue<List<TimeWindowCustomAlertRule>, List<Map<String, dynamic>>>(timeWindowRules, (value) => pulumi.Input.encodeList<TimeWindowCustomAlertRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DeviceSecurityGroupArgs.fromMap(Map<String, dynamic> map) {
    return DeviceSecurityGroupArgs(
      allowlistRules: map['allowlistRules'] == null ? null : pulumi.Input.decodeList<AllowlistCustomAlertRule>(map['allowlistRules'], (value) => AllowlistCustomAlertRule.fromMap((value as Map).cast<String, dynamic>())),
      denylistRules: map['denylistRules'] == null ? null : pulumi.Input.decodeList<DenylistCustomAlertRule>(map['denylistRules'], (value) => DenylistCustomAlertRule.fromMap((value as Map).cast<String, dynamic>())),
      deviceSecurityGroupName: map['deviceSecurityGroupName'] == null ? null : map['deviceSecurityGroupName'] as String,
      resourceId: map['resourceId'] as String,
      thresholdRules: map['thresholdRules'] == null ? null : pulumi.Input.decodeList<ThresholdCustomAlertRule>(map['thresholdRules'], (value) => ThresholdCustomAlertRule.fromMap((value as Map).cast<String, dynamic>())),
      timeWindowRules: map['timeWindowRules'] == null ? null : pulumi.Input.decodeList<TimeWindowCustomAlertRule>(map['timeWindowRules'], (value) => TimeWindowCustomAlertRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

