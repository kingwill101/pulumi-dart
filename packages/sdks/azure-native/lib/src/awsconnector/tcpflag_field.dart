// ignore_for_file: unused_element, unnecessary_cast


/// Definition of TCPFlagField
class TCPFlagField {
  /// Property flags
  final List<String>? flags;
  /// Property masks
  final List<String>? masks;

  /// Creates a new [TCPFlagField].
  /// [flags] Property flags
  /// [masks] Property masks
  TCPFlagField({
    this.flags,
    this.masks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flags': ?flags,
      'masks': ?masks,
    };
  }

  factory TCPFlagField.fromMap(Map<String, dynamic> map) {
    return TCPFlagField(
      flags: map['flags'] == null ? null : (map['flags'] as List).cast<String>(),
      masks: map['masks'] == null ? null : (map['masks'] as List).cast<String>(),
    );
  }
}

