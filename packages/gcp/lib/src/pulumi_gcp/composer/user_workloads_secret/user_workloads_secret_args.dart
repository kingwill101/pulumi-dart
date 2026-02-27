// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for UserWorkloadsSecret.
class UserWorkloadsSecretArgs {
  /// A map of the secret data.
  final pulumi.Input<Map<String, String>>? data;

  /// Environment where the Kubernetes Secret will be stored and used.
  final pulumi.Input<String> environment;

  /// Name of the Kubernetes Secret.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The location or Compute Engine region for the environment.
  final pulumi.Input<String>? region;

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
      data: pulumi.Input.asOptionalInput<Map<String, String>>(map['data']),
      environment: pulumi.Input.asInput<String>(map['environment']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
