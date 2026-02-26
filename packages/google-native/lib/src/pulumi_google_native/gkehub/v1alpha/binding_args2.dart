// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Binding.
class BindingArgs2 {
  /// Optional. Labels for this MembershipBinding.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// Required. The ID to use for the MembershipBinding.
  final Input<String> membershipBindingId;
  final Input<String> membershipId;

  /// The resource name for the membershipbinding itself `projects/{project}/locations/{location}/memberships/{membership}/bindings/{membershipbinding}`
  final Input<String>? name;
  final Input<String>? project;

  /// A Scope resource name in the format `projects/*/locations/*/scopes/*`.
  final Input<String>? scope;

  BindingArgs2({
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

  factory BindingArgs2.fromMap(Map<String, dynamic> map) {
    return BindingArgs2(
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      membershipBindingId: Input.asInput<String>(map['membershipBindingId']),
      membershipId: Input.asInput<String>(map['membershipId']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      scope: Input.asOptionalInput<String>(map['scope']),
    );
  }
}
