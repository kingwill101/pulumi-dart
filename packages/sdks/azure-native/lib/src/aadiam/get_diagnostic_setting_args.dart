// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aadiam_get_diagnostic_setting_args_doc}
/// Arguments for getDiagnosticSetting.
/// {@endtemplate}
/// {@macro pulumi_aadiam_get_diagnostic_setting_args_doc}
class GetDiagnosticSettingArgs {
  /// The name of the diagnostic setting.
  final pulumi.Input<String> name;

  /// Creates a new [GetDiagnosticSettingArgs].
  /// [name] The name of the diagnostic setting.
  GetDiagnosticSettingArgs({
    required pulumi.Output<String> name,
  }) :
      name = pulumi.Input.asInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetDiagnosticSettingArgs.fromMap(Map<String, dynamic> map) {
    return GetDiagnosticSettingArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

