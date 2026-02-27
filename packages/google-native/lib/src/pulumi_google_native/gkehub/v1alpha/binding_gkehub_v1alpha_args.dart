// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Binding.
class BindingGkehubV1alphaArgs {
  /// Optional. Labels for this MembershipBinding.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Required. The ID to use for the MembershipBinding.
  final pulumi.Input<String> membershipBindingId;
  final pulumi.Input<String> membershipId;

  /// The resource name for the membershipbinding itself `projects/{project}/locations/{location}/memberships/{membership}/bindings/{membershipbinding}`
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// A Scope resource name in the format `projects/*/locations/*/scopes/*`.
  final pulumi.Input<String>? scope;

  BindingGkehubV1alphaArgs({
    this.labels,
    this.location,
    required this.membershipBindingId,
    required this.membershipId,
    this.name,
    this.project,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['membershipBindingId'] = membershipBindingId;
    map['membershipId'] = membershipId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final scopeValue = scope;
    if (scopeValue != null) {
      map['scope'] = scopeValue;
    }
    return map;
  }

  factory BindingGkehubV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return BindingGkehubV1alphaArgs(
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      membershipBindingId:
          pulumi.Input.asInput<String>(map['membershipBindingId']),
      membershipId: pulumi.Input.asInput<String>(map['membershipId']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      scope: pulumi.Input.asOptionalInput<String>(map['scope']),
    );
  }
}
