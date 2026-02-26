// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'group_kind.dart';

/// ResourceFilter specifies matching criteria to limit the scope of a change to a specific set of kubernetes resources that are selected for restoration from a backup.
class ResourceFilter {
  /// Optional. (Filtering parameter) Any resource subject to transformation must belong to one of the listed "types". If this field is not provided, no type filtering will be performed (all resources of all types matching previous filtering parameters will be candidates for transformation).
  final List<GroupKind>? groupKinds;

  /// Optional. This is a [JSONPath] (https://github.com/json-path/JsonPath/blob/master/README.md) expression that matches specific fields of candidate resources and it operates as a filtering parameter (resources that are not matched with this expression will not be candidates for transformation).
  final String? jsonPath;

  /// Optional. (Filtering parameter) Any resource subject to transformation must be contained within one of the listed Kubernetes Namespace in the Backup. If this field is not provided, no namespace filtering will be performed (all resources in all Namespaces, including all cluster-scoped resources, will be candidates for transformation).
  final List<String>? namespaces;

  ResourceFilter({
    this.groupKinds,
    this.jsonPath,
    this.namespaces,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final groupKindsValue = groupKinds;
    if (groupKindsValue != null) {
      map['groupKinds'] = Input.encodeList<GroupKind, Map<String, dynamic>>(
          groupKindsValue, (value) => value.toMap());
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

  factory ResourceFilter.fromMap(Map<String, dynamic> map) {
    return ResourceFilter(
      groupKinds: map['groupKinds'] == null
          ? null
          : Input.decodeList<GroupKind>(
              map['groupKinds'],
              (value) =>
                  GroupKind.fromMap((value as Map).cast<String, dynamic>())),
      jsonPath: map['jsonPath'] == null ? null : map['jsonPath'] as String,
      namespaces: map['namespaces'] == null
          ? null
          : (map['namespaces'] as List).cast<String>(),
    );
  }
}
