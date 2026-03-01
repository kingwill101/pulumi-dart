// ignore_for_file: unused_element, unnecessary_cast


/// The parameters to provide for the Sms channel.
class SmsChannelProperties {
  /// The Sms account SID. Value only returned through POST to the action Channel List API, otherwise empty.
  final String accountSID;
  /// The Sms auth token. Value only returned through POST to the action Channel List API, otherwise empty.
  final String? authToken;
  /// Whether this channel is enabled for the bot
  final bool isEnabled;
  /// Whether this channel is validated for the bot
  final bool? isValidated;
  /// The Sms phone
  final String phone;

  /// Creates a new [SmsChannelProperties].
  /// [accountSID] The Sms account SID. Value only returned through POST to the action Channel List API, otherwise empty.
  /// [authToken] The Sms auth token. Value only returned through POST to the action Channel List API, otherwise empty.
  /// [isEnabled] Whether this channel is enabled for the bot
  /// [isValidated] Whether this channel is validated for the bot
  /// [phone] The Sms phone
  SmsChannelProperties({
    required this.accountSID,
    this.authToken,
    required this.isEnabled,
    this.isValidated,
    required this.phone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountSID': accountSID,
      'authToken': ?authToken,
      'isEnabled': isEnabled,
      'isValidated': ?isValidated,
      'phone': phone,
    };
  }

  factory SmsChannelProperties.fromMap(Map<String, dynamic> map) {
    return SmsChannelProperties(
      accountSID: map['accountSID'] as String,
      authToken: map['authToken'] == null ? null : map['authToken'] as String,
      isEnabled: map['isEnabled'] as bool,
      isValidated: map['isValidated'] == null ? null : map['isValidated'] as bool,
      phone: map['phone'] as String,
    );
  }
}

