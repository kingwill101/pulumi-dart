// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../folders_policy_binding_condition/folders_policy_binding_condition.dart';
import '../folders_policy_binding_target/folders_policy_binding_target.dart';

/// The set of arguments for FoldersPolicyBinding.
class FoldersPolicyBindingArgs {
  /// Optional. User defined annotations. See https://google.aip.dev/148#annotations for more details such as format and size limitations
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveAnnotations`" pulumi-lang-dotnet="`EffectiveAnnotations`" pulumi-lang-go="`effectiveAnnotations`" pulumi-lang-python="`effective_annotations`" pulumi-lang-yaml="`effectiveAnnotations`" pulumi-lang-java="`effectiveAnnotations`">`effective_annotations`</span> for all of the annotations present on the resource.
  final Input<Map<String, String>>? annotations;

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
  final Input<FoldersPolicyBindingCondition>? condition;

  /// Optional. The description of the policy binding. Must be less than or equal to 63 characters.
  final Input<String>? displayName;

  /// The parent folder for the PolicyBinding.
  final Input<String> folder;

  /// The location of the PolicyBinding.
  final Input<String> location;

  /// Required. Immutable. The resource name of the policy to be bound. The binding parent and policy must belong to the same Organization (or Project).
  final Input<String> policy;

  /// The Policy Binding ID.
  final Input<String> policyBindingId;

  /// Immutable. The kind of the policy to attach in this binding. This
  /// field must be one of the following:  - Left empty (will be automatically set
  /// to the policy kind) - The input policy kind   Possible values:  POLICY_KIND_UNSPECIFIED PRINCIPAL_ACCESS_BOUNDARY ACCESS
  final Input<String>? policyKind;

  /// Target is the full resource name of the resource to which the policy will be bound. Immutable once set.
  /// Structure is documented below.
  final Input<FoldersPolicyBindingTarget> target;

  FoldersPolicyBindingArgs({
    this.annotations,
    this.condition,
    this.displayName,
    required this.folder,
    required this.location,
    required this.policy,
    required this.policyBindingId,
    this.policyKind,
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
      map['condition'] = Input.mapOptionalInputValue<
          FoldersPolicyBindingCondition,
          Map<String, dynamic>>(conditionValue, (value) => value.toMap());
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    map['folder'] = folder;
    map['location'] = location;
    map['policy'] = policy;
    map['policyBindingId'] = policyBindingId;
    final policyKindValue = policyKind;
    if (policyKindValue != null) {
      map['policyKind'] = policyKindValue;
    }
    map['target'] =
        Input.mapInputValue<FoldersPolicyBindingTarget, Map<String, dynamic>>(
            target, (value) => value.toMap());
    return map;
  }

  factory FoldersPolicyBindingArgs.fromMap(Map<String, dynamic> map) {
    return FoldersPolicyBindingArgs(
      annotations:
          Input.asOptionalInput<Map<String, String>>(map['annotations']),
      condition: Input.asOptionalInput<FoldersPolicyBindingCondition>(
          map['condition']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      folder: Input.asInput<String>(map['folder']),
      location: Input.asInput<String>(map['location']),
      policy: Input.asInput<String>(map['policy']),
      policyBindingId: Input.asInput<String>(map['policyBindingId']),
      policyKind: Input.asOptionalInput<String>(map['policyKind']),
      target: Input.asInput<FoldersPolicyBindingTarget>(map['target']),
    );
  }
}
