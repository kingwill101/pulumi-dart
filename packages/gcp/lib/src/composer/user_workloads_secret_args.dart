// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_composer_user_workloads_secret_user_workloads_secret_args_doc}
/// The set of arguments for UserWorkloadsSecret.
/// {@endtemplate}
/// {@macro pulumi_composer_user_workloads_secret_user_workloads_secret_args_doc}
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

  /// Creates a new [UserWorkloadsSecretArgs].
  /// [data] A map of the secret data.
  /// [environment] Environment where the Kubernetes Secret will be stored and used.
  /// [name] Name of the Kubernetes Secret.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The location or Compute Engine region for the environment.
  UserWorkloadsSecretArgs({
    Map<String, String>? data,
    required String environment,
    String? name,
    String? project,
    String? region,
  })  : data = pulumi.Input.asOptionalInput<Map<String, String>>(data),
        environment = pulumi.Input.asInput<String>(environment),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        region = pulumi.Input.asOptionalInput<String>(region);

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
      data: map['data'] == null
          ? null
          : (map['data'] as Map).cast<String, String>(),
      environment: map['environment'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
