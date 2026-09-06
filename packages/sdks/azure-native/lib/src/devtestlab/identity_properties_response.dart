// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of a managed identity
class IdentityPropertiesResponse {
  /// The client secret URL of the identity.
  final pulumi.Input<String?>? clientSecretUrl;
  /// The principal id of resource identity.
  final pulumi.Input<String?>? principalId;
  /// The tenant identifier of resource.
  final pulumi.Input<String?>? tenantId;
  /// Managed identity.
  final pulumi.Input<String?>? type;

  /// Creates a new [IdentityPropertiesResponse].
  /// [clientSecretUrl] The client secret URL of the identity.
  /// [principalId] The principal id of resource identity.
  /// [tenantId] The tenant identifier of resource.
  /// [type] Managed identity.
  const IdentityPropertiesResponse({
    this.clientSecretUrl,
    this.principalId,
    this.tenantId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientSecretUrl': ?clientSecretUrl,
      'principalId': ?principalId,
      'tenantId': ?tenantId,
      'type': ?type,
    };
  }

  factory IdentityPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return IdentityPropertiesResponse(
      clientSecretUrl: (() { final guardedValue = map['clientSecretUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principalId: (() { final guardedValue = map['principalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
