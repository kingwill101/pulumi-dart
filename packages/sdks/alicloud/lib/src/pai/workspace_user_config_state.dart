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
  const WorkspaceUserConfigState({
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
      categoryName: (() { final guardedValue = map['categoryName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configKey: (() { final guardedValue = map['configKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configValue: (() { final guardedValue = map['configValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

