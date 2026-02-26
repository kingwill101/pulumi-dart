// ignore_for_file: unused_element, unnecessary_cast

/// Serializer and deserializer information.
class SerDeInfoResponse {
  /// The fully qualified Java class name of the serialization library.
  final String serializationLib;

  SerDeInfoResponse({
    required this.serializationLib,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['serializationLib'] = serializationLib;
    return map;
  }

  factory SerDeInfoResponse.fromMap(Map<String, dynamic> map) {
    return SerDeInfoResponse(
      serializationLib: map['serializationLib'] as String,
    );
  }
}
