// ignore_for_file: unused_element, unnecessary_cast

class GetImagePipelineImageTestsConfiguration {
  /// Whether image tests are enabled.
  final bool imageTestsEnabled;

  /// Number of minutes before image tests time out.
  final int timeoutMinutes;

  GetImagePipelineImageTestsConfiguration({
    required this.imageTestsEnabled,
    required this.timeoutMinutes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['imageTestsEnabled'] = imageTestsEnabled;
    map['timeoutMinutes'] = timeoutMinutes;
    return map;
  }

  factory GetImagePipelineImageTestsConfiguration.fromMap(
      Map<String, dynamic> map) {
    return GetImagePipelineImageTestsConfiguration(
      imageTestsEnabled: map['imageTestsEnabled'] as bool,
      timeoutMinutes: map['timeoutMinutes'] as int,
    );
  }
}
