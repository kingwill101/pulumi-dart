// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for GcmChannel.
class GcmChannelArgs {
  /// Platform credential API key from Google.
  final Input<String>? apiKey;

  /// The application ID.
  final Input<String> applicationId;
  final Input<String>? defaultAuthenticationMethod;

  /// Whether the channel is enabled or disabled. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final Input<bool>? enabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;
  final Input<String>? serviceJson;

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
      apiKey: Input.asOptionalInput<String>(map['apiKey']),
      applicationId: Input.asInput<String>(map['applicationId']),
      defaultAuthenticationMethod:
          Input.asOptionalInput<String>(map['defaultAuthenticationMethod']),
      enabled: Input.asOptionalInput<bool>(map['enabled']),
      region: Input.asOptionalInput<String>(map['region']),
      serviceJson: Input.asOptionalInput<String>(map['serviceJson']),
    );
  }
}
