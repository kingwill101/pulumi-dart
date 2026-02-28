// ignore_for_file: unused_element, unnecessary_cast

import 'hash_type.dart';

/// Container message for hash values.
class Hash {
  /// The type of hash that was performed.
  final HashType? type;

  /// The hash value.
  final String? value;

  /// Creates a new [Hash].
  /// [type] The type of hash that was performed.
  /// [value] The hash value.
  Hash({
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue.value;
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory Hash.fromMap(Map<String, dynamic> map) {
    return Hash(
      type: map['type'] == null
          ? null
          : HashType.fromValue(map['type'] as String),
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
