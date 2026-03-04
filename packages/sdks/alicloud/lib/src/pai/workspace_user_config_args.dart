// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_pai_workspace_user_config_workspace_user_config_args_doc}
/// The set of arguments for WorkspaceUserConfig.
/// {@endtemplate}
/// {@macro pulumi_pai_workspace_user_config_workspace_user_config_args_doc}
class WorkspaceUserConfigArgs {
  /// The category. Valid values: `DataPrivacyConfig`.
  final pulumi.Input<String> categoryName;

  /// The key of the configuration.
  final pulumi.Input<String> configKey;

  /// The value of the configuration.
  final pulumi.Input<String> configValue;

  /// The scope. Default value: `owner`. Valid values: `owner`, `subUser`.
  final pulumi.Input<String>? scope;

  /// Creates a new [WorkspaceUserConfigArgs].
  /// [categoryName] The category. Valid values: `DataPrivacyConfig`.
  /// [configKey] The key of the configuration.
  /// [configValue] The value of the configuration.
  /// [scope] The scope. Default value: `owner`. Valid values: `owner`, `subUser`.
  WorkspaceUserConfigArgs({
    required this.categoryName,
    required this.configKey,
    required this.configValue,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categoryName': categoryName,
      'configKey': configKey,
      'configValue': configValue,
      'scope': ?scope,
    };
  }

  factory WorkspaceUserConfigArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceUserConfigArgs(
      categoryName: pulumi.Input.fromValue(map['categoryName'] as String),
      configKey: pulumi.Input.fromValue(map['configKey'] as String),
      configValue: pulumi.Input.fromValue(map['configValue'] as String),
      scope: (() {
        final guardedValue = map['scope'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
