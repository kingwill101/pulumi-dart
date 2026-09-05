// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StreamProcessorSettingsConnectedHome {
  /// What you want to detect in the video, such as people, packages, or pets. The current valid labels you can include in this list are: `PERSON`, `PET`, `PACKAGE`, and `ALL`.
  final pulumi.Input<List<String>?>? labels;
  /// Minimum confidence required to label an object in the video.
  final pulumi.Input<double?>? minConfidence;

  /// Creates a new [StreamProcessorSettingsConnectedHome].
  /// [labels] What you want to detect in the video, such as people, packages, or pets. The current valid labels you can include in this list are: `PERSON`, `PET`, `PACKAGE`, and `ALL`.
  /// [minConfidence] Minimum confidence required to label an object in the video.
  const StreamProcessorSettingsConnectedHome({
    this.labels,
    this.minConfidence,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': ?labels,
      'minConfidence': ?minConfidence,
    };
  }

  factory StreamProcessorSettingsConnectedHome.fromMap(Map<String, dynamic> map) {
    return StreamProcessorSettingsConnectedHome(
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      minConfidence: (() { final guardedValue = map['minConfidence']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
