// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class QueueSettingsResponse {
  /// Controls the compute job tier
  final pulumi.Input<String>? jobTier;

  /// Creates a new [QueueSettingsResponse].
  /// [jobTier] Controls the compute job tier
  QueueSettingsResponse({
    this.jobTier,
  });

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

