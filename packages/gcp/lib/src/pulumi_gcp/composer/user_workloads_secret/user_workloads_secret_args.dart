// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for UserWorkloadsSecret.
class UserWorkloadsSecretArgs {
  /// A map of the secret data.
  final Input<Map<String, String>>? data;

  /// Environment where the Kubernetes Secret will be stored and used.
  final Input<String> environment;

  /// Name of the Kubernetes Secret.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The location or Compute Engine region for the environment.
  final Input<String>? region;

  UserWorkloadsSecretArgs({
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

  factory UserWorkloadsSecretArgs.fromMap(Map<String, dynamic> map) {
    return UserWorkloadsSecretArgs(
      data: Input.asOptionalInput<Map<String, String>>(map['data']),
      environment: Input.asInput<String>(map['environment']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
