// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_security_azure_servers_setting_args_doc}
/// The set of arguments for AzureServersSetting.
/// {@endtemplate}
/// {@macro pulumi_security_azure_servers_setting_args_doc}
class AzureServersSettingArgs {
  /// The kind of the server vulnerability assessments setting
  /// Expected value is 'AzureServersSetting'.
  final pulumi.Input<String> kind;
  /// The selected vulnerability assessments provider on Azure servers in the defined scope.
  final pulumi.Input<String> selectedProvider;
  /// The kind of the server vulnerability assessments setting
  final pulumi.Input<String>? settingKind;

  /// Creates a new [AzureServersSettingArgs].
  /// [kind] The kind of the server vulnerability assessments setting
  /// [selectedProvider] The selected vulnerability assessments provider on Azure servers in the defined scope.
  /// [settingKind] The kind of the server vulnerability assessments setting
  AzureServersSettingArgs({
    required String kind,
    required String selectedProvider,
    String? settingKind,
  }) :
      kind = pulumi.Input.asInput<String>(kind),
      selectedProvider = pulumi.Input.asInput<String>(selectedProvider),
      settingKind = pulumi.Input.asOptionalInput<String>(settingKind);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': kind,
      'selectedProvider': selectedProvider,
      'settingKind': ?settingKind,
    };
  }

  factory AzureServersSettingArgs.fromMap(Map<String, dynamic> map) {
    return AzureServersSettingArgs(
      kind: map['kind'] as String,
      selectedProvider: map['selectedProvider'] as String,
      settingKind: map['settingKind'] == null ? null : map['settingKind'] as String,
    );
  }
}

