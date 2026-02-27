// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getEntryGroupIamPolicy.
class GetEntryGroupIamPolicyDataplexArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> entryGroupId;

  /// The location where entry group will be created in.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  GetEntryGroupIamPolicyDataplexArgs({
    required this.entryGroupId,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['entryGroupId'] = entryGroupId;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetEntryGroupIamPolicyDataplexArgs.fromMap(Map<String, dynamic> map) {
    return GetEntryGroupIamPolicyDataplexArgs(
      entryGroupId: pulumi.Input.asInput<String>(map['entryGroupId']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
