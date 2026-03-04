// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The parameters to provide for the Sms channel.
class SmsChannelProperties {
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
      accountSID: pulumi.Input.fromValue(map['accountSID'] as String),
      authToken: (() {
        final guardedValue = map['authToken'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      isEnabled: pulumi.Input.fromValue(map['isEnabled'] as bool),
      isValidated: (() {
        final guardedValue = map['isValidated'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      phone: pulumi.Input.fromValue(map['phone'] as String),
    );
  }
}
