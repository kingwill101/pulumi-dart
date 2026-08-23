// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_pinpoint_gcm_channel_gcm_channel_args_doc}
/// The set of arguments for GcmChannel.
/// {@endtemplate}
/// {@macro pulumi_pinpoint_gcm_channel_gcm_channel_args_doc}
class GcmChannelArgs {
  /// Platform credential API key from Google. Conflicts with `serviceJson`.
  final pulumi.Input<String>? apiKey;
  /// Application ID.
  final pulumi.Input<String> applicationId;
  /// Default authentication method used for GCM. Valid values: `KEY`, `TOKEN`. Defaults to `KEY`.
  final pulumi.Input<String>? defaultAuthenticationMethod;
  /// Whether the channel is enabled or disabled. Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Service Account JSON from Google to use with the GCM API. Conflicts with `apiKey`.
  final pulumi.Input<String>? serviceJson;

  /// Creates a new [GcmChannelArgs].
  /// [apiKey] Platform credential API key from Google. Conflicts with `serviceJson`.
  /// [applicationId] Application ID.
  /// [defaultAuthenticationMethod] Default authentication method used for GCM. Valid values: `KEY`, `TOKEN`. Defaults to `KEY`.
  /// [enabled] Whether the channel is enabled or disabled. Defaults to `true`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceJson] Service Account JSON from Google to use with the GCM API. Conflicts with `apiKey`.
  const GcmChannelArgs({
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
      apiKey: (() { final guardedValue = map['apiKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      applicationId: pulumi.Input.fromValue(map['applicationId'] as String),
      defaultAuthenticationMethod: (() { final guardedValue = map['defaultAuthenticationMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceJson: (() { final guardedValue = map['serviceJson']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
