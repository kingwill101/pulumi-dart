// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetImageImageTestsConfiguration {
  /// Whether image tests are enabled.
  final pulumi.Input<bool> imageTestsEnabled;
  /// Number of minutes before image tests time out.
  final pulumi.Input<int> timeoutMinutes;

  /// Creates a new [GetImageImageTestsConfiguration].
  /// [imageTestsEnabled] Whether image tests are enabled.
  /// [timeoutMinutes] Number of minutes before image tests time out.
  const GetImageImageTestsConfiguration({
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
      imageTestsEnabled: pulumi.Input.fromValue(map['imageTestsEnabled'] as bool),
      timeoutMinutes: pulumi.Input.fromValue(map['timeoutMinutes'] as int),
    );
  }
}

