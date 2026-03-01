// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_rule_nrt_alert_details_override_dynamic_property.dart';

class AlertRuleNrtAlertDetailsOverride {
  /// The format containing columns name(s) to override the description of this Sentinel Alert Rule.
  final String? descriptionFormat;
  /// The format containing columns name(s) to override the name of this Sentinel Alert Rule.
  final String? displayNameFormat;
  /// A list of `dynamic_property` blocks as defined below.
  final List<AlertRuleNrtAlertDetailsOverrideDynamicProperty>? dynamicProperties;
  /// The column name to take the alert severity from.
  final String? severityColumnName;
  /// The column name to take the alert tactics from.
  final String? tacticsColumnName;

  /// Creates a new [AlertRuleNrtAlertDetailsOverride].
  /// [descriptionFormat] The format containing columns name(s) to override the description of this Sentinel Alert Rule.
  /// [displayNameFormat] The format containing columns name(s) to override the name of this Sentinel Alert Rule.
  /// [dynamicProperties] A list of `dynamic_property` blocks as defined below.
  /// [severityColumnName] The column name to take the alert severity from.
  /// [tacticsColumnName] The column name to take the alert tactics from.
  AlertRuleNrtAlertDetailsOverride({
    this.descriptionFormat,
    this.displayNameFormat,
    this.dynamicProperties,
    this.severityColumnName,
    this.tacticsColumnName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'descriptionFormat': ?descriptionFormat,
      'displayNameFormat': ?displayNameFormat,
      'dynamicProperties': ?dynamicProperties == null ? null : pulumi.Input.encodeList<AlertRuleNrtAlertDetailsOverrideDynamicProperty, Map<String, dynamic>>(dynamicProperties!, (value) => value.toMap()),
      'severityColumnName': ?severityColumnName,
      'tacticsColumnName': ?tacticsColumnName,
    };
  }

  factory AlertRuleNrtAlertDetailsOverride.fromMap(Map<String, dynamic> map) {
    return AlertRuleNrtAlertDetailsOverride(
      descriptionFormat: map['descriptionFormat'] == null ? null : map['descriptionFormat'] as String,
      displayNameFormat: map['displayNameFormat'] == null ? null : map['displayNameFormat'] as String,
      dynamicProperties: map['dynamicProperties'] == null ? null : pulumi.Input.decodeList<AlertRuleNrtAlertDetailsOverrideDynamicProperty>(map['dynamicProperties'], (value) => AlertRuleNrtAlertDetailsOverrideDynamicProperty.fromMap((value as Map).cast<String, dynamic>())),
      severityColumnName: map['severityColumnName'] == null ? null : map['severityColumnName'] as String,
      tacticsColumnName: map['tacticsColumnName'] == null ? null : map['tacticsColumnName'] as String,
    );
  }
}

