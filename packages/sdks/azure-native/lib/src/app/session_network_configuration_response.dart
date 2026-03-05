// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Session network configuration.
class SessionNetworkConfigurationResponse {
  /// Network status for the sessions.
  final pulumi.Input<String>? status;

  /// Creates a new [SessionNetworkConfigurationResponse].
  /// [status] Network status for the sessions.
  SessionNetworkConfigurationResponse({
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?status,
    };
  }

  factory SessionNetworkConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return SessionNetworkConfigurationResponse(
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

