// ignore_for_file: unused_element, unnecessary_cast


class DefaultScaleSettingsResponse {
  /// Expected value is 'Default'.
  final String scaleType;

  /// Creates a new [DefaultScaleSettingsResponse].
  /// [scaleType] Expected value is 'Default'.
  DefaultScaleSettingsResponse({
    required this.scaleType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scaleType': scaleType,
    };
  }

  factory DefaultScaleSettingsResponse.fromMap(Map<String, dynamic> map) {
    return DefaultScaleSettingsResponse(
      scaleType: map['scaleType'] as String,
    );
  }
}

