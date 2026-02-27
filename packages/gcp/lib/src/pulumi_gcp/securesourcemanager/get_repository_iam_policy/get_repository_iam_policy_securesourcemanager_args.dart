// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRepositoryIamPolicy.
class GetRepositoryIamPolicySecuresourcemanagerArgs {
  /// The location for the Repository.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> repositoryId;

  GetRepositoryIamPolicySecuresourcemanagerArgs({
    this.location,
    this.project,
    required this.repositoryId,
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
    map['repositoryId'] = repositoryId;
    return map;
  }

  factory GetRepositoryIamPolicySecuresourcemanagerArgs.fromMap(
      Map<String, dynamic> map) {
    return GetRepositoryIamPolicySecuresourcemanagerArgs(
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      repositoryId: pulumi.Input.asInput<String>(map['repositoryId']),
    );
  }
}
