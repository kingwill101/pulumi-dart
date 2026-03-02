// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Container App credentials.
class AzureCredentialsResponse {
  /// Subscription Id.
  final pulumi.Input<String>? subscriptionId;

  /// Creates a new [AzureCredentialsResponse].
  /// [subscriptionId] Subscription Id.
  AzureCredentialsResponse({
    this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subscriptionId': ?subscriptionId,
    };
  }

  factory AzureCredentialsResponse.fromMap(Map<String, dynamic> map) {
    return AzureCredentialsResponse(
      subscriptionId: map['subscriptionId'] == null ? null : (map['subscriptionId'] as String).input(),
    );
  }
}

