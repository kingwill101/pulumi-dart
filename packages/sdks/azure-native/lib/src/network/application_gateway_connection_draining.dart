// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Connection draining allows open connections to a backend server to be active for a specified time after the backend server got removed from the configuration.
class ApplicationGatewayConnectionDraining {
  /// The number of seconds connection draining is active. Acceptable values are from 1 second to 3600 seconds.
  final pulumi.Input<int> drainTimeoutInSec;
  /// Whether connection draining is enabled or not.
  final pulumi.Input<bool> enabled;

  /// Creates a new [ApplicationGatewayConnectionDraining].
  /// [drainTimeoutInSec] The number of seconds connection draining is active. Acceptable values are from 1 second to 3600 seconds.
  /// [enabled] Whether connection draining is enabled or not.
  const ApplicationGatewayConnectionDraining({
    required this.drainTimeoutInSec,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'drainTimeoutInSec': drainTimeoutInSec,
      'enabled': enabled,
    };
  }

  factory ApplicationGatewayConnectionDraining.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayConnectionDraining(
      drainTimeoutInSec: pulumi.Input.fromValue(map['drainTimeoutInSec'] as int),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
