// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The parameters to provide for the Microsoft Teams channel.
class MsTeamsChannelProperties {
  /// Whether this channel accepted terms
  final pulumi.Input<bool>? acceptedTerms;
  /// Webhook for Microsoft Teams channel calls
  final pulumi.Input<String>? callingWebhook;
  /// Deployment environment for Microsoft Teams channel calls
  final pulumi.Input<String>? deploymentEnvironment;
  /// Enable calling for Microsoft Teams channel
  final pulumi.Input<bool>? enableCalling;
  /// Webhook for Microsoft Teams channel calls
  final pulumi.Input<String>? incomingCallRoute;
  /// Whether this channel is enabled for the bot
  final pulumi.Input<bool> isEnabled;

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
      acceptedTerms: map['acceptedTerms'] == null ? null : (map['acceptedTerms'] as bool).input(),
      callingWebhook: map['callingWebhook'] == null ? null : (map['callingWebhook'] as String).input(),
      deploymentEnvironment: map['deploymentEnvironment'] == null ? null : (map['deploymentEnvironment'] as String).input(),
      enableCalling: map['enableCalling'] == null ? null : (map['enableCalling'] as bool).input(),
      incomingCallRoute: map['incomingCallRoute'] == null ? null : (map['incomingCallRoute'] as String).input(),
      isEnabled: (map['isEnabled'] as bool).input(),
    );
  }
}

