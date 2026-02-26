// ignore_for_file: unused_element, unnecessary_cast

import 'membership_binding_lifecycle_state_response3.dart';

/// Result data returned by getBinding.
class GetBindingResult3 {
  /// When the membership binding was created.
  final String createTime;

  /// When the membership binding was deleted.
  final String deleteTime;

  /// Optional. Labels for this MembershipBinding.
  final Map<String, String> labels;

  /// The resource name for the membershipbinding itself `projects/{project}/locations/{location}/memberships/{membership}/bindings/{membershipbinding}`
  final String name;

  /// A Scope resource name in the format `projects/*/locations/*/scopes/*`.
  final String scope;

  /// State of the membership binding resource.
  final MembershipBindingLifecycleStateResponse3 state;

  /// Google-generated UUID for this resource. This is unique across all membershipbinding resources. If a membershipbinding resource is deleted and another resource with the same name is created, it gets a different uid.
  final String uid;

  /// When the membership binding was last updated.
  final String updateTime;

  GetBindingResult3({
    required this.createTime,
    required this.deleteTime,
    required this.labels,
    required this.name,
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
    map['scope'] = scope;
    map['state'] = state.toMap();
    map['uid'] = uid;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetBindingResult3.fromMap(Map<String, dynamic> map) {
    return GetBindingResult3(
      createTime: map['createTime'] as String,
      deleteTime: map['deleteTime'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      scope: map['scope'] as String,
      state: MembershipBindingLifecycleStateResponse3.fromMap(
          (map['state'] as Map).cast<String, dynamic>()),
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
