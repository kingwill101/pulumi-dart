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
    pulumi.Output<String>? apiKey,
    pulumi.Output<String>? applicationId,
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? region,
    pulumi.Output<String>? secretKey,
  }) :
      apiKey = pulumi.Input.asOptionalInput<String>(apiKey),
      applicationId = pulumi.Input.asOptionalInput<String>(applicationId),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      region = pulumi.Input.asOptionalInput<String>(region),
      secretKey = pulumi.Input.asOptionalInput<String>(secretKey);

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
      apiKey: map['apiKey'] == null ? null : pulumi.Output.create<String>(map['apiKey'] as String),
      applicationId: map['applicationId'] == null ? null : pulumi.Output.create<String>(map['applicationId'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      secretKey: map['secretKey'] == null ? null : pulumi.Output.create<String>(map['secretKey'] as String),
    );
  }
}

