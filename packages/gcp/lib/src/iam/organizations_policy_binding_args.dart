// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organizations_policy_binding_condition.dart';
import 'organizations_policy_binding_target.dart';

/// {@template pulumi_iam_organizations_policy_binding_organizations_policy_binding_args_doc}
/// The set of arguments for OrganizationsPolicyBinding.
/// {@endtemplate}
/// {@macro pulumi_iam_organizations_policy_binding_organizations_policy_binding_args_doc}
class OrganizationsPolicyBindingArgs {
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
  final pulumi.Input<OrganizationsPolicyBindingCondition>? condition;

  /// Optional. The description of the policy binding. Must be less than or equal to 63 characters.
  final pulumi.Input<String>? displayName;

  /// The location of the Policy Binding
  final pulumi.Input<String> location;

  /// The parent organization of the Policy Binding.
  final pulumi.Input<String> organization;

  /// Required. Immutable. The resource name of the policy to be bound. The binding parent and policy must belong to the same Organization (or Project).
  final pulumi.Input<String> policy;

  /// The Policy Binding ID.
  final pulumi.Input<String> policyBindingId;

  /// Immutable. The kind of the policy to attach in this binding. This
  /// field must be one of the following:  - Left empty (will be automatically set
  /// to the policy kind) - The input policy kind   Possible values:  POLICY_KIND_UNSPECIFIED PRINCIPAL_ACCESS_BOUNDARY ACCESS
  final pulumi.Input<String>? policyKind;

  /// Target is the full resource name of the resource to which the policy will be bound. Immutable once set.
  /// Structure is documented below.
  final pulumi.Input<OrganizationsPolicyBindingTarget> target;

  /// Creates a new [OrganizationsPolicyBindingArgs].
  /// [annotations] Optional. User defined annotations. See https://google.aip.dev/148#annotations for more details such as format and size limitations
  /// [condition] Represents a textual expression in the Common Expression Language
  /// [displayName] Optional. The description of the policy binding. Must be less than or equal to 63 characters.
  /// [location] The location of the Policy Binding
  /// [organization] The parent organization of the Policy Binding.
  /// [policy] Required. Immutable. The resource name of the policy to be bound. The binding parent and policy must belong to the same Organization (or Project).
  /// [policyBindingId] The Policy Binding ID.
  /// [policyKind] Immutable. The kind of the policy to attach in this binding. This
  /// [target] Target is the full resource name of the resource to which the policy will be bound. Immutable once set.
  OrganizationsPolicyBindingArgs({
    Map<String, String>? annotations,
    OrganizationsPolicyBindingCondition? condition,
    String? displayName,
    required String location,
    required String organization,
    required String policy,
    required String policyBindingId,
    String? policyKind,
    required OrganizationsPolicyBindingTarget target,
  })  : annotations =
            pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
        condition =
            pulumi.Input.asOptionalInput<OrganizationsPolicyBindingCondition>(
                condition),
        displayName = pulumi.Input.asOptionalInput<String>(displayName),
        location = pulumi.Input.asInput<String>(location),
        organization = pulumi.Input.asInput<String>(organization),
        policy = pulumi.Input.asInput<String>(policy),
        policyBindingId = pulumi.Input.asInput<String>(policyBindingId),
        policyKind = pulumi.Input.asOptionalInput<String>(policyKind),
        target = pulumi.Input.asInput<OrganizationsPolicyBindingTarget>(target);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = pulumi.Input.mapOptionalInputValue<
          OrganizationsPolicyBindingCondition,
          Map<String, dynamic>>(conditionValue, (value) => value.toMap());
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    map['location'] = location;
    map['organization'] = organization;
    map['policy'] = policy;
    map['policyBindingId'] = policyBindingId;
    final policyKindValue = policyKind;
    if (policyKindValue != null) {
      map['policyKind'] = policyKindValue;
    }
    map['target'] = pulumi.Input.mapInputValue<OrganizationsPolicyBindingTarget,
        Map<String, dynamic>>(target, (value) => value.toMap());
    return map;
  }

  factory OrganizationsPolicyBindingArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationsPolicyBindingArgs(
      annotations: map['annotations'] == null
          ? null
          : (map['annotations'] as Map).cast<String, String>(),
      condition: map['condition'] == null
          ? null
          : OrganizationsPolicyBindingCondition.fromMap(
              (map['condition'] as Map).cast<String, dynamic>()),
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      location: map['location'] as String,
      organization: map['organization'] as String,
      policy: map['policy'] as String,
      policyBindingId: map['policyBindingId'] as String,
      policyKind:
          map['policyKind'] == null ? null : map['policyKind'] as String,
      target: OrganizationsPolicyBindingTarget.fromMap(
          (map['target'] as Map).cast<String, dynamic>()),
    );
  }
}
