// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_pinpoint_adm_channel_adm_channel_args_doc}
/// The set of arguments for AdmChannel.
/// {@endtemplate}
/// {@macro pulumi_pinpoint_adm_channel_adm_channel_args_doc}
class AdmChannelArgs {
  /// The application ID.
  final pulumi.Input<String> applicationId;
  /// Client ID (part of OAuth Credentials) obtained via Amazon Developer Account.
  final pulumi.Input<String> clientId;
  /// Client Secret (part of OAuth Credentials) obtained via Amazon Developer Account.
  final pulumi.Input<String> clientSecret;
  /// Specifies whether to enable the channel. Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [AdmChannelArgs].
  /// [applicationId] The application ID.
  /// [clientId] Client ID (part of OAuth Credentials) obtained via Amazon Developer Account.
  /// [clientSecret] Client Secret (part of OAuth Credentials) obtained via Amazon Developer Account.
  /// [enabled] Specifies whether to enable the channel. Defaults to `true`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  AdmChannelArgs({
    required pulumi.Output<String> applicationId,
    required pulumi.Output<String> clientId,
    required pulumi.Output<String> clientSecret,
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? region,
  }) :
      applicationId = pulumi.Input.asInput<String>(applicationId),
      clientId = pulumi.Input.asInput<String>(clientId),
      clientSecret = pulumi.Input.asInput<String>(clientSecret),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': applicationId,
      'clientId': clientId,
      'clientSecret': clientSecret,
      'enabled': ?enabled,
      'region': ?region,
    };
  }

  factory AdmChannelArgs.fromMap(Map<String, dynamic> map) {
    return AdmChannelArgs(
      applicationId: pulumi.Output.create<String>(map['applicationId'] as String),
      clientId: pulumi.Output.create<String>(map['clientId'] as String),
      clientSecret: pulumi.Output.create<String>(map['clientSecret'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

