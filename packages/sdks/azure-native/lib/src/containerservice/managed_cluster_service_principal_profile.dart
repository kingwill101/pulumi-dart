// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information about a service principal identity for the cluster to use for manipulating Azure APIs.
class ManagedClusterServicePrincipalProfile {
  /// The ID for the service principal.
  final pulumi.Input<String> clientId;

  /// The secret password associated with the service principal in plain text.
  final pulumi.Input<String>? secret;

  /// Creates a new [ManagedClusterServicePrincipalProfile].
  /// [clientId] The ID for the service principal.
  /// [secret] The secret password associated with the service principal in plain text.
  ManagedClusterServicePrincipalProfile({required this.clientId, this.secret});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'clientId': clientId, 'secret': ?secret};
  }

  factory ManagedClusterServicePrincipalProfile.fromMap(
    Map<String, dynamic> map,
  ) {
    return ManagedClusterServicePrincipalProfile(
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      secret: (() {
        final guardedValue = map['secret'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
