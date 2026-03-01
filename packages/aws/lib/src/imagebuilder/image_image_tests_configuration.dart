// ignore_for_file: unused_element, unnecessary_cast

class ImageImageTestsConfiguration {
  /// Whether image tests are enabled. Defaults to `true`.
  final bool? imageTestsEnabled;

  /// Number of minutes before image tests time out. Valid values are between `60` and `1440`. Defaults to `720`.
  final int? timeoutMinutes;

  /// Creates a new [ImageImageTestsConfiguration].
  /// [imageTestsEnabled] Whether image tests are enabled. Defaults to `true`.
  /// [timeoutMinutes] Number of minutes before image tests time out. Valid values are between `60` and `1440`. Defaults to `720`.
  ImageImageTestsConfiguration({this.imageTestsEnabled, this.timeoutMinutes});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageTestsEnabled': ?imageTestsEnabled,
      'timeoutMinutes': ?timeoutMinutes,
    };
  }

  factory ImageImageTestsConfiguration.fromMap(Map<String, dynamic> map) {
    return ImageImageTestsConfiguration(
      imageTestsEnabled: map['imageTestsEnabled'] == null
          ? null
          : map['imageTestsEnabled'] as bool,
      timeoutMinutes: map['timeoutMinutes'] == null
          ? null
          : map['timeoutMinutes'] as int,
    );
  }
}
