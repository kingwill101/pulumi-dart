// ignore_for_file: unused_element, unnecessary_cast

import 'scope_lifecycle_state_response_gkehub_v1beta.dart';

/// Result data returned by getScope.
class GetScopeGkehubV1betaResult {
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
  final ScopeLifecycleStateResponseGkehubV1beta state;

  /// Google-generated UUID for this resource. This is unique across all scope resources. If a scope resource is deleted and another resource with the same name is created, it gets a different uid.
  final String uid;

  /// When the scope was last updated.
  final String updateTime;

  GetScopeGkehubV1betaResult({
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
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['deleteTime'] = deleteTime;
    map['labels'] = labels;
    map['name'] = name;
    map['namespaceLabels'] = namespaceLabels;
    map['state'] = state.toMap();
    map['uid'] = uid;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetScopeGkehubV1betaResult.fromMap(Map<String, dynamic> map) {
    return GetScopeGkehubV1betaResult(
      createTime: map['createTime'] as String,
      deleteTime: map['deleteTime'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      namespaceLabels: (map['namespaceLabels'] as Map).cast<String, String>(),
      state: ScopeLifecycleStateResponseGkehubV1beta.fromMap(
          (map['state'] as Map).cast<String, dynamic>()),
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
