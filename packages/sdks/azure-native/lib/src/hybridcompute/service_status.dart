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
      startupType: map['startupType'] == null ? null : (map['startupType'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

