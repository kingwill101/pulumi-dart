// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_property_mapping_response.dart';

/// Settings for how to dynamically override alert static details
class AlertDetailsOverrideResponse {
  /// the format containing columns name(s) to override the alert description
  final String? alertDescriptionFormat;
  /// the format containing columns name(s) to override the alert name
  final String? alertDisplayNameFormat;
  /// List of additional dynamic properties to override
  final List<AlertPropertyMappingResponse>? alertDynamicProperties;
  /// the column name to take the alert severity from
  final String? alertSeverityColumnName;
  /// the column name to take the alert tactics from
  final String? alertTacticsColumnName;

  /// Creates a new [AlertDetailsOverrideResponse].
  /// [alertDescriptionFormat] the format containing columns name(s) to override the alert description
  /// [alertDisplayNameFormat] the format containing columns name(s) to override the alert name
  /// [alertDynamicProperties] List of additional dynamic properties to override
  /// [alertSeverityColumnName] the column name to take the alert severity from
  /// [alertTacticsColumnName] the column name to take the alert tactics from
  AlertDetailsOverrideResponse({
    this.alertDescriptionFormat,
    this.alertDisplayNameFormat,
    this.alertDynamicProperties,
    this.alertSeverityColumnName,
    this.alertTacticsColumnName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertDescriptionFormat': ?alertDescriptionFormat,
      'alertDisplayNameFormat': ?alertDisplayNameFormat,
      'alertDynamicProperties': ?alertDynamicProperties == null ? null : pulumi.Input.encodeList<AlertPropertyMappingResponse, Map<String, dynamic>>(alertDynamicProperties!, (value) => value.toMap()),
      'alertSeverityColumnName': ?alertSeverityColumnName,
      'alertTacticsColumnName': ?alertTacticsColumnName,
    };
  }

  factory AlertDetailsOverrideResponse.fromMap(Map<String, dynamic> map) {
    return AlertDetailsOverrideResponse(
      alertDescriptionFormat: map['alertDescriptionFormat'] == null ? null : map['alertDescriptionFormat'] as String,
      alertDisplayNameFormat: map['alertDisplayNameFormat'] == null ? null : map['alertDisplayNameFormat'] as String,
      alertDynamicProperties: map['alertDynamicProperties'] == null ? null : pulumi.Input.decodeList<AlertPropertyMappingResponse>(map['alertDynamicProperties'], (value) => AlertPropertyMappingResponse.fromMap((value as Map).cast<String, dynamic>())),
      alertSeverityColumnName: map['alertSeverityColumnName'] == null ? null : map['alertSeverityColumnName'] as String,
      alertTacticsColumnName: map['alertTacticsColumnName'] == null ? null : map['alertTacticsColumnName'] as String,
    );
  }
}

