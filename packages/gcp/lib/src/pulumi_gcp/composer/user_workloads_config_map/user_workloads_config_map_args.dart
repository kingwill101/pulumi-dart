// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for UserWorkloadsConfigMap.
class UserWorkloadsConfigMapArgs {
  /// The "data" field of Kubernetes ConfigMap, organized in key-value pairs.
  /// For details see: https://kubernetes.io/docs/concepts/configuration/configmap/
  final Input<Map<String, String>>? data;

  /// Environment where the Kubernetes ConfigMap will be stored and used.
  final Input<String> environment;

  /// Name of the Kubernetes ConfigMap.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The location or Compute Engine region for the environment.
  final Input<String>? region;

  UserWorkloadsConfigMapArgs({
    this.data,
    required this.environment,
    this.name,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataValue = data;
    if (dataValue != null) {
      map['data'] = dataValue;
    }
    map['environment'] = environment;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory UserWorkloadsConfigMapArgs.fromMap(Map<String, dynamic> map) {
    return UserWorkloadsConfigMapArgs(
      data: Input.asOptionalInput<Map<String, String>>(map['data']),
      environment: Input.asInput<String>(map['environment']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
