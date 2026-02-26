// ignore_for_file: unused_element, unnecessary_cast

/// Serializer and deserializer information.
class SerDeInfo {
  /// The fully qualified Java class name of the serialization library.
  final String? serializationLib;

  SerDeInfo({
    this.serializationLib,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final serializationLibValue = serializationLib;
    if (serializationLibValue != null) {
      map['serializationLib'] = serializationLibValue;
    }
    return map;
  }

  factory SerDeInfo.fromMap(Map<String, dynamic> map) {
    return SerDeInfo(
      serializationLib: map['serializationLib'] == null
          ? null
          : map['serializationLib'] as String,
    );
  }
}
