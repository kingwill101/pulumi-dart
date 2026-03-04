// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the guest agent settings for the virtual machine.
class GuestAgentProfile {
  /// Gets or sets the Public Key provided by the client for enabling guest management.
  final pulumi.Input<String>? clientPublicKey;

  /// Creates a new [GuestAgentProfile].
  /// [clientPublicKey] Gets or sets the Public Key provided by the client for enabling guest management.
  GuestAgentProfile({this.clientPublicKey});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'clientPublicKey': ?clientPublicKey};
  }

  factory GuestAgentProfile.fromMap(Map<String, dynamic> map) {
    return GuestAgentProfile(
      clientPublicKey: (() {
        final guardedValue = map['clientPublicKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
