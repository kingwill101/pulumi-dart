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
    pulumi.Output<String>? applicationId,
    pulumi.Output<String>? clientId,
    pulumi.Output<String>? clientSecret,
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? region,
  }) :
      applicationId = pulumi.Input.asOptionalInput<String>(applicationId),
      clientId = pulumi.Input.asOptionalInput<String>(clientId),
      clientSecret = pulumi.Input.asOptionalInput<String>(clientSecret),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      region = pulumi.Input.asOptionalInput<String>(region);

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
      applicationId: map['applicationId'] == null ? null : pulumi.Output.create<String>(map['applicationId'] as String),
      clientId: map['clientId'] == null ? null : pulumi.Output.create<String>(map['clientId'] as String),
      clientSecret: map['clientSecret'] == null ? null : pulumi.Output.create<String>(map['clientSecret'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

