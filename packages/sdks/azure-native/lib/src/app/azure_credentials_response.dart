// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Container App credentials.
class AzureCredentialsResponse {
  /// Subscription Id.
  final pulumi.Input<String>? subscriptionId;

  /// Creates a new [AzureCredentialsResponse].
  /// [subscriptionId] Subscription Id.
  AzureCredentialsResponse({this.subscriptionId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'subscriptionId': ?subscriptionId};
  }

  factory AzureCredentialsResponse.fromMap(Map<String, dynamic> map) {
    return AzureCredentialsResponse(
      subscriptionId: (() {
        final guardedValue = map['subscriptionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
