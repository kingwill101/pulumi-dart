// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getResponseHeadersPolicy.
class GetResponseHeadersPolicyArgs {
  /// Identifier for the response headers policy.
  final Input<String>? id;

  /// Unique name to identify the response headers policy.
  final Input<String>? name;

  GetResponseHeadersPolicyArgs({
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

  factory GetResponseHeadersPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetResponseHeadersPolicyArgs(
      id: Input.asOptionalInput<String>(map['id']),
      name: Input.asOptionalInput<String>(map['name']),
    );
  }
}
