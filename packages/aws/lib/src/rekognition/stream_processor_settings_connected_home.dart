// ignore_for_file: unused_element, unnecessary_cast

class StreamProcessorSettingsConnectedHome {
  /// Specifies what you want to detect in the video, such as people, packages, or pets. The current valid labels you can include in this list are: `PERSON`, `PET`, `PACKAGE`, and `ALL`.
  final List<String>? labels;

  /// Minimum confidence required to label an object in the video.
  final double? minConfidence;

  /// Creates a new [StreamProcessorSettingsConnectedHome].
  /// [labels] Specifies what you want to detect in the video, such as people, packages, or pets. The current valid labels you can include in this list are: `PERSON`, `PET`, `PACKAGE`, and `ALL`.
  /// [minConfidence] Minimum confidence required to label an object in the video.
  StreamProcessorSettingsConnectedHome({
    this.labels,
    this.minConfidence,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final minConfidenceValue = minConfidence;
    if (minConfidenceValue != null) {
      map['minConfidence'] = minConfidenceValue;
    }
    return map;
  }

  factory StreamProcessorSettingsConnectedHome.fromMap(
      Map<String, dynamic> map) {
    return StreamProcessorSettingsConnectedHome(
      labels:
          map['labels'] == null ? null : (map['labels'] as List).cast<String>(),
      minConfidence:
          map['minConfidence'] == null ? null : map['minConfidence'] as double,
    );
  }
}
