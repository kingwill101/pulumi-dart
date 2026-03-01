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
    pulumi.Output<String>? categoryName,
    pulumi.Output<String>? configKey,
    pulumi.Output<String>? configValue,
    pulumi.Output<String>? scope,
  }) :
      categoryName = pulumi.Input.asOptionalInput<String>(categoryName),
      configKey = pulumi.Input.asOptionalInput<String>(configKey),
      configValue = pulumi.Input.asOptionalInput<String>(configValue),
      scope = pulumi.Input.asOptionalInput<String>(scope);

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
      categoryName: map['categoryName'] == null ? null : pulumi.Output.create<String>(map['categoryName'] as String),
      configKey: map['configKey'] == null ? null : pulumi.Output.create<String>(map['configKey'] as String),
      configValue: map['configValue'] == null ? null : pulumi.Output.create<String>(map['configValue'] as String),
      scope: map['scope'] == null ? null : pulumi.Output.create<String>(map['scope'] as String),
    );
  }
}

