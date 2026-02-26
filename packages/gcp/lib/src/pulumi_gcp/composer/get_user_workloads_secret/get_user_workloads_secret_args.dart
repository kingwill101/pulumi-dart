// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getUserWorkloadsSecret.
class GetUserWorkloadsSecretArgs {
  /// Environment where the Secret is stored.
  final Input<String> environment;

  /// Name of the Secret.
  final Input<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The location or Compute Engine region of the environment.
  final Input<String>? region;

  GetUserWorkloadsSecretArgs({
    required this.environment,
    required this.name,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['environment'] = environment;
    map['name'] = name;
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

  factory GetUserWorkloadsSecretArgs.fromMap(Map<String, dynamic> map) {
    return GetUserWorkloadsSecretArgs(
      environment: Input.asInput<String>(map['environment']),
      name: Input.asInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
