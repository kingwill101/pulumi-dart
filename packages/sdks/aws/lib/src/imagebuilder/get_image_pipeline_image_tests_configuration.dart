// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetImagePipelineImageTestsConfiguration {
  /// Whether image tests are enabled.
  final pulumi.Input<bool> imageTestsEnabled;
  /// Number of minutes before image tests time out.
  final pulumi.Input<int> timeoutMinutes;

  /// Creates a new [GetImagePipelineImageTestsConfiguration].
  /// [imageTestsEnabled] Whether image tests are enabled.
  /// [timeoutMinutes] Number of minutes before image tests time out.
  GetImagePipelineImageTestsConfiguration({
    required this.imageTestsEnabled,
    required this.timeoutMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageTestsEnabled': imageTestsEnabled,
      'timeoutMinutes': timeoutMinutes,
    };
  }

  factory GetImagePipelineImageTestsConfiguration.fromMap(Map<String, dynamic> map) {
    return GetImagePipelineImageTestsConfiguration(
      imageTestsEnabled: pulumi.Input.fromValue(map['imageTestsEnabled'] as bool),
      timeoutMinutes: pulumi.Input.fromValue(map['timeoutMinutes'] as int),
    );
  }
}

