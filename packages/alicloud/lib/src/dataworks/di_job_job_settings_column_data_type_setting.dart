// ignore_for_file: unused_element, unnecessary_cast


class DiJobJobSettingsColumnDataTypeSetting {
  /// The destination type of the mapping relationship
  final String? destinationDataType;
  /// The source type of the mapping type
  final String? sourceDataType;

  /// Creates a new [DiJobJobSettingsColumnDataTypeSetting].
  /// [destinationDataType] The destination type of the mapping relationship
  /// [sourceDataType] The source type of the mapping type
  DiJobJobSettingsColumnDataTypeSetting({
    this.destinationDataType,
    this.sourceDataType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationDataType': ?destinationDataType,
      'sourceDataType': ?sourceDataType,
    };
  }

  factory DiJobJobSettingsColumnDataTypeSetting.fromMap(Map<String, dynamic> map) {
    return DiJobJobSettingsColumnDataTypeSetting(
      destinationDataType: map['destinationDataType'] == null ? null : map['destinationDataType'] as String,
      sourceDataType: map['sourceDataType'] == null ? null : map['sourceDataType'] as String,
    );
  }
}

