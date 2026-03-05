// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of TagItem
class TagItemResponse {
  /// Property key
  final pulumi.Input<String>? key;
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [TagItemResponse].
  /// [key] Property key
  /// [value] Property value
  TagItemResponse({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory TagItemResponse.fromMap(Map<String, dynamic> map) {
    return TagItemResponse(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

