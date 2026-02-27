// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'group_kind.dart';

/// A transformation rule to be applied against Kubernetes resources as they are selected for restoration from a Backup. A rule contains both filtering logic (which resources are subject to substitution) and substitution logic.
class SubstitutionRule {
  /// Optional. This is the new value to set for any fields that pass the filtering and selection criteria. To remove a value from a Kubernetes resource, either leave this field unspecified, or set it to the empty string ("").
  final String? newValue;

  /// Optional. (Filtering parameter) This is a [regular expression] (https://en.wikipedia.org/wiki/Regular_expression) that is compared against the fields matched by the target_json_path expression (and must also have passed the previous filters). Substitution will not be performed against fields whose value does not match this expression. If this field is NOT specified, then ALL fields matched by the target_json_path expression will undergo substitution. Note that an empty (e.g., "", rather than unspecified) value for this field will only match empty fields.
  final String? originalValuePattern;

  /// Optional. (Filtering parameter) Any resource subject to substitution must belong to one of the listed "types". If this field is not provided, no type filtering will be performed (all resources of all types matching previous filtering parameters will be candidates for substitution).
  final List<GroupKind>? targetGroupKinds;

  /// This is a [JSONPath] (https://kubernetes.io/docs/reference/kubectl/jsonpath/) expression that matches specific fields of candidate resources and it operates as both a filtering parameter (resources that are not matched with this expression will not be candidates for substitution) as well as a field identifier (identifies exactly which fields out of the candidate resources will be modified).
  final String targetJsonPath;

  /// Optional. (Filtering parameter) Any resource subject to substitution must be contained within one of the listed Kubernetes Namespace in the Backup. If this field is not provided, no namespace filtering will be performed (all resources in all Namespaces, including all cluster-scoped resources, will be candidates for substitution). To mix cluster-scoped and namespaced resources in the same rule, use an empty string ("") as one of the target namespaces.
  final List<String>? targetNamespaces;

  SubstitutionRule({
    this.newValue,
    this.originalValuePattern,
    this.targetGroupKinds,
    required this.targetJsonPath,
    this.targetNamespaces,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final newValueValue = newValue;
    if (newValueValue != null) {
      map['newValue'] = newValueValue;
    }
    final originalValuePatternValue = originalValuePattern;
    if (originalValuePatternValue != null) {
      map['originalValuePattern'] = originalValuePatternValue;
    }
    final targetGroupKindsValue = targetGroupKinds;
    if (targetGroupKindsValue != null) {
      map['targetGroupKinds'] =
          Input.encodeList<GroupKind, Map<String, dynamic>>(
              targetGroupKindsValue, (value) => value.toMap());
    }
    map['targetJsonPath'] = targetJsonPath;
    final targetNamespacesValue = targetNamespaces;
    if (targetNamespacesValue != null) {
      map['targetNamespaces'] = targetNamespacesValue;
    }
    return map;
  }

  factory SubstitutionRule.fromMap(Map<String, dynamic> map) {
    return SubstitutionRule(
      newValue: map['newValue'] == null ? null : map['newValue'] as String,
      originalValuePattern: map['originalValuePattern'] == null
          ? null
          : map['originalValuePattern'] as String,
      targetGroupKinds: map['targetGroupKinds'] == null
          ? null
          : Input.decodeList<GroupKind>(
              map['targetGroupKinds'],
              (value) =>
                  GroupKind.fromMap((value as Map).cast<String, dynamic>())),
      targetJsonPath: map['targetJsonPath'] as String,
      targetNamespaces: map['targetNamespaces'] == null
          ? null
          : (map['targetNamespaces'] as List).cast<String>(),
    );
  }
}
