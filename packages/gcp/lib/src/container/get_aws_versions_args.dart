// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_container_get_aws_versions_get_aws_versions_args_doc}
/// Arguments for getAwsVersions.
/// {@endtemplate}
/// {@macro pulumi_container_get_aws_versions_get_aws_versions_args_doc}
class GetAwsVersionsArgs {
  /// The location to list versions for.
  final pulumi.Input<String>? location;

  /// ID of the project to list available cluster versions for. Should match the project the cluster will be deployed to.
  /// Defaults to the project that the provider is authenticated with.
  final pulumi.Input<String>? project;

  /// Creates a new [GetAwsVersionsArgs].
  /// [location] The location to list versions for.
  /// [project] ID of the project to list available cluster versions for. Should match the project the cluster will be deployed to.
  GetAwsVersionsArgs({String? location, String? project})
    : location = pulumi.Input.asOptionalInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'location': ?location, 'project': ?project};
  }

  factory GetAwsVersionsArgs.fromMap(Map<String, dynamic> map) {
    return GetAwsVersionsArgs(
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
