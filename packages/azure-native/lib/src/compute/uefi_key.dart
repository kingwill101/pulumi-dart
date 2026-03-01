// ignore_for_file: unused_element, unnecessary_cast


/// A UEFI key signature.
class UefiKey {
  /// The type of key signature.
  final String? type;
  /// The value of the key signature.
  final List<String>? value;

  /// Creates a new [UefiKey].
  /// [type] The type of key signature.
  /// [value] The value of the key signature.
  UefiKey({
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'value': ?value,
    };
  }

  factory UefiKey.fromMap(Map<String, dynamic> map) {
    return UefiKey(
      type: map['type'] == null ? null : map['type'] as String,
      value: map['value'] == null ? null : (map['value'] as List).cast<String>(),
    );
  }
}

