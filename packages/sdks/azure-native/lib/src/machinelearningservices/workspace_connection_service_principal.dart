// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkspaceConnectionServicePrincipal {
  final pulumi.Input<String?>? clientId;
  final pulumi.Input<String?>? clientSecret;
  final pulumi.Input<String?>? tenantId;

  /// Creates a new [WorkspaceConnectionServicePrincipal].
  /// [clientId] Optional.
  /// [clientSecret] Optional.
  /// [tenantId] Optional.
  const WorkspaceConnectionServicePrincipal({
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
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
