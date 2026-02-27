// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getOriginRequestPolicy.
class GetOriginRequestPolicyArgs {
  /// Identifier for the origin request policy.
  final pulumi.Input<String>? id;

  /// Unique name to identify the origin request policy.
  final pulumi.Input<String>? name;

  GetOriginRequestPolicyArgs({
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

  factory GetOriginRequestPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetOriginRequestPolicyArgs(
      id: pulumi.Input.asOptionalInput<String>(map['id']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
    );
  }
}
