// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getRepositoryIamPolicy.
class GetRepositoryIamPolicyArgs {
  /// The name of the repository's location. In addition to specific regions,
  /// special values for multi-region locations are <span pulumi-lang-nodejs="`asia`" pulumi-lang-dotnet="`Asia`" pulumi-lang-go="`asia`" pulumi-lang-python="`asia`" pulumi-lang-yaml="`asia`" pulumi-lang-java="`asia`">`asia`</span>, <span pulumi-lang-nodejs="`europe`" pulumi-lang-dotnet="`Europe`" pulumi-lang-go="`europe`" pulumi-lang-python="`europe`" pulumi-lang-yaml="`europe`" pulumi-lang-java="`europe`">`europe`</span>, and <span pulumi-lang-nodejs="`us`" pulumi-lang-dotnet="`Us`" pulumi-lang-go="`us`" pulumi-lang-python="`us`" pulumi-lang-yaml="`us`" pulumi-lang-java="`us`">`us`</span>.
  /// See [here](https://cloud.google.com/artifact-registry/docs/repositories/repo-locations),
  /// or use the<span pulumi-lang-nodejs="
  /// gcp.artifactregistry.getLocations
  /// " pulumi-lang-dotnet="
  /// gcp.artifactregistry.getLocations
  /// " pulumi-lang-go="
  /// artifactregistry.getLocations
  /// " pulumi-lang-python="
  /// artifactregistry_get_locations
  /// " pulumi-lang-yaml="
  /// gcp.artifactregistry.getLocations
  /// " pulumi-lang-java="
  /// gcp.artifactregistry.getLocations
  /// ">
  /// gcp.artifactregistry.getLocations
  /// </span>data source for possible values. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final Input<String>? location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final Input<String>? project;

  /// Used to find the parent resource to bind the IAM policy to
  final Input<String> repository;

  GetRepositoryIamPolicyArgs({
    this.location,
    this.project,
    required this.repository,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['repository'] = repository;
    return map;
  }

  factory GetRepositoryIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetRepositoryIamPolicyArgs(
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      repository: Input.asInput<String>(map['repository']),
    );
  }
}
