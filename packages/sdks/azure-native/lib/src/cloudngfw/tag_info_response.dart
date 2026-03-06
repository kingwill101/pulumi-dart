// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Tag
class TagInfoResponse {
  /// tag name
  final pulumi.Input<String> key;
  /// tag value
  final pulumi.Input<String> value;

  /// Creates a new [TagInfoResponse].
  /// [key] tag name
  /// [value] tag value
  const TagInfoResponse({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory TagInfoResponse.fromMap(Map<String, dynamic> map) {
    return TagInfoResponse(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

