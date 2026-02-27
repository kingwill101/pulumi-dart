// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Rule.
class RuleArgs {
  /// Policy to determine if the rule should be deleted forcefully.
  /// If deletion_policy = "FORCE", any retrohunts and any detections associated with the rule
  /// will also be deleted. If deletion_policy = "DEFAULT", the call will only succeed if the
  /// rule has no associated retrohunts, including completed retrohunts, and no
  /// associated detections. Regardless of this field's value, the rule
  /// deployment associated with this rule will also be deleted.
  /// Possible values: DEFAULT, FORCE
  final pulumi.Input<String>? deletionPolicy;

  /// The etag for this rule.
  /// If this is provided on update, the request will succeed if and only if it
  /// matches the server-computed value, and will fail with an ABORTED error
  /// otherwise.
  /// Populated in BASIC view and FULL view.
  final pulumi.Input<String>? etag;

  /// The unique identifier for the Chronicle instance, which is the same as the customer ID.
  final pulumi.Input<String> instance;

  /// The location of the resource. This is the geographical region where the Chronicle instance resides, such as "us" or "europe-west2".
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Rule Id is the ID of the Rule.
  final pulumi.Input<String>? ruleId;

  /// Resource name of the DataAccessScope bound to this rule.
  /// Populated in BASIC view and FULL view.
  /// If reference lists are used in the rule, validations will be performed
  /// against this scope to ensure that the reference lists are compatible with
  /// both the user's and the rule's scopes.
  /// The scope should be in the format:
  /// "projects/{project}/locations/{location}/instances/{instance}/dataAccessScopes/{scope}".
  final pulumi.Input<String>? scope;

  /// The YARA-L content of the rule.
  /// Populated in FULL view.
  final pulumi.Input<String>? text;

  RuleArgs({
    this.deletionPolicy,
    this.etag,
    required this.instance,
    required this.location,
    this.project,
    this.ruleId,
    this.scope,
    this.text,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deletionPolicyValue = deletionPolicy;
    if (deletionPolicyValue != null) {
      map['deletionPolicy'] = deletionPolicyValue;
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    map['instance'] = instance;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final ruleIdValue = ruleId;
    if (ruleIdValue != null) {
      map['ruleId'] = ruleIdValue;
    }
    final scopeValue = scope;
    if (scopeValue != null) {
      map['scope'] = scopeValue;
    }
    final textValue = text;
    if (textValue != null) {
      map['text'] = textValue;
    }
    return map;
  }

  factory RuleArgs.fromMap(Map<String, dynamic> map) {
    return RuleArgs(
      deletionPolicy:
          pulumi.Input.asOptionalInput<String>(map['deletionPolicy']),
      etag: pulumi.Input.asOptionalInput<String>(map['etag']),
      instance: pulumi.Input.asInput<String>(map['instance']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      ruleId: pulumi.Input.asOptionalInput<String>(map['ruleId']),
      scope: pulumi.Input.asOptionalInput<String>(map['scope']),
      text: pulumi.Input.asOptionalInput<String>(map['text']),
    );
  }
}
