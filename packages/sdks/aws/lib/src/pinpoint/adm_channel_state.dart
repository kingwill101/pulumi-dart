// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AdmChannel resources.
class AdmChannelState {
  /// The application ID.
  final pulumi.Input<String>? applicationId;
  /// Client ID (part of OAuth Credentials) obtained via Amazon Developer Account.
  final pulumi.Input<String>? clientId;
  /// Client Secret (part of OAuth Credentials) obtained via Amazon Developer Account.
  final pulumi.Input<String>? clientSecret;
  /// Specifies whether to enable the channel. Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [AdmChannelState].
  /// [applicationId] The application ID.
  /// [clientId] Client ID (part of OAuth Credentials) obtained via Amazon Developer Account.
  /// [clientSecret] Client Secret (part of OAuth Credentials) obtained via Amazon Developer Account.
  /// [enabled] Specifies whether to enable the channel. Defaults to `true`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  AdmChannelState({
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
      applicationId: map['applicationId'] == null ? null : ((map['applicationId'] as String).input()).input(),
      clientId: map['clientId'] == null ? null : ((map['clientId'] as String).input()).input(),
      clientSecret: map['clientSecret'] == null ? null : ((map['clientSecret'] as String).input()).input(),
      enabled: map['enabled'] == null ? null : ((map['enabled'] as bool).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

