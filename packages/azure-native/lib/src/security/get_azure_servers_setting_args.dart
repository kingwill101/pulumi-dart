// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_security_get_azure_servers_setting_args_doc}
/// Arguments for getAzureServersSetting.
/// {@endtemplate}
/// {@macro pulumi_security_get_azure_servers_setting_args_doc}
class GetAzureServersSettingArgs {
  /// The kind of the server vulnerability assessments setting
  final pulumi.Input<String> settingKind;

  /// Creates a new [GetAzureServersSettingArgs].
  /// [settingKind] The kind of the server vulnerability assessments setting
  GetAzureServersSettingArgs({
    required String settingKind,
  }) :
      settingKind = pulumi.Input.asInput<String>(settingKind);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'settingKind': settingKind,
    };
  }

  factory GetAzureServersSettingArgs.fromMap(Map<String, dynamic> map) {
    return GetAzureServersSettingArgs(
      settingKind: map['settingKind'] as String,
    );
  }
}

