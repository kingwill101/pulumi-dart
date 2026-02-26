// ignore_for_file: unused_element, unnecessary_cast

import 'hash_type2.dart';

/// Container message for hash values.
class Hash2 {
  /// The type of hash that was performed.
  final HashType2 type;

  /// The hash value.
  final String value;

  Hash2({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type.value;
    map['value'] = value;
    return map;
  }

  factory Hash2.fromMap(Map<String, dynamic> map) {
    return Hash2(
      type: HashType2.fromValue(map['type'] as String),
      value: map['value'] as String,
    );
  }
}
