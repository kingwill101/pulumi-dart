// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the status and behavior of a service.
class ServiceStatus {
  /// The behavior of the service when the Arc-enabled machine starts up.
  final pulumi.Input<String>? startupType;
  /// The current status of the service.
  final pulumi.Input<String>? status;

  /// Creates a new [ServiceStatus].
  /// [startupType] The behavior of the service when the Arc-enabled machine starts up.
  /// [status] The current status of the service.
  ServiceStatus({
    this.startupType,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'startupType': ?startupType,
      'status': ?status,
    };
  }

  factory ServiceStatus.fromMap(Map<String, dynamic> map) {
    return ServiceStatus(
      startupType: (() { final guardedValue = map['startupType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

