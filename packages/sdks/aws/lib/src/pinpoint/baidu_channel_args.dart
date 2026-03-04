// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_pinpoint_baidu_channel_baidu_channel_args_doc}
/// The set of arguments for BaiduChannel.
/// {@endtemplate}
/// {@macro pulumi_pinpoint_baidu_channel_baidu_channel_args_doc}
class BaiduChannelArgs {
  /// Platform credential API key from Baidu.
  final pulumi.Input<String> apiKey;

  /// The application ID.
  final pulumi.Input<String> applicationId;

  /// Specifies whether to enable the channel. Defaults to `true`.
  final pulumi.Input<bool>? enabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Platform credential Secret key from Baidu.
  final pulumi.Input<String> secretKey;

  /// Creates a new [BaiduChannelArgs].
  /// [apiKey] Platform credential API key from Baidu.
  /// [applicationId] The application ID.
  /// [enabled] Specifies whether to enable the channel. Defaults to `true`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [secretKey] Platform credential Secret key from Baidu.
  BaiduChannelArgs({
    required this.apiKey,
    required this.applicationId,
    this.enabled,
    this.region,
    required this.secretKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': apiKey,
      'applicationId': applicationId,
      'enabled': ?enabled,
      'region': ?region,
      'secretKey': secretKey,
    };
  }

  factory BaiduChannelArgs.fromMap(Map<String, dynamic> map) {
    return BaiduChannelArgs(
      apiKey: pulumi.Input.fromValue(map['apiKey'] as String),
      applicationId: pulumi.Input.fromValue(map['applicationId'] as String),
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secretKey: pulumi.Input.fromValue(map['secretKey'] as String),
    );
  }
}
