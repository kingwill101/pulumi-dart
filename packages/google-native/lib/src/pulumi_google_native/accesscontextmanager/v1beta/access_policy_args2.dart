// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for AccessPolicy.
class AccessPolicyArgs2 {
  /// The parent of this `AccessPolicy` in the Cloud Resource Hierarchy. Currently immutable once created. Format: `organizations/{organization_id}`
  final Input<String> parent;

  /// Human readable title. Does not affect behavior.
  final Input<String> title;

  AccessPolicyArgs2({
    required this.parent,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['parent'] = parent;
    map['title'] = title;
    return map;
  }

  factory AccessPolicyArgs2.fromMap(Map<String, dynamic> map) {
    return AccessPolicyArgs2(
      parent: Input.asInput<String>(map['parent']),
      title: Input.asInput<String>(map['title']),
    );
  }
}
