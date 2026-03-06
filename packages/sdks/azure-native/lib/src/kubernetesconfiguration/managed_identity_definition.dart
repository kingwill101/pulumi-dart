// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Parameters to authenticate using a Managed Identity.
class ManagedIdentityDefinition {
  /// The client Id for authenticating a Managed Identity.
  final pulumi.Input<String>? clientId;

  /// Creates a new [ManagedIdentityDefinition].
  /// [clientId] The client Id for authenticating a Managed Identity.
  const ManagedIdentityDefinition({
    this.clientId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
    };
  }

  factory ManagedIdentityDefinition.fromMap(Map<String, dynamic> map) {
    return ManagedIdentityDefinition(
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

