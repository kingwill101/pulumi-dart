// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The parameters to provide for the Slack channel.
class SlackChannelPropertiesResponse {
  /// The Slack client id
  final pulumi.Input<String>? clientId;
  /// The Slack client secret. Value only returned through POST to the action Channel List API, otherwise empty.
  final pulumi.Input<String>? clientSecret;
  /// Whether this channel is enabled for the bot
  final pulumi.Input<bool> isEnabled;
  /// Whether this channel is validated for the bot
  final pulumi.Input<bool> isValidated;
  /// The Slack landing page Url
  final pulumi.Input<String>? landingPageUrl;
  /// The Sms auth token
  final pulumi.Input<String> lastSubmissionId;
  /// The Slack redirect action
  final pulumi.Input<String> redirectAction;
  /// Whether to register the settings before OAuth validation is performed. Recommended to True.
  final pulumi.Input<bool>? registerBeforeOAuthFlow;
  /// The Slack permission scopes.
  final pulumi.Input<String>? scopes;
  /// The Slack signing secret.
  final pulumi.Input<String>? signingSecret;
  /// The Slack verification token. Value only returned through POST to the action Channel List API, otherwise empty.
  final pulumi.Input<String>? verificationToken;

  /// Creates a new [SlackChannelPropertiesResponse].
  /// [clientId] The Slack client id
  /// [clientSecret] The Slack client secret. Value only returned through POST to the action Channel List API, otherwise empty.
  /// [isEnabled] Whether this channel is enabled for the bot
  /// [isValidated] Whether this channel is validated for the bot
  /// [landingPageUrl] The Slack landing page Url
  /// [lastSubmissionId] The Sms auth token
  /// [redirectAction] The Slack redirect action
  /// [registerBeforeOAuthFlow] Whether to register the settings before OAuth validation is performed. Recommended to True.
  /// [scopes] The Slack permission scopes.
  /// [signingSecret] The Slack signing secret.
  /// [verificationToken] The Slack verification token. Value only returned through POST to the action Channel List API, otherwise empty.
  const SlackChannelPropertiesResponse({
    this.clientId,
    this.clientSecret,
    required this.isEnabled,
    required this.isValidated,
    this.landingPageUrl,
    required this.lastSubmissionId,
    required this.redirectAction,
    this.registerBeforeOAuthFlow,
    this.scopes,
    this.signingSecret,
    this.verificationToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'isEnabled': isEnabled,
      'isValidated': isValidated,
      'landingPageUrl': ?landingPageUrl,
      'lastSubmissionId': lastSubmissionId,
      'redirectAction': redirectAction,
      'registerBeforeOAuthFlow': ?registerBeforeOAuthFlow,
      'scopes': ?scopes,
      'signingSecret': ?signingSecret,
      'verificationToken': ?verificationToken,
    };
  }

  factory SlackChannelPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SlackChannelPropertiesResponse(
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isEnabled: pulumi.Input.fromValue(map['isEnabled'] as bool),
      isValidated: pulumi.Input.fromValue(map['isValidated'] as bool),
      landingPageUrl: (() { final guardedValue = map['landingPageUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastSubmissionId: pulumi.Input.fromValue(map['lastSubmissionId'] as String),
      redirectAction: pulumi.Input.fromValue(map['redirectAction'] as String),
      registerBeforeOAuthFlow: (() { final guardedValue = map['registerBeforeOAuthFlow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      signingSecret: (() { final guardedValue = map['signingSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      verificationToken: (() { final guardedValue = map['verificationToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

