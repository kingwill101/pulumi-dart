// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of AccelerateConfiguration
class AccelerateConfiguration {
  /// Specifies the transfer acceleration status of the bucket.
  final pulumi.Input<String>? accelerationStatus;

  /// Creates a new [AccelerateConfiguration].
  /// [accelerationStatus] Specifies the transfer acceleration status of the bucket.
  AccelerateConfiguration({
    this.accelerationStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accelerationStatus': ?accelerationStatus,
    };
  }

  factory AccelerateConfiguration.fromMap(Map<String, dynamic> map) {
    return AccelerateConfiguration(
      accelerationStatus: (() { final guardedValue = map['accelerationStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

