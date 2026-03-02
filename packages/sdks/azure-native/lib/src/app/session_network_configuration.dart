// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Session network configuration.
class SessionNetworkConfiguration {
  /// Network status for the sessions.
  final pulumi.Input<String>? status;

  /// Creates a new [SessionNetworkConfiguration].
  /// [status] Network status for the sessions.
  SessionNetworkConfiguration({
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?status,
    };
  }

  factory SessionNetworkConfiguration.fromMap(Map<String, dynamic> map) {
    return SessionNetworkConfiguration(
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

