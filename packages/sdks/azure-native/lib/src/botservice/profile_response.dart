// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nsp_access_rule_response.dart';

/// Information about profile
class ProfileResponse {
  /// List of Access Rules
  final pulumi.Input<List<NspAccessRuleResponse>>? accessRules;
  /// Current access rules version
  final pulumi.Input<double>? accessRulesVersion;
  /// Current diagnostic settings version
  final pulumi.Input<double>? diagnosticSettingsVersion;
  /// List of log categories
  final pulumi.Input<List<String>> enabledLogCategories;
  /// Name of the profile
  final pulumi.Input<String>? name;

  /// Creates a new [ProfileResponse].
  /// [accessRules] List of Access Rules
  /// [accessRulesVersion] Current access rules version
  /// [diagnosticSettingsVersion] Current diagnostic settings version
  /// [enabledLogCategories] List of log categories
  /// [name] Name of the profile
  const ProfileResponse({
    this.accessRules,
    this.accessRulesVersion,
    this.diagnosticSettingsVersion,
    required this.enabledLogCategories,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessRules': ?pulumi.Input.mapOptionalInputValue<List<NspAccessRuleResponse>, List<Map<String, dynamic>>>(accessRules, (value) => pulumi.Input.encodeList<NspAccessRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'accessRulesVersion': ?accessRulesVersion,
      'diagnosticSettingsVersion': ?diagnosticSettingsVersion,
      'enabledLogCategories': enabledLogCategories,
      'name': ?name,
    };
  }

  factory ProfileResponse.fromMap(Map<String, dynamic> map) {
    return ProfileResponse(
      accessRules: (() { final guardedValue = map['accessRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NspAccessRuleResponse>(guardedValue, (value) => NspAccessRuleResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      accessRulesVersion: (() { final guardedValue = map['accessRulesVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      diagnosticSettingsVersion: (() { final guardedValue = map['diagnosticSettingsVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      enabledLogCategories: pulumi.Input.fromValue((map['enabledLogCategories'] as List).cast<String>()),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

