// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Azure mobile App push notification receiver.
class MicrosoftCommonAzureAppPushReceiver {
  /// The email address registered for the Azure mobile app.
  final pulumi.Input<String> emailAddress;
  /// The name of the Azure mobile app push receiver. Names must be unique across all receivers within an action group.
  final pulumi.Input<String> name;

  /// Creates a new [MicrosoftCommonAzureAppPushReceiver].
  /// [emailAddress] The email address registered for the Azure mobile app.
  /// [name] The name of the Azure mobile app push receiver. Names must be unique across all receivers within an action group.
  const MicrosoftCommonAzureAppPushReceiver({
    required this.emailAddress,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emailAddress': emailAddress,
      'name': name,
    };
  }

  factory MicrosoftCommonAzureAppPushReceiver.fromMap(Map<String, dynamic> map) {
    return MicrosoftCommonAzureAppPushReceiver(
      emailAddress: pulumi.Input.fromValue(map['emailAddress'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
