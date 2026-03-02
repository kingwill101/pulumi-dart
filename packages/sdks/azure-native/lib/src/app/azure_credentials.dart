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
  AzureCredentials({
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
      clientId: map['clientId'] == null ? null : (map['clientId']! as String).input(),
      clientSecret: map['clientSecret'] == null ? null : (map['clientSecret']! as String).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      subscriptionId: map['subscriptionId'] == null ? null : (map['subscriptionId']! as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId']! as String).input(),
    );
  }
}

