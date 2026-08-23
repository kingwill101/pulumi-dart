// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationAppConfig {
  /// The configuration item to set. Valid values are `opensearchDashboards.dashboardAdmin.users` and `opensearchDashboards.dashboardAdmin.groups`.
  final pulumi.Input<String>? key;
  /// The value assigned to the configuration key, such as an IAM user ARN or group name. Must be between 1 and 4096 characters.
  final pulumi.Input<String>? value;

  /// Creates a new [ApplicationAppConfig].
  /// [key] The configuration item to set. Valid values are `opensearchDashboards.dashboardAdmin.users` and `opensearchDashboards.dashboardAdmin.groups`.
  /// [value] The value assigned to the configuration key, such as an IAM user ARN or group name. Must be between 1 and 4096 characters.
  const ApplicationAppConfig({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory ApplicationAppConfig.fromMap(Map<String, dynamic> map) {
    return ApplicationAppConfig(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
