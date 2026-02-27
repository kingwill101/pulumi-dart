// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getCachePolicy.
class GetCachePolicyArgs {
  /// Identifier for the cache policy.
  final pulumi.Input<String>? id;

  /// Unique name to identify the cache policy.
  final pulumi.Input<String>? name;

  GetCachePolicyArgs({
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory GetCachePolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetCachePolicyArgs(
      id: pulumi.Input.asOptionalInput<String>(map['id']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
    );
  }
}
