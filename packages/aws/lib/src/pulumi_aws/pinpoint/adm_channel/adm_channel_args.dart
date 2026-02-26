// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for AdmChannel.
class AdmChannelArgs {
  /// The application ID.
  final Input<String> applicationId;

  /// Client ID (part of OAuth Credentials) obtained via Amazon Developer Account.
  final Input<String> clientId;

  /// Client Secret (part of OAuth Credentials) obtained via Amazon Developer Account.
  final Input<String> clientSecret;

  /// Specifies whether to enable the channel. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final Input<bool>? enabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  AdmChannelArgs({
    required this.applicationId,
    required this.clientId,
    required this.clientSecret,
    this.enabled,
    this.region,
  });

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
      applicationId: Input.asInput<String>(map['applicationId']),
      clientId: Input.asInput<String>(map['clientId']),
      clientSecret: Input.asInput<String>(map['clientSecret']),
      enabled: Input.asOptionalInput<bool>(map['enabled']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
