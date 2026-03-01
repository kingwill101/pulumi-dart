// ignore_for_file: unused_element, unnecessary_cast


/// The parameters to provide for the Email channel.
class EmailChannelPropertiesResponse {
  /// Email channel auth method. 0 Password (Default); 1 Graph.
  final double? authMethod;
  /// The email address
  final String emailAddress;
  /// Whether this channel is enabled for the bot
  final bool isEnabled;
  /// The magic code for setting up the modern authentication.
  final String? magicCode;
  /// The password for the email address. Value only returned through POST to the action Channel List API, otherwise empty.
  final String? password;

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
      authMethod: map['authMethod'] == null ? null : map['authMethod'] as double,
      emailAddress: map['emailAddress'] as String,
      isEnabled: map['isEnabled'] as bool,
      magicCode: map['magicCode'] == null ? null : map['magicCode'] as String,
      password: map['password'] == null ? null : map['password'] as String,
    );
  }
}

