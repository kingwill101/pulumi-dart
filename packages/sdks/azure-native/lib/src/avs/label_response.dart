// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A key-value pair representing a label.
class LabelResponse {
  /// The key of the label.
  final pulumi.Input<String> key;
  /// The value of the label.
  final pulumi.Input<String> value;

  /// Creates a new [LabelResponse].
  /// [key] The key of the label.
  /// [value] The value of the label.
  LabelResponse({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory LabelResponse.fromMap(Map<String, dynamic> map) {
    return LabelResponse(
      key: (map['key'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

