// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitor_get_diagnostic_setting_args_doc}
/// Arguments for getDiagnosticSetting.
/// {@endtemplate}
/// {@macro pulumi_monitor_get_diagnostic_setting_args_doc}
class GetDiagnosticSettingArgs {
  /// The name of the diagnostic setting.
  final pulumi.Input<String> name;
  /// The identifier of the resource.
  final pulumi.Input<String> resourceUri;

  /// Creates a new [GetDiagnosticSettingArgs].
  /// [name] The name of the diagnostic setting.
  /// [resourceUri] The identifier of the resource.
  GetDiagnosticSettingArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceUri,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceUri = pulumi.Input.asInput<String>(resourceUri);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceUri': resourceUri,
    };
  }

  factory GetDiagnosticSettingArgs.fromMap(Map<String, dynamic> map) {
    return GetDiagnosticSettingArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceUri: pulumi.Output.create<String>(map['resourceUri'] as String),
    );
  }
}

