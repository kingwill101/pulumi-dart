// ignore_for_file: unused_element, unnecessary_cast

/// Apply a hash function on the value.
class ApplyHashResponse {
  /// Optional. Generate UUID from the data's byte array
  final Map<String, dynamic> uuidFromBytes;

  /// Creates a new [ApplyHashResponse].
  /// [uuidFromBytes] Optional. Generate UUID from the data's byte array
  ApplyHashResponse({
    required this.uuidFromBytes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['uuidFromBytes'] = uuidFromBytes;
    return map;
  }

  factory ApplyHashResponse.fromMap(Map<String, dynamic> map) {
    return ApplyHashResponse(
      uuidFromBytes: (map['uuidFromBytes'] as Map).cast<String, dynamic>(),
    );
  }
}
