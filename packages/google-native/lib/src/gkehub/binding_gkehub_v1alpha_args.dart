// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkehub_v1alpha_binding_gkehub_v1alpha_args_doc}
/// The set of arguments for Binding.
/// {@endtemplate}
/// {@macro pulumi_gkehub_v1alpha_binding_gkehub_v1alpha_args_doc}
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

  /// Creates a new [BindingGkehubV1alphaArgs].
  /// [labels] Optional. Labels for this MembershipBinding.
  /// [location] Optional.
  /// [membershipBindingId] Required. The ID to use for the MembershipBinding.
  /// [membershipId] Required.
  /// [name] The resource name for the membershipbinding itself `projects/{project}/locations/{location}/memberships/{membership}/bindings/{membershipbinding}`
  /// [project] Optional.
  /// [scope] A Scope resource name in the format `projects/*/locations/*/scopes/*`.
  BindingGkehubV1alphaArgs({
    Map<String, String>? labels,
    String? location,
    required String membershipBindingId,
    required String membershipId,
    String? name,
    String? project,
    String? scope,
  })  : labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asOptionalInput<String>(location),
        membershipBindingId = pulumi.Input.asInput<String>(membershipBindingId),
        membershipId = pulumi.Input.asInput<String>(membershipId),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        scope = pulumi.Input.asOptionalInput<String>(scope);

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
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      membershipBindingId: map['membershipBindingId'] as String,
      membershipId: map['membershipId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      scope: map['scope'] == null ? null : map['scope'] as String,
    );
  }
}
