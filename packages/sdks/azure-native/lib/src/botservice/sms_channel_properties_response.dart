// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The parameters to provide for the Sms channel.
class SmsChannelPropertiesResponse {
  /// The Sms account SID. Value only returned through POST to the action Channel List API, otherwise empty.
  final pulumi.Input<String> accountSID;
  /// The Sms auth token. Value only returned through POST to the action Channel List API, otherwise empty.
  final pulumi.Input<String>? authToken;
  /// Whether this channel is enabled for the bot
  final pulumi.Input<bool> isEnabled;
  /// Whether this channel is validated for the bot
  final pulumi.Input<bool>? isValidated;
  /// The Sms phone
  final pulumi.Input<String> phone;

  /// Creates a new [SmsChannelPropertiesResponse].
  /// [accountSID] The Sms account SID. Value only returned through POST to the action Channel List API, otherwise empty.
  /// [authToken] The Sms auth token. Value only returned through POST to the action Channel List API, otherwise empty.
  /// [isEnabled] Whether this channel is enabled for the bot
  /// [isValidated] Whether this channel is validated for the bot
  /// [phone] The Sms phone
  SmsChannelPropertiesResponse({
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

  factory SmsChannelPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SmsChannelPropertiesResponse(
      accountSID: (map['accountSID'] as String).input(),
      authToken: map['authToken'] == null ? null : (map['authToken']! as String).input(),
      isEnabled: (map['isEnabled'] as bool).input(),
      isValidated: map['isValidated'] == null ? null : (map['isValidated']! as bool).input(),
      phone: (map['phone'] as String).input(),
    );
  }
}

