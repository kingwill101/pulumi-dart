// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Username / Password Credentials to connect to guest.
class GuestCredentialVMInstanceGuestAgentResponse {
  /// Private key used to authenticate to a virtual machine through ssh.
  final pulumi.Input<String>? privateKey;
  /// Gets or sets username to connect with the guest.
  final pulumi.Input<String>? username;

  /// Creates a new [GuestCredentialVMInstanceGuestAgentResponse].
  /// [privateKey] Private key used to authenticate to a virtual machine through ssh.
  /// [username] Gets or sets username to connect with the guest.
  const GuestCredentialVMInstanceGuestAgentResponse({
    this.privateKey,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateKey': ?privateKey,
      'username': ?username,
    };
  }

  factory GuestCredentialVMInstanceGuestAgentResponse.fromMap(Map<String, dynamic> map) {
    return GuestCredentialVMInstanceGuestAgentResponse(
      privateKey: (() { final guardedValue = map['privateKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
