// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class QueueSettings {
  /// Controls the compute job tier
  final pulumi.Input<String>? jobTier;

  /// Creates a new [QueueSettings].
  /// [jobTier] Controls the compute job tier
  const QueueSettings({
    this.jobTier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobTier': ?jobTier,
    };
  }

  factory QueueSettings.fromMap(Map<String, dynamic> map) {
    return QueueSettings(
      jobTier: (() { final guardedValue = map['jobTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

