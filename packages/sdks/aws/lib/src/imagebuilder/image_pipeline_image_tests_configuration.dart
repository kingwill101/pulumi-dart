// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ImagePipelineImageTestsConfiguration {
  /// Whether image tests are enabled. Defaults to `true`.
  final pulumi.Input<bool>? imageTestsEnabled;
  /// Number of minutes before image tests time out. Valid values are between `60` and `1440`. Defaults to `720`.
  final pulumi.Input<int>? timeoutMinutes;

  /// Creates a new [ImagePipelineImageTestsConfiguration].
  /// [imageTestsEnabled] Whether image tests are enabled. Defaults to `true`.
  /// [timeoutMinutes] Number of minutes before image tests time out. Valid values are between `60` and `1440`. Defaults to `720`.
  const ImagePipelineImageTestsConfiguration({
    this.imageTestsEnabled,
    this.timeoutMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageTestsEnabled': ?imageTestsEnabled,
      'timeoutMinutes': ?timeoutMinutes,
    };
  }

  factory ImagePipelineImageTestsConfiguration.fromMap(Map<String, dynamic> map) {
    return ImagePipelineImageTestsConfiguration(
      imageTestsEnabled: (() { final guardedValue = map['imageTestsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      timeoutMinutes: (() { final guardedValue = map['timeoutMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
