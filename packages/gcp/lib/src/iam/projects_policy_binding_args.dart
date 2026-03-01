// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'projects_policy_binding_condition.dart';
import 'projects_policy_binding_target.dart';

/// {@template pulumi_iam_projects_policy_binding_projects_policy_binding_args_doc}
/// The set of arguments for ProjectsPolicyBinding.
/// {@endtemplate}
/// {@macro pulumi_iam_projects_policy_binding_projects_policy_binding_args_doc}
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

  /// Creates a new [ProjectsPolicyBindingArgs].
  /// [annotations] Optional. User defined annotations. See https://google.aip.dev/148#annotations for more details such as format and size limitations
  /// [condition] Represents a textual expression in the Common Expression Language
  /// [displayName] Optional. The description of the policy binding. Must be less than or equal to 63 characters.
  /// [location] The location of the Policy Binding
  /// [policy] Required. Immutable. The resource name of the policy to be bound. The binding parent and policy must belong to the same Organization (or Project).
  /// [policyBindingId] The Policy Binding ID.
  /// [policyKind] Immutable. The kind of the policy to attach in this binding. This
  /// [project] The ID of the project in which the resource belongs.
  /// [target] Target is the full resource name of the resource to which the policy will be bound. Immutable once set.
  ProjectsPolicyBindingArgs({
    Map<String, String>? annotations,
    ProjectsPolicyBindingCondition? condition,
    String? displayName,
    required String location,
    required String policy,
    required String policyBindingId,
    String? policyKind,
    String? project,
    required ProjectsPolicyBindingTarget target,
  }) :
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      condition = pulumi.Input.asOptionalInput<ProjectsPolicyBindingCondition>(condition),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      location = pulumi.Input.asInput<String>(location),
      policy = pulumi.Input.asInput<String>(policy),
      policyBindingId = pulumi.Input.asInput<String>(policyBindingId),
      policyKind = pulumi.Input.asOptionalInput<String>(policyKind),
      project = pulumi.Input.asOptionalInput<String>(project),
      target = pulumi.Input.asInput<ProjectsPolicyBindingTarget>(target);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'condition': ?pulumi.Input.mapOptionalInputValue<ProjectsPolicyBindingCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'displayName': ?displayName,
      'location': location,
      'policy': policy,
      'policyBindingId': policyBindingId,
      'policyKind': ?policyKind,
      'project': ?project,
      'target': pulumi.Input.mapInputValue<ProjectsPolicyBindingTarget, Map<String, dynamic>>(target, (value) => value.toMap()),
    };
  }

  factory ProjectsPolicyBindingArgs.fromMap(Map<String, dynamic> map) {
    return ProjectsPolicyBindingArgs(
      annotations: map['annotations'] == null ? null : (map['annotations'] as Map).cast<String, String>(),
      condition: map['condition'] == null ? null : ProjectsPolicyBindingCondition.fromMap((map['condition'] as Map).cast<String, dynamic>()),
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      location: map['location'] as String,
      policy: map['policy'] as String,
      policyBindingId: map['policyBindingId'] as String,
      policyKind: map['policyKind'] == null ? null : map['policyKind'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      target: ProjectsPolicyBindingTarget.fromMap((map['target'] as Map).cast<String, dynamic>()),
    );
  }
}

