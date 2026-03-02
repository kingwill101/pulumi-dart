// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Azure mobile App push notification receiver.
class AzureAppPushReceiver {
  /// The email address registered for the Azure mobile app.
  final pulumi.Input<String> emailAddress;
  /// The name of the Azure mobile app push receiver. Names must be unique across all receivers within a tenant action group.
  final pulumi.Input<String> name;

  /// Creates a new [AzureAppPushReceiver].
  /// [emailAddress] The email address registered for the Azure mobile app.
  /// [name] The name of the Azure mobile app push receiver. Names must be unique across all receivers within a tenant action group.
  AzureAppPushReceiver({
    required this.emailAddress,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emailAddress': emailAddress,
      'name': name,
    };
  }

  factory AzureAppPushReceiver.fromMap(Map<String, dynamic> map) {
    return AzureAppPushReceiver(
      emailAddress: (map['emailAddress'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

