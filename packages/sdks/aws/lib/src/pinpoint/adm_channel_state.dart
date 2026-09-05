// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AdmChannel resources.
class AdmChannelState {
  /// Application ID.
  final pulumi.Input<String?>? applicationId;
  /// Client ID (part of OAuth Credentials) obtained via Amazon Developer Account.
  final pulumi.Input<String?>? clientId;
  /// Client Secret (part of OAuth Credentials) obtained via Amazon Developer Account.
  final pulumi.Input<String?>? clientSecret;
  /// Whether to enable the channel. Defaults to `true`.
  final pulumi.Input<bool?>? enabled;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [AdmChannelState].
  /// [applicationId] Application ID.
  /// [clientId] Client ID (part of OAuth Credentials) obtained via Amazon Developer Account.
  /// [clientSecret] Client Secret (part of OAuth Credentials) obtained via Amazon Developer Account.
  /// [enabled] Whether to enable the channel. Defaults to `true`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const AdmChannelState({
    this.applicationId,
    this.clientId,
    this.clientSecret,
    this.enabled,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'enabled': ?enabled,
      'region': ?region,
    };
  }

  factory AdmChannelState.fromMap(Map<String, dynamic> map) {
    return AdmChannelState(
      applicationId: (() { final guardedValue = map['applicationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
