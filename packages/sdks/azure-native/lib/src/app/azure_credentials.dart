// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Container App credentials.
class AzureCredentials {
  /// Client Id.
  final pulumi.Input<String>? clientId;
  /// Client Secret.
  final pulumi.Input<String>? clientSecret;
  /// Kind of auth github does for deploying the template
  final pulumi.Input<String>? kind;
  /// Subscription Id.
  final pulumi.Input<String>? subscriptionId;
  /// Tenant Id.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [AzureCredentials].
  /// [clientId] Client Id.
  /// [clientSecret] Client Secret.
  /// [kind] Kind of auth github does for deploying the template
  /// [subscriptionId] Subscription Id.
  /// [tenantId] Tenant Id.
  const AzureCredentials({
    this.clientId,
    this.clientSecret,
    this.kind,
    this.subscriptionId,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'kind': ?kind,
      'subscriptionId': ?subscriptionId,
      'tenantId': ?tenantId,
    };
  }

  factory AzureCredentials.fromMap(Map<String, dynamic> map) {
    return AzureCredentials(
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

