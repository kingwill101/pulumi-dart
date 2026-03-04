// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitor_get_subscription_diagnostic_setting_args_doc}
/// Arguments for getSubscriptionDiagnosticSetting.
/// {@endtemplate}
/// {@macro pulumi_monitor_get_subscription_diagnostic_setting_args_doc}
class GetSubscriptionDiagnosticSettingArgs {
  /// The name of the diagnostic setting.
  final pulumi.Input<String> name;

  /// Creates a new [GetSubscriptionDiagnosticSettingArgs].
  /// [name] The name of the diagnostic setting.
  GetSubscriptionDiagnosticSettingArgs({required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory GetSubscriptionDiagnosticSettingArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetSubscriptionDiagnosticSettingArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
