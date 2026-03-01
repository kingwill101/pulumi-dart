// ignore_for_file: unused_element, unnecessary_cast

/// Apply a hash function on the value.
class ApplyHash {
  /// Optional. Generate UUID from the data's byte array
  final Map<String, dynamic>? uuidFromBytes;

  /// Creates a new [ApplyHash].
  /// [uuidFromBytes] Optional. Generate UUID from the data's byte array
  ApplyHash({this.uuidFromBytes});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'uuidFromBytes': ?uuidFromBytes};
  }

  factory ApplyHash.fromMap(Map<String, dynamic> map) {
    return ApplyHash(
      uuidFromBytes: map['uuidFromBytes'] == null
          ? null
          : (map['uuidFromBytes'] as Map).cast<String, dynamic>(),
    );
  }
}
