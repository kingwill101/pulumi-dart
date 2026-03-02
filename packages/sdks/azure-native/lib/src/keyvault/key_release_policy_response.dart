// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KeyReleasePolicyResponse {
  /// Content type and version of key release policy
  final pulumi.Input<String>? contentType;
  /// Blob encoding the policy rules under which the key can be released.
  final pulumi.Input<String>? data;

  /// Creates a new [KeyReleasePolicyResponse].
  /// [contentType] Content type and version of key release policy
  /// [data] Blob encoding the policy rules under which the key can be released.
  KeyReleasePolicyResponse({
    this.contentType,
    this.data,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentType': ?contentType,
      'data': ?data,
    };
  }

  factory KeyReleasePolicyResponse.fromMap(Map<String, dynamic> map) {
    return KeyReleasePolicyResponse(
      contentType: map['contentType'] == null ? null : (map['contentType']! as String).input(),
      data: map['data'] == null ? null : (map['data']! as String).input(),
    );
  }
}

