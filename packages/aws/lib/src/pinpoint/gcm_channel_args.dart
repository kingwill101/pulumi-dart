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
    String? apiKey,
    required String applicationId,
    String? defaultAuthenticationMethod,
    bool? enabled,
    String? region,
    String? serviceJson,
  })  : apiKey = pulumi.Input.asOptionalInput<String>(apiKey),
        applicationId = pulumi.Input.asInput<String>(applicationId),
        defaultAuthenticationMethod =
            pulumi.Input.asOptionalInput<String>(defaultAuthenticationMethod),
        enabled = pulumi.Input.asOptionalInput<bool>(enabled),
        region = pulumi.Input.asOptionalInput<String>(region),
        serviceJson = pulumi.Input.asOptionalInput<String>(serviceJson);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final apiKeyValue = apiKey;
    if (apiKeyValue != null) {
      map['apiKey'] = apiKeyValue;
    }
    map['applicationId'] = applicationId;
    final defaultAuthenticationMethodValue = defaultAuthenticationMethod;
    if (defaultAuthenticationMethodValue != null) {
      map['defaultAuthenticationMethod'] = defaultAuthenticationMethodValue;
    }
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final serviceJsonValue = serviceJson;
    if (serviceJsonValue != null) {
      map['serviceJson'] = serviceJsonValue;
    }
    return map;
  }

  factory GcmChannelArgs.fromMap(Map<String, dynamic> map) {
    return GcmChannelArgs(
      apiKey: map['apiKey'] == null ? null : map['apiKey'] as String,
      applicationId: map['applicationId'] as String,
      defaultAuthenticationMethod: map['defaultAuthenticationMethod'] == null
          ? null
          : map['defaultAuthenticationMethod'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      region: map['region'] == null ? null : map['region'] as String,
      serviceJson:
          map['serviceJson'] == null ? null : map['serviceJson'] as String,
    );
  }
}
