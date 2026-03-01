// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitor_get_management_group_diagnostic_setting_args_doc}
/// Arguments for getManagementGroupDiagnosticSetting.
/// {@endtemplate}
/// {@macro pulumi_monitor_get_management_group_diagnostic_setting_args_doc}
class GetManagementGroupDiagnosticSettingArgs {
  /// The management group id.
  final pulumi.Input<String> managementGroupId;
  /// The name of the diagnostic setting.
  final pulumi.Input<String> name;

  /// Creates a new [GetManagementGroupDiagnosticSettingArgs].
  /// [managementGroupId] The management group id.
  /// [name] The name of the diagnostic setting.
  GetManagementGroupDiagnosticSettingArgs({
    required pulumi.Output<String> managementGroupId,
    required pulumi.Output<String> name,
  }) :
      managementGroupId = pulumi.Input.asInput<String>(managementGroupId),
      name = pulumi.Input.asInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managementGroupId': managementGroupId,
      'name': name,
    };
  }

  factory GetManagementGroupDiagnosticSettingArgs.fromMap(Map<String, dynamic> map) {
    return GetManagementGroupDiagnosticSettingArgs(
      managementGroupId: pulumi.Output.create<String>(map['managementGroupId'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

