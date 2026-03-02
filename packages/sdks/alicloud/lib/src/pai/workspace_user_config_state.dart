// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering WorkspaceUserConfig resources.
class WorkspaceUserConfigState {
  /// The category. Valid values: `DataPrivacyConfig`.
  final pulumi.Input<String>? categoryName;
  /// The key of the configuration.
  final pulumi.Input<String>? configKey;
  /// The value of the configuration.
  final pulumi.Input<String>? configValue;
  /// The scope. Default value: `owner`. Valid values: `owner`, `subUser`.
  final pulumi.Input<String>? scope;

  /// Creates a new [WorkspaceUserConfigState].
  /// [categoryName] The category. Valid values: `DataPrivacyConfig`.
  /// [configKey] The key of the configuration.
  /// [configValue] The value of the configuration.
  /// [scope] The scope. Default value: `owner`. Valid values: `owner`, `subUser`.
  WorkspaceUserConfigState({
    this.categoryName,
    this.configKey,
    this.configValue,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categoryName': ?categoryName,
      'configKey': ?configKey,
      'configValue': ?configValue,
      'scope': ?scope,
    };
  }

  factory WorkspaceUserConfigState.fromMap(Map<String, dynamic> map) {
    return WorkspaceUserConfigState(
      categoryName: map['categoryName'] == null ? null : (map['categoryName'] as String).input(),
      configKey: map['configKey'] == null ? null : (map['configKey'] as String).input(),
      configValue: map['configValue'] == null ? null : (map['configValue'] as String).input(),
      scope: map['scope'] == null ? null : (map['scope'] as String).input(),
    );
  }
}

