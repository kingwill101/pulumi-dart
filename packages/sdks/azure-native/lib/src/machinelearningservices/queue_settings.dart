// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class QueueSettings {
  /// Enum to determine the job tier.
  final pulumi.Input<dynamic>? jobTier;

  /// Creates a new [QueueSettings].
  /// [jobTier] Enum to determine the job tier.
  QueueSettings({
    pulumi.Input<dynamic>? jobTier,
  }) : jobTier = jobTier ?? pulumi.Input.fromValue('Null');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobTier': ?jobTier,
    };
  }

  factory QueueSettings.fromMap(Map<String, dynamic> map) {
    return QueueSettings(
      jobTier: (() { final guardedValue = map['jobTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
