// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServicesServiceLogConfig {
  /// Log Service store name.
  final pulumi.Input<String> logstore;

  /// Log Service project name.
  final pulumi.Input<String> project;

  /// Creates a new [GetServicesServiceLogConfig].
  /// [logstore] Log Service store name.
  /// [project] Log Service project name.
  GetServicesServiceLogConfig({required this.logstore, required this.project});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'logstore': logstore, 'project': project};
  }

  factory GetServicesServiceLogConfig.fromMap(Map<String, dynamic> map) {
    return GetServicesServiceLogConfig(
      logstore: pulumi.Input.fromValue(map['logstore'] as String),
      project: pulumi.Input.fromValue(map['project'] as String),
    );
  }
}
