// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EdgeKubernetesLogConfig {
  /// Log Service project name, cluster logs will output to this project.
  final pulumi.Input<String>? project;
  /// Type of collecting logs, only `SLS` are supported currently.
  final pulumi.Input<String> type;

  /// Creates a new [EdgeKubernetesLogConfig].
  /// [project] Log Service project name, cluster logs will output to this project.
  /// [type] Type of collecting logs, only `SLS` are supported currently.
  EdgeKubernetesLogConfig({
    this.project,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'type': type,
    };
  }

  factory EdgeKubernetesLogConfig.fromMap(Map<String, dynamic> map) {
    return EdgeKubernetesLogConfig(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

