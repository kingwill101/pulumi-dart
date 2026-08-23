// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The parameters to provide for the Email channel.
class EmailChannelProperties {
  /// Email channel auth method. 0 Password (Default); 1 Graph.
  final pulumi.Input<double>? authMethod;
  /// The email address
  final pulumi.Input<String> emailAddress;
  /// Whether this channel is enabled for the bot
  final pulumi.Input<bool> isEnabled;
  /// The magic code for setting up the modern authentication.
  final pulumi.Input<String>? magicCode;
  /// The password for the email address. Value only returned through POST to the action Channel List API, otherwise empty.
  final pulumi.Input<String>? password;

  /// Creates a new [EmailChannelProperties].
  /// [authMethod] Email channel auth method. 0 Password (Default); 1 Graph.
  /// [emailAddress] The email address
  /// [isEnabled] Whether this channel is enabled for the bot
  /// [magicCode] The magic code for setting up the modern authentication.
  /// [password] The password for the email address. Value only returned through POST to the action Channel List API, otherwise empty.
  const EmailChannelProperties({
    this.authMethod,
    required this.emailAddress,
    required this.isEnabled,
    this.magicCode,
    this.password,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authMethod': ?authMethod,
      'emailAddress': emailAddress,
      'isEnabled': isEnabled,
      'magicCode': ?magicCode,
      'password': ?password,
    };
  }

  factory EmailChannelProperties.fromMap(Map<String, dynamic> map) {
    return EmailChannelProperties(
      authMethod: (() { final guardedValue = map['authMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      emailAddress: pulumi.Input.fromValue(map['emailAddress'] as String),
      isEnabled: pulumi.Input.fromValue(map['isEnabled'] as bool),
      magicCode: (() { final guardedValue = map['magicCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
