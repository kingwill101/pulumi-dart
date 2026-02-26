// ignore_for_file: unused_element, unnecessary_cast

import 'namespace_lifecycle_state_response2.dart';

/// Result data returned by getNamespace.
class GetNamespaceResult2 {
  /// When the namespace was created.
  final String createTime;

  /// When the namespace was deleted.
  final String deleteTime;

  /// Optional. Labels for this Namespace.
  final Map<String, String> labels;

  /// The resource name for the namespace `projects/{project}/locations/{location}/namespaces/{namespace}`
  final String name;

  /// Optional. Namespace-level cluster namespace labels. These labels are applied to the related namespace of the member clusters bound to the parent Scope. Scope-level labels (`namespace_labels` in the Fleet Scope resource) take precedence over Namespace-level labels if they share a key. Keys and values must be Kubernetes-conformant.
  final Map<String, String> namespaceLabels;

  /// Scope associated with the namespace
  final String scope;

  /// State of the namespace resource.
  final NamespaceLifecycleStateResponse2 state;

  /// Google-generated UUID for this resource. This is unique across all namespace resources. If a namespace resource is deleted and another resource with the same name is created, it gets a different uid.
  final String uid;

  /// When the namespace was last updated.
  final String updateTime;

  GetNamespaceResult2({
    required this.createTime,
    required this.deleteTime,
    required this.labels,
    required this.name,
    required this.namespaceLabels,
    required this.scope,
    required this.state,
    required this.uid,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['deleteTime'] = deleteTime;
    map['labels'] = labels;
    map['name'] = name;
    map['namespaceLabels'] = namespaceLabels;
    map['scope'] = scope;
    map['state'] = state.toMap();
    map['uid'] = uid;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetNamespaceResult2.fromMap(Map<String, dynamic> map) {
    return GetNamespaceResult2(
      createTime: map['createTime'] as String,
      deleteTime: map['deleteTime'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      namespaceLabels: (map['namespaceLabels'] as Map).cast<String, String>(),
      scope: map['scope'] as String,
      state: NamespaceLifecycleStateResponse2.fromMap(
          (map['state'] as Map).cast<String, dynamic>()),
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
