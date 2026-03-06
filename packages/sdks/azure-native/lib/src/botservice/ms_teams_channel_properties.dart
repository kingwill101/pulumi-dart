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
  const MsTeamsChannelProperties({
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
      acceptedTerms: (() { final guardedValue = map['acceptedTerms']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      callingWebhook: (() { final guardedValue = map['callingWebhook']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploymentEnvironment: (() { final guardedValue = map['deploymentEnvironment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableCalling: (() { final guardedValue = map['enableCalling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      incomingCallRoute: (() { final guardedValue = map['incomingCallRoute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isEnabled: pulumi.Input.fromValue(map['isEnabled'] as bool),
    );
  }
}

