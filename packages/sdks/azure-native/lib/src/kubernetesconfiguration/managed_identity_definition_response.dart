// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Parameters to authenticate using a Managed Identity.
class ManagedIdentityDefinitionResponse {
  /// The client Id for authenticating a Managed Identity.
  final pulumi.Input<String?>? clientId;

  /// Creates a new [ManagedIdentityDefinitionResponse].
  /// [clientId] The client Id for authenticating a Managed Identity.
  const ManagedIdentityDefinitionResponse({
    this.clientId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
    };
  }

  factory ManagedIdentityDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return ManagedIdentityDefinitionResponse(
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
