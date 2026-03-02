// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BaiduChannel resources.
class BaiduChannelState {
  /// Platform credential API key from Baidu.
  final pulumi.Input<String>? apiKey;
  /// The application ID.
  final pulumi.Input<String>? applicationId;
  /// Specifies whether to enable the channel. Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Platform credential Secret key from Baidu.
  final pulumi.Input<String>? secretKey;

  /// Creates a new [BaiduChannelState].
  /// [apiKey] Platform credential API key from Baidu.
  /// [applicationId] The application ID.
  /// [enabled] Specifies whether to enable the channel. Defaults to `true`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [secretKey] Platform credential Secret key from Baidu.
  BaiduChannelState({
    this.apiKey,
    this.applicationId,
    this.enabled,
    this.region,
    this.secretKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
      'applicationId': ?applicationId,
      'enabled': ?enabled,
      'region': ?region,
      'secretKey': ?secretKey,
    };
  }

  factory BaiduChannelState.fromMap(Map<String, dynamic> map) {
    return BaiduChannelState(
      apiKey: map['apiKey'] == null ? null : (map['apiKey'] as String).input(),
      applicationId: map['applicationId'] == null ? null : (map['applicationId'] as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      secretKey: map['secretKey'] == null ? null : (map['secretKey'] as String).input(),
    );
  }
}

