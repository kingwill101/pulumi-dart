// ignore_for_file: unused_element, unnecessary_cast

import 'namespace_lifecycle_state_response_gkehub_v1beta.dart';

/// Result data returned by getNamespace.
class GetNamespaceGkehubV1betaResult {
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
  final NamespaceLifecycleStateResponseGkehubV1beta state;

  /// Google-generated UUID for this resource. This is unique across all namespace resources. If a namespace resource is deleted and another resource with the same name is created, it gets a different uid.
  final String uid;

  /// When the namespace was last updated.
  final String updateTime;

  /// Creates a new [GetNamespaceGkehubV1betaResult].
  /// [createTime] When the namespace was created.
  /// [deleteTime] When the namespace was deleted.
  /// [labels] Optional. Labels for this Namespace.
  /// [name] The resource name for the namespace `projects/{project}/locations/{location}/namespaces/{namespace}`
  /// [namespaceLabels] Optional. Namespace-level cluster namespace labels. These labels are applied to the related namespace of the member clusters bound to the parent Scope. Scope-level labels (`namespace_labels` in the Fleet Scope resource) take precedence over Namespace-level labels if they share a key. Keys and values must be Kubernetes-conformant.
  /// [scope] Scope associated with the namespace
  /// [state] State of the namespace resource.
  /// [uid] Google-generated UUID for this resource. This is unique across all namespace resources. If a namespace resource is deleted and another resource with the same name is created, it gets a different uid.
  /// [updateTime] When the namespace was last updated.
  GetNamespaceGkehubV1betaResult({
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
    return <String, dynamic>{
      'createTime': createTime,
      'deleteTime': deleteTime,
      'labels': labels,
      'name': name,
      'namespaceLabels': namespaceLabels,
      'scope': scope,
      'state': state.toMap(),
      'uid': uid,
      'updateTime': updateTime,
    };
  }

  factory GetNamespaceGkehubV1betaResult.fromMap(Map<String, dynamic> map) {
    return GetNamespaceGkehubV1betaResult(
      createTime: map['createTime'] as String,
      deleteTime: map['deleteTime'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      namespaceLabels: (map['namespaceLabels'] as Map).cast<String, String>(),
      scope: map['scope'] as String,
      state: NamespaceLifecycleStateResponseGkehubV1beta.fromMap(
        (map['state'] as Map).cast<String, dynamic>(),
      ),
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
