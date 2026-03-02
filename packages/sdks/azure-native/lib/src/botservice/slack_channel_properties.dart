// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The parameters to provide for the Slack channel.
class SlackChannelProperties {
  /// The Slack client id
  final pulumi.Input<String>? clientId;
  /// The Slack client secret. Value only returned through POST to the action Channel List API, otherwise empty.
  final pulumi.Input<String>? clientSecret;
  /// Whether this channel is enabled for the bot
  final pulumi.Input<bool> isEnabled;
  /// The Slack landing page Url
  final pulumi.Input<String>? landingPageUrl;
  /// Whether to register the settings before OAuth validation is performed. Recommended to True.
  final pulumi.Input<bool>? registerBeforeOAuthFlow;
  /// The Slack permission scopes.
  final pulumi.Input<String>? scopes;
  /// The Slack signing secret.
  final pulumi.Input<String>? signingSecret;
  /// The Slack verification token. Value only returned through POST to the action Channel List API, otherwise empty.
  final pulumi.Input<String>? verificationToken;

  /// Creates a new [SlackChannelProperties].
  /// [clientId] The Slack client id
  /// [clientSecret] The Slack client secret. Value only returned through POST to the action Channel List API, otherwise empty.
  /// [isEnabled] Whether this channel is enabled for the bot
  /// [landingPageUrl] The Slack landing page Url
  /// [registerBeforeOAuthFlow] Whether to register the settings before OAuth validation is performed. Recommended to True.
  /// [scopes] The Slack permission scopes.
  /// [signingSecret] The Slack signing secret.
  /// [verificationToken] The Slack verification token. Value only returned through POST to the action Channel List API, otherwise empty.
  SlackChannelProperties({
    this.clientId,
    this.clientSecret,
    required this.isEnabled,
    this.landingPageUrl,
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
      'landingPageUrl': ?landingPageUrl,
      'registerBeforeOAuthFlow': ?registerBeforeOAuthFlow,
      'scopes': ?scopes,
      'signingSecret': ?signingSecret,
      'verificationToken': ?verificationToken,
    };
  }

  factory SlackChannelProperties.fromMap(Map<String, dynamic> map) {
    return SlackChannelProperties(
      clientId: map['clientId'] == null ? null : (map['clientId'] as String).input(),
      clientSecret: map['clientSecret'] == null ? null : (map['clientSecret'] as String).input(),
      isEnabled: (map['isEnabled'] as bool).input(),
      landingPageUrl: map['landingPageUrl'] == null ? null : (map['landingPageUrl'] as String).input(),
      registerBeforeOAuthFlow: map['registerBeforeOAuthFlow'] == null ? null : (map['registerBeforeOAuthFlow'] as bool).input(),
      scopes: map['scopes'] == null ? null : (map['scopes'] as String).input(),
      signingSecret: map['signingSecret'] == null ? null : (map['signingSecret'] as String).input(),
      verificationToken: map['verificationToken'] == null ? null : (map['verificationToken'] as String).input(),
    );
  }
}

