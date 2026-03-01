// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GcmChannel resources.
class GcmChannelState {
  /// Platform credential API key from Google.
  final pulumi.Input<String>? apiKey;
  /// The application ID.
  final pulumi.Input<String>? applicationId;
  final pulumi.Input<String>? defaultAuthenticationMethod;
  /// Whether the channel is enabled or disabled. Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<String>? serviceJson;

  /// Creates a new [GcmChannelState].
  /// [apiKey] Platform credential API key from Google.
  /// [applicationId] The application ID.
  /// [defaultAuthenticationMethod] Optional.
  /// [enabled] Whether the channel is enabled or disabled. Defaults to `true`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceJson] Optional.
  GcmChannelState({
    pulumi.Output<String>? apiKey,
    pulumi.Output<String>? applicationId,
    pulumi.Output<String>? defaultAuthenticationMethod,
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? region,
    pulumi.Output<String>? serviceJson,
  }) :
      apiKey = pulumi.Input.asOptionalInput<String>(apiKey),
      applicationId = pulumi.Input.asOptionalInput<String>(applicationId),
      defaultAuthenticationMethod = pulumi.Input.asOptionalInput<String>(defaultAuthenticationMethod),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      region = pulumi.Input.asOptionalInput<String>(region),
      serviceJson = pulumi.Input.asOptionalInput<String>(serviceJson);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
      'applicationId': ?applicationId,
      'defaultAuthenticationMethod': ?defaultAuthenticationMethod,
      'enabled': ?enabled,
      'region': ?region,
      'serviceJson': ?serviceJson,
    };
  }

  factory GcmChannelState.fromMap(Map<String, dynamic> map) {
    return GcmChannelState(
      apiKey: map['apiKey'] == null ? null : pulumi.Output.create<String>(map['apiKey'] as String),
      applicationId: map['applicationId'] == null ? null : pulumi.Output.create<String>(map['applicationId'] as String),
      defaultAuthenticationMethod: map['defaultAuthenticationMethod'] == null ? null : pulumi.Output.create<String>(map['defaultAuthenticationMethod'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      serviceJson: map['serviceJson'] == null ? null : pulumi.Output.create<String>(map['serviceJson'] as String),
    );
  }
}

