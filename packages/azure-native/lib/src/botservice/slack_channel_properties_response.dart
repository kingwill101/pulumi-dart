// ignore_for_file: unused_element, unnecessary_cast


/// The parameters to provide for the Slack channel.
class SlackChannelPropertiesResponse {
  /// The Slack client id
  final String? clientId;
  /// The Slack client secret. Value only returned through POST to the action Channel List API, otherwise empty.
  final String? clientSecret;
  /// Whether this channel is enabled for the bot
  final bool isEnabled;
  /// Whether this channel is validated for the bot
  final bool isValidated;
  /// The Slack landing page Url
  final String? landingPageUrl;
  /// The Sms auth token
  final String lastSubmissionId;
  /// The Slack redirect action
  final String redirectAction;
  /// Whether to register the settings before OAuth validation is performed. Recommended to True.
  final bool? registerBeforeOAuthFlow;
  /// The Slack permission scopes.
  final String? scopes;
  /// The Slack signing secret.
  final String? signingSecret;
  /// The Slack verification token. Value only returned through POST to the action Channel List API, otherwise empty.
  final String? verificationToken;

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
  SlackChannelPropertiesResponse({
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
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      clientSecret: map['clientSecret'] == null ? null : map['clientSecret'] as String,
      isEnabled: map['isEnabled'] as bool,
      isValidated: map['isValidated'] as bool,
      landingPageUrl: map['landingPageUrl'] == null ? null : map['landingPageUrl'] as String,
      lastSubmissionId: map['lastSubmissionId'] as String,
      redirectAction: map['redirectAction'] as String,
      registerBeforeOAuthFlow: map['registerBeforeOAuthFlow'] == null ? null : map['registerBeforeOAuthFlow'] as bool,
      scopes: map['scopes'] == null ? null : map['scopes'] as String,
      signingSecret: map['signingSecret'] == null ? null : map['signingSecret'] as String,
      verificationToken: map['verificationToken'] == null ? null : map['verificationToken'] as String,
    );
  }
}

