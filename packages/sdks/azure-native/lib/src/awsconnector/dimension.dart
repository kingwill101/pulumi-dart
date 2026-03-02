// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of Dimension
class Dimension {
  /// The name for the CW metric dimension that the metric filter creates. Dimension names must contain only ASCII characters, must include at least one non-whitespace character, and cannot start with a colon (:).
  final pulumi.Input<String>? key;
  /// The name of the dimension, from 1–255 characters in length. This dimension name must have been included when the metric was published.
  final pulumi.Input<String>? name;
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [Dimension].
  /// [key] The name for the CW metric dimension that the metric filter creates. Dimension names must contain only ASCII characters, must include at least one non-whitespace character, and cannot start with a colon (:).
  /// [name] The name of the dimension, from 1–255 characters in length. This dimension name must have been included when the metric was published.
  /// [value] Property value
  Dimension({
    this.key,
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'name': ?name,
      'value': ?value,
    };
  }

  factory Dimension.fromMap(Map<String, dynamic> map) {
    return Dimension(
      key: map['key'] == null ? null : (map['key']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

