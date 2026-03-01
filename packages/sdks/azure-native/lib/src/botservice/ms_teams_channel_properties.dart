// ignore_for_file: unused_element, unnecessary_cast


/// The parameters to provide for the Microsoft Teams channel.
class MsTeamsChannelProperties {
  /// Whether this channel accepted terms
  final bool? acceptedTerms;
  /// Webhook for Microsoft Teams channel calls
  final String? callingWebhook;
  /// Deployment environment for Microsoft Teams channel calls
  final String? deploymentEnvironment;
  /// Enable calling for Microsoft Teams channel
  final bool? enableCalling;
  /// Webhook for Microsoft Teams channel calls
  final String? incomingCallRoute;
  /// Whether this channel is enabled for the bot
  final bool isEnabled;

  /// Creates a new [MsTeamsChannelProperties].
  /// [acceptedTerms] Whether this channel accepted terms
  /// [callingWebhook] Webhook for Microsoft Teams channel calls
  /// [deploymentEnvironment] Deployment environment for Microsoft Teams channel calls
  /// [enableCalling] Enable calling for Microsoft Teams channel
  /// [incomingCallRoute] Webhook for Microsoft Teams channel calls
  /// [isEnabled] Whether this channel is enabled for the bot
  MsTeamsChannelProperties({
    this.acceptedTerms,
    this.callingWebhook,
    this.deploymentEnvironment,
    this.enableCalling,
    this.incomingCallRoute,
    required this.isEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptedTerms': ?acceptedTerms,
      'callingWebhook': ?callingWebhook,
      'deploymentEnvironment': ?deploymentEnvironment,
      'enableCalling': ?enableCalling,
      'incomingCallRoute': ?incomingCallRoute,
      'isEnabled': isEnabled,
    };
  }

  factory MsTeamsChannelProperties.fromMap(Map<String, dynamic> map) {
    return MsTeamsChannelProperties(
      acceptedTerms: map['acceptedTerms'] == null ? null : map['acceptedTerms'] as bool,
      callingWebhook: map['callingWebhook'] == null ? null : map['callingWebhook'] as String,
      deploymentEnvironment: map['deploymentEnvironment'] == null ? null : map['deploymentEnvironment'] as String,
      enableCalling: map['enableCalling'] == null ? null : map['enableCalling'] as bool,
      incomingCallRoute: map['incomingCallRoute'] == null ? null : map['incomingCallRoute'] as String,
      isEnabled: map['isEnabled'] as bool,
    );
  }
}

