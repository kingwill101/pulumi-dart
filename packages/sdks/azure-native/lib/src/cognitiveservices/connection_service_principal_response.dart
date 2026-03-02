// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionServicePrincipalResponse {
  final pulumi.Input<String>? clientId;
  final pulumi.Input<String>? clientSecret;
  final pulumi.Input<String>? tenantId;

  /// Creates a new [ConnectionServicePrincipalResponse].
  /// [clientId] Optional.
  /// [clientSecret] Optional.
  /// [tenantId] Optional.
  ConnectionServicePrincipalResponse({
    this.clientId,
    this.clientSecret,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'tenantId': ?tenantId,
    };
  }

  factory ConnectionServicePrincipalResponse.fromMap(Map<String, dynamic> map) {
    return ConnectionServicePrincipalResponse(
      clientId: map['clientId'] == null ? null : (map['clientId']! as String).input(),
      clientSecret: map['clientSecret'] == null ? null : (map['clientSecret']! as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId']! as String).input(),
    );
  }
}

