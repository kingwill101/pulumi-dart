// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkspaceConnectionServicePrincipal {
  final pulumi.Input<String>? clientId;
  final pulumi.Input<String>? clientSecret;
  final pulumi.Input<String>? tenantId;

  /// Creates a new [WorkspaceConnectionServicePrincipal].
  /// [clientId] Optional.
  /// [clientSecret] Optional.
  /// [tenantId] Optional.
  WorkspaceConnectionServicePrincipal({
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

  factory WorkspaceConnectionServicePrincipal.fromMap(Map<String, dynamic> map) {
    return WorkspaceConnectionServicePrincipal(
      clientId: map['clientId'] == null ? null : (map['clientId']! as String).input(),
      clientSecret: map['clientSecret'] == null ? null : (map['clientSecret']! as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId']! as String).input(),
    );
  }
}

