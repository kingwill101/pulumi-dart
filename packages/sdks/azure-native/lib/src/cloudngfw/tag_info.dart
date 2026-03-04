// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Tag
class TagInfo {
  /// tag name
  final pulumi.Input<String> key;

  /// tag value
  final pulumi.Input<String> value;

  /// Creates a new [TagInfo].
  /// [key] tag name
  /// [value] tag value
  TagInfo({required this.key, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': key, 'value': value};
  }

  factory TagInfo.fromMap(Map<String, dynamic> map) {
    return TagInfo(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
