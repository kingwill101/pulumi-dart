// ignore_for_file: unused_element, unnecessary_cast


/// Definition of TCPFlagField
class TCPFlagFieldResponse {
  /// Property flags
  final List<String>? flags;
  /// Property masks
  final List<String>? masks;

  /// Creates a new [TCPFlagFieldResponse].
  /// [flags] Property flags
  /// [masks] Property masks
  TCPFlagFieldResponse({
    this.flags,
    this.masks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flags': ?flags,
      'masks': ?masks,
    };
  }

  factory TCPFlagFieldResponse.fromMap(Map<String, dynamic> map) {
    return TCPFlagFieldResponse(
      flags: map['flags'] == null ? null : (map['flags'] as List).cast<String>(),
      masks: map['masks'] == null ? null : (map['masks'] as List).cast<String>(),
    );
  }
}

