// ignore_for_file: unused_element, unnecessary_cast


/// Iceberg write settings.
class IcebergWriteSettingsResponse {
  /// The write setting type.
  /// Expected value is 'IcebergWriteSettings'.
  final String type;

  /// Creates a new [IcebergWriteSettingsResponse].
  /// [type] The write setting type.
  IcebergWriteSettingsResponse({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory IcebergWriteSettingsResponse.fromMap(Map<String, dynamic> map) {
    return IcebergWriteSettingsResponse(
      type: map['type'] as String,
    );
  }
}

