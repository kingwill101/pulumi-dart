// ignore_for_file: unused_element, unnecessary_cast


class DefaultScaleSettings {
  /// Expected value is 'Default'.
  final String scaleType;

  /// Creates a new [DefaultScaleSettings].
  /// [scaleType] Expected value is 'Default'.
  DefaultScaleSettings({
    required this.scaleType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scaleType': scaleType,
    };
  }

  factory DefaultScaleSettings.fromMap(Map<String, dynamic> map) {
    return DefaultScaleSettings(
      scaleType: map['scaleType'] as String,
    );
  }
}

