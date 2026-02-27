// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for GcmChannel.
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

  GcmChannelArgs({
    this.apiKey,
    required this.applicationId,
    this.defaultAuthenticationMethod,
    this.enabled,
    this.region,
    this.serviceJson,
  });

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
      apiKey: pulumi.Input.asOptionalInput<String>(map['apiKey']),
      applicationId: pulumi.Input.asInput<String>(map['applicationId']),
      defaultAuthenticationMethod: pulumi.Input.asOptionalInput<String>(
          map['defaultAuthenticationMethod']),
      enabled: pulumi.Input.asOptionalInput<bool>(map['enabled']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      serviceJson: pulumi.Input.asOptionalInput<String>(map['serviceJson']),
    );
  }
}
