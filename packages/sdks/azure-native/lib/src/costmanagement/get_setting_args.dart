// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_costmanagement_get_setting_args_doc}
/// Arguments for getSetting.
/// {@endtemplate}
/// {@macro pulumi_costmanagement_get_setting_args_doc}
class GetSettingArgs {
  /// Name of the setting. Allowed values: myscope
  final pulumi.Input<String> settingName;

  /// Creates a new [GetSettingArgs].
  /// [settingName] Name of the setting. Allowed values: myscope
  const GetSettingArgs({
    required this.settingName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'settingName': settingName,
    };
  }

  factory GetSettingArgs.fromMap(Map<String, dynamic> map) {
    return GetSettingArgs(
      settingName: pulumi.Input.fromValue(map['settingName'] as String),
    );
  }
}

