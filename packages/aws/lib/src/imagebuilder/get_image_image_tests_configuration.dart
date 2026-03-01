// ignore_for_file: unused_element, unnecessary_cast

class GetImageImageTestsConfiguration {
  /// Whether image tests are enabled.
  final bool imageTestsEnabled;

  /// Number of minutes before image tests time out.
  final int timeoutMinutes;

  /// Creates a new [GetImageImageTestsConfiguration].
  /// [imageTestsEnabled] Whether image tests are enabled.
  /// [timeoutMinutes] Number of minutes before image tests time out.
  GetImageImageTestsConfiguration({
    required this.imageTestsEnabled,
    required this.timeoutMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageTestsEnabled': imageTestsEnabled,
      'timeoutMinutes': timeoutMinutes,
    };
  }

  factory GetImageImageTestsConfiguration.fromMap(Map<String, dynamic> map) {
    return GetImageImageTestsConfiguration(
      imageTestsEnabled: map['imageTestsEnabled'] as bool,
      timeoutMinutes: map['timeoutMinutes'] as int,
    );
  }
}
