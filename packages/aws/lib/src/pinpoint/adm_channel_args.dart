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
    required String applicationId,
    required String clientId,
    required String clientSecret,
    bool? enabled,
    String? region,
  })  : applicationId = pulumi.Input.asInput<String>(applicationId),
        clientId = pulumi.Input.asInput<String>(clientId),
        clientSecret = pulumi.Input.asInput<String>(clientSecret),
        enabled = pulumi.Input.asOptionalInput<bool>(enabled),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['applicationId'] = applicationId;
    map['clientId'] = clientId;
    map['clientSecret'] = clientSecret;
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory AdmChannelArgs.fromMap(Map<String, dynamic> map) {
    return AdmChannelArgs(
      applicationId: map['applicationId'] as String,
      clientId: map['clientId'] as String,
      clientSecret: map['clientSecret'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
