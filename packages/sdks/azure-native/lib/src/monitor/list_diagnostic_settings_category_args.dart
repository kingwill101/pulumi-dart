// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitor_list_diagnostic_settings_category_args_doc}
/// Arguments for listDiagnosticSettingsCategory.
/// {@endtemplate}
/// {@macro pulumi_monitor_list_diagnostic_settings_category_args_doc}
class ListDiagnosticSettingsCategoryArgs {
  /// The identifier of the resource.
  final pulumi.Input<String> resourceUri;

  /// Creates a new [ListDiagnosticSettingsCategoryArgs].
  /// [resourceUri] The identifier of the resource.
  ListDiagnosticSettingsCategoryArgs({required this.resourceUri});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'resourceUri': resourceUri};
  }

  factory ListDiagnosticSettingsCategoryArgs.fromMap(Map<String, dynamic> map) {
    return ListDiagnosticSettingsCategoryArgs(
      resourceUri: pulumi.Input.fromValue(map['resourceUri'] as String),
    );
  }
}
