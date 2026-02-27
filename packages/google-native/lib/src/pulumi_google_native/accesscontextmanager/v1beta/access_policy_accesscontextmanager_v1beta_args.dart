// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for AccessPolicy.
class AccessPolicyAccesscontextmanagerV1betaArgs {
  /// The parent of this `AccessPolicy` in the Cloud Resource Hierarchy. Currently immutable once created. Format: `organizations/{organization_id}`
  final pulumi.Input<String> parent;

  /// Human readable title. Does not affect behavior.
  final pulumi.Input<String> title;

  AccessPolicyAccesscontextmanagerV1betaArgs({
    required this.parent,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['parent'] = parent;
    map['title'] = title;
    return map;
  }

  factory AccessPolicyAccesscontextmanagerV1betaArgs.fromMap(
      Map<String, dynamic> map) {
    return AccessPolicyAccesscontextmanagerV1betaArgs(
      parent: pulumi.Input.asInput<String>(map['parent']),
      title: pulumi.Input.asInput<String>(map['title']),
    );
  }
}
