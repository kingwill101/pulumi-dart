// ignore_for_file: unused_element, unnecessary_cast

class GetImageImageTestsConfiguration {
  /// Whether image tests are enabled.
  final bool imageTestsEnabled;

  /// Number of minutes before image tests time out.
  final int timeoutMinutes;

  GetImageImageTestsConfiguration({
    required this.imageTestsEnabled,
    required this.timeoutMinutes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['imageTestsEnabled'] = imageTestsEnabled;
    map['timeoutMinutes'] = timeoutMinutes;
    return map;
  }

  factory GetImageImageTestsConfiguration.fromMap(Map<String, dynamic> map) {
    return GetImageImageTestsConfiguration(
      imageTestsEnabled: map['imageTestsEnabled'] as bool,
      timeoutMinutes: map['timeoutMinutes'] as int,
    );
  }
}
