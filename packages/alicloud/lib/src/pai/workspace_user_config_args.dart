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
    required String categoryName,
    required String configKey,
    required String configValue,
    String? scope,
  }) :
      categoryName = pulumi.Input.asInput<String>(categoryName),
      configKey = pulumi.Input.asInput<String>(configKey),
      configValue = pulumi.Input.asInput<String>(configValue),
      scope = pulumi.Input.asOptionalInput<String>(scope);

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
      categoryName: map['categoryName'] as String,
      configKey: map['configKey'] as String,
      configValue: map['configValue'] as String,
      scope: map['scope'] == null ? null : map['scope'] as String,
    );
  }
}

