// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class QueueSettingsResponse {
  /// Enum to determine the job tier.
  final pulumi.Input<String?>? jobTier;

  /// Creates a new [QueueSettingsResponse].
  /// [jobTier] Enum to determine the job tier.
  QueueSettingsResponse({
    pulumi.Input<String?>? jobTier,
  }) : jobTier = jobTier ?? pulumi.Input.fromValue('Null');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobTier': ?jobTier,
    };
  }

  factory QueueSettingsResponse.fromMap(Map<String, dynamic> map) {
    return QueueSettingsResponse(
      jobTier: (() { final guardedValue = map['jobTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
