// ignore_for_file: unused_element, unnecessary_cast

import 'scope_lifecycle_state_response_gkehub_v1alpha.dart';

/// Result data returned by getScope.
class GetScopeGkehubV1alphaResult {
  /// When the scope was created.
  final String createTime;

  /// When the scope was deleted.
  final String deleteTime;

  /// Optional. Labels for this Scope.
  final Map<String, String> labels;

  /// The resource name for the scope `projects/{project}/locations/{location}/scopes/{scope}`
  final String name;

  /// Optional. Scope-level cluster namespace labels. For the member clusters bound to the Scope, these labels are applied to each namespace under the Scope. Scope-level labels take precedence over Namespace-level labels (`namespace_labels` in the Fleet Namespace resource) if they share a key. Keys and values must be Kubernetes-conformant.
  final Map<String, String> namespaceLabels;

  /// State of the scope resource.
  final ScopeLifecycleStateResponseGkehubV1alpha state;

  /// Google-generated UUID for this resource. This is unique across all scope resources. If a scope resource is deleted and another resource with the same name is created, it gets a different uid.
  final String uid;

  /// When the scope was last updated.
  final String updateTime;

  /// Creates a new [GetScopeGkehubV1alphaResult].
  /// [createTime] When the scope was created.
  /// [deleteTime] When the scope was deleted.
  /// [labels] Optional. Labels for this Scope.
  /// [name] The resource name for the scope `projects/{project}/locations/{location}/scopes/{scope}`
  /// [namespaceLabels] Optional. Scope-level cluster namespace labels. For the member clusters bound to the Scope, these labels are applied to each namespace under the Scope. Scope-level labels take precedence over Namespace-level labels (`namespace_labels` in the Fleet Namespace resource) if they share a key. Keys and values must be Kubernetes-conformant.
  /// [state] State of the scope resource.
  /// [uid] Google-generated UUID for this resource. This is unique across all scope resources. If a scope resource is deleted and another resource with the same name is created, it gets a different uid.
  /// [updateTime] When the scope was last updated.
  GetScopeGkehubV1alphaResult({
    required this.createTime,
    required this.deleteTime,
    required this.labels,
    required this.name,
    required this.namespaceLabels,
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
      'state': state.toMap(),
      'uid': uid,
      'updateTime': updateTime,
    };
  }

  factory GetScopeGkehubV1alphaResult.fromMap(Map<String, dynamic> map) {
    return GetScopeGkehubV1alphaResult(
      createTime: map['createTime'] as String,
      deleteTime: map['deleteTime'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      namespaceLabels: (map['namespaceLabels'] as Map).cast<String, String>(),
      state: ScopeLifecycleStateResponseGkehubV1alpha.fromMap(
        (map['state'] as Map).cast<String, dynamic>(),
      ),
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
