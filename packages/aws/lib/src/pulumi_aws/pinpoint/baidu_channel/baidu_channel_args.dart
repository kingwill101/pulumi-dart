// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for BaiduChannel.
class BaiduChannelArgs {
  /// Platform credential API key from Baidu.
  final Input<String> apiKey;

  /// The application ID.
  final Input<String> applicationId;

  /// Specifies whether to enable the channel. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final Input<bool>? enabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Platform credential Secret key from Baidu.
  final Input<String> secretKey;

  BaiduChannelArgs({
    required this.apiKey,
    required this.applicationId,
    this.enabled,
    this.region,
    required this.secretKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiKey'] = apiKey;
    map['applicationId'] = applicationId;
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['secretKey'] = secretKey;
    return map;
  }

  factory BaiduChannelArgs.fromMap(Map<String, dynamic> map) {
    return BaiduChannelArgs(
      apiKey: Input.asInput<String>(map['apiKey']),
      applicationId: Input.asInput<String>(map['applicationId']),
      enabled: Input.asOptionalInput<bool>(map['enabled']),
      region: Input.asOptionalInput<String>(map['region']),
      secretKey: Input.asInput<String>(map['secretKey']),
    );
  }
}
