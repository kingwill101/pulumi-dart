// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The parameters to provide for the Email channel.
class EmailChannelPropertiesResponse {
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

  /// Creates a new [EmailChannelPropertiesResponse].
  /// [authMethod] Email channel auth method. 0 Password (Default); 1 Graph.
  /// [emailAddress] The email address
  /// [isEnabled] Whether this channel is enabled for the bot
  /// [magicCode] The magic code for setting up the modern authentication.
  /// [password] The password for the email address. Value only returned through POST to the action Channel List API, otherwise empty.
  EmailChannelPropertiesResponse({
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

  factory EmailChannelPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return EmailChannelPropertiesResponse(
      authMethod: map['authMethod'] == null ? null : (map['authMethod'] as double).input(),
      emailAddress: (map['emailAddress'] as String).input(),
      isEnabled: (map['isEnabled'] as bool).input(),
      magicCode: map['magicCode'] == null ? null : (map['magicCode'] as String).input(),
      password: map['password'] == null ? null : (map['password'] as String).input(),
    );
  }
}

