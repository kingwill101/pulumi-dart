// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../projects_policy_binding_condition/projects_policy_binding_condition.dart';
import '../projects_policy_binding_target/projects_policy_binding_target.dart';

/// The set of arguments for ProjectsPolicyBinding.
class ProjectsPolicyBindingArgs {
  /// Optional. User defined annotations. See https://google.aip.dev/148#annotations for more details such as format and size limitations
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;

  /// Represents a textual expression in the Common Expression Language
  /// (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of
  /// CEL are documented at https://github.com/google/cel-spec.
  /// Example (Comparison):
  /// title: \"Summary size limit\"
  /// description: \"Determines if a summary is less than 100 chars\"
  /// expression: \"document.summary.size() < 100\"
  /// Example
  /// (Equality):
  /// title: \"Requestor is owner\"
  /// description: \"Determines if requestor is the document owner\"
  /// expression: \"document.owner == request.auth.claims.email\"  Example
  /// (Logic):
  /// title: \"Public documents\"
  /// description: \"Determine whether the document should be publicly visible\"
  /// expression: \"document.type != 'private' && document.type != 'internal'\"
  /// Example (Data Manipulation):
  /// title: \"Notification string\"
  /// description: \"Create a notification string with a timestamp.\"
  /// expression: \"'New message received at ' + string(document.create_time)\"
  /// The exact variables and functions that may be referenced within an expression are
  /// determined by the service that evaluates it. See the service documentation for
  /// additional information.
  /// Structure is documented below.
  final pulumi.Input<ProjectsPolicyBindingCondition>? condition;

  /// Optional. The description of the policy binding. Must be less than or equal to 63 characters.
  final pulumi.Input<String>? displayName;

  /// The location of the Policy Binding
  final pulumi.Input<String> location;

  /// Required. Immutable. The resource name of the policy to be bound. The binding parent and policy must belong to the same Organization (or Project).
  final pulumi.Input<String> policy;

  /// The Policy Binding ID.
  final pulumi.Input<String> policyBindingId;

  /// Immutable. The kind of the policy to attach in this binding. This
  /// field must be one of the following:  - Left empty (will be automatically set
  /// to the policy kind) - The input policy kind   Possible values:  POLICY_KIND_UNSPECIFIED PRINCIPAL_ACCESS_BOUNDARY ACCESS
  final pulumi.Input<String>? policyKind;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Target is the full resource name of the resource to which the policy will be bound. Immutable once set.
  /// Structure is documented below.
  final pulumi.Input<ProjectsPolicyBindingTarget> target;

  ProjectsPolicyBindingArgs({
    this.annotations,
    this.condition,
    this.displayName,
    required this.location,
    required this.policy,
    required this.policyBindingId,
    this.policyKind,
    this.project,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = pulumi.Input.mapOptionalInputValue<
          ProjectsPolicyBindingCondition,
          Map<String, dynamic>>(conditionValue, (value) => value.toMap());
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    map['location'] = location;
    map['policy'] = policy;
    map['policyBindingId'] = policyBindingId;
    final policyKindValue = policyKind;
    if (policyKindValue != null) {
      map['policyKind'] = policyKindValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['target'] = pulumi.Input.mapInputValue<ProjectsPolicyBindingTarget,
        Map<String, dynamic>>(target, (value) => value.toMap());
    return map;
  }

  factory ProjectsPolicyBindingArgs.fromMap(Map<String, dynamic> map) {
    return ProjectsPolicyBindingArgs(
      annotations:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['annotations']),
      condition: pulumi.Input.asOptionalInput<ProjectsPolicyBindingCondition>(
          map['condition']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      location: pulumi.Input.asInput<String>(map['location']),
      policy: pulumi.Input.asInput<String>(map['policy']),
      policyBindingId: pulumi.Input.asInput<String>(map['policyBindingId']),
      policyKind: pulumi.Input.asOptionalInput<String>(map['policyKind']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      target: pulumi.Input.asInput<ProjectsPolicyBindingTarget>(map['target']),
    );
  }
}
