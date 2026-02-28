// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'restore_plan_restore_config_transformation_rule_resource_filter_group_kind.dart';

class RestorePlanRestoreConfigTransformationRuleResourceFilter {
  /// (Filtering parameter) Any resource subject to transformation must
  /// belong to one of the listed "types". If this field is not provided,
  /// no type filtering will be performed
  /// (all resources of all types matching previous filtering parameters
  /// will be candidates for transformation).
  /// Structure is documented below.
  final List<RestorePlanRestoreConfigTransformationRuleResourceFilterGroupKind>?
      groupKinds;

  /// This is a JSONPath expression that matches specific fields of
  /// candidate resources and it operates as a filtering parameter
  /// (resources that are not matched with this expression will not
  /// be candidates for transformation).
  final String? jsonPath;

  /// (Filtering parameter) Any resource subject to transformation must
  /// be contained within one of the listed Kubernetes Namespace in the
  /// Backup. If this field is not provided, no namespace filtering will
  /// be performed (all resources in all Namespaces, including all
  /// cluster-scoped resources, will be candidates for transformation).
  /// To mix cluster-scoped and namespaced resources in the same rule,
  /// use an empty string ("") as one of the target namespaces.
  final List<String>? namespaces;

  /// Creates a new [RestorePlanRestoreConfigTransformationRuleResourceFilter].
  /// [groupKinds] (Filtering parameter) Any resource subject to transformation must
  /// [jsonPath] This is a JSONPath expression that matches specific fields of
  /// [namespaces] (Filtering parameter) Any resource subject to transformation must
  RestorePlanRestoreConfigTransformationRuleResourceFilter({
    this.groupKinds,
    this.jsonPath,
    this.namespaces,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final groupKindsValue = groupKinds;
    if (groupKindsValue != null) {
      map['groupKinds'] = pulumi.Input.encodeList<
          RestorePlanRestoreConfigTransformationRuleResourceFilterGroupKind,
          Map<String, dynamic>>(groupKindsValue, (value) => value.toMap());
    }
    final jsonPathValue = jsonPath;
    if (jsonPathValue != null) {
      map['jsonPath'] = jsonPathValue;
    }
    final namespacesValue = namespaces;
    if (namespacesValue != null) {
      map['namespaces'] = namespacesValue;
    }
    return map;
  }

  factory RestorePlanRestoreConfigTransformationRuleResourceFilter.fromMap(
      Map<String, dynamic> map) {
    return RestorePlanRestoreConfigTransformationRuleResourceFilter(
      groupKinds: map['groupKinds'] == null
          ? null
          : pulumi.Input.decodeList<
                  RestorePlanRestoreConfigTransformationRuleResourceFilterGroupKind>(
              map['groupKinds'],
              (value) =>
                  RestorePlanRestoreConfigTransformationRuleResourceFilterGroupKind
                      .fromMap((value as Map).cast<String, dynamic>())),
      jsonPath: map['jsonPath'] == null ? null : map['jsonPath'] as String,
      namespaces: map['namespaces'] == null
          ? null
          : (map['namespaces'] as List).cast<String>(),
    );
  }
}
