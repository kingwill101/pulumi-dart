// ignore_for_file: unused_element, unnecessary_cast

/// Container message for hash values.
class HashResponse3 {
  /// The type of hash that was performed.
  final String type;

  /// The hash value.
  final String value;

  HashResponse3({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    map['value'] = value;
    return map;
  }

  factory HashResponse3.fromMap(Map<String, dynamic> map) {
    return HashResponse3(
      type: map['type'] as String,
      value: map['value'] as String,
    );
  }
}
