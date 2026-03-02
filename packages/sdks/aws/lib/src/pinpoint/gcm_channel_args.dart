// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_pinpoint_gcm_channel_gcm_channel_args_doc}
/// The set of arguments for GcmChannel.
/// {@endtemplate}
/// {@macro pulumi_pinpoint_gcm_channel_gcm_channel_args_doc}
class GcmChannelArgs {
  /// Platform credential API key from Google.
  final pulumi.Input<String>? apiKey;
  /// The application ID.
  final pulumi.Input<String> applicationId;
  final pulumi.Input<String>? defaultAuthenticationMethod;
  /// Whether the channel is enabled or disabled. Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<String>? serviceJson;

  /// Creates a new [GcmChannelArgs].
  /// [apiKey] Platform credential API key from Google.
  /// [applicationId] The application ID.
  /// [defaultAuthenticationMethod] Optional.
  /// [enabled] Whether the channel is enabled or disabled. Defaults to `true`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceJson] Optional.
  GcmChannelArgs({
    this.apiKey,
    required this.applicationId,
    this.defaultAuthenticationMethod,
    this.enabled,
    this.region,
    this.serviceJson,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
      'applicationId': applicationId,
      'defaultAuthenticationMethod': ?defaultAuthenticationMethod,
      'enabled': ?enabled,
      'region': ?region,
      'serviceJson': ?serviceJson,
    };
  }

  factory GcmChannelArgs.fromMap(Map<String, dynamic> map) {
    return GcmChannelArgs(
      apiKey: map['apiKey'] == null ? null : ((map['apiKey'] as String).input()).input(),
      applicationId: (map['applicationId'] as String).input(),
      defaultAuthenticationMethod: map['defaultAuthenticationMethod'] == null ? null : ((map['defaultAuthenticationMethod'] as String).input()).input(),
      enabled: map['enabled'] == null ? null : ((map['enabled'] as bool).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      serviceJson: map['serviceJson'] == null ? null : ((map['serviceJson'] as String).input()).input(),
    );
  }
}

