// ignore_for_file: unused_element, unnecessary_cast


/// A CAA record.
class CaaRecord {
  /// The flags for this CAA record as an integer between 0 and 255.
  final int? flags;
  /// The tag for this CAA record.
  final String? tag;
  /// The value for this CAA record.
  final String? value;

  /// Creates a new [CaaRecord].
  /// [flags] The flags for this CAA record as an integer between 0 and 255.
  /// [tag] The tag for this CAA record.
  /// [value] The value for this CAA record.
  CaaRecord({
    this.flags,
    this.tag,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flags': ?flags,
      'tag': ?tag,
      'value': ?value,
    };
  }

  factory CaaRecord.fromMap(Map<String, dynamic> map) {
    return CaaRecord(
      flags: map['flags'] == null ? null : map['flags'] as int,
      tag: map['tag'] == null ? null : map['tag'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

