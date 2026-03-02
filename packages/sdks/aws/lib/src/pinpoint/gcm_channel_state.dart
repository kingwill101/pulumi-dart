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
    this.apiKey,
    this.applicationId,
    this.defaultAuthenticationMethod,
    this.enabled,
    this.region,
    this.serviceJson,
  });

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
      apiKey: map['apiKey'] == null ? null : (map['apiKey'] as String).input(),
      applicationId: map['applicationId'] == null ? null : (map['applicationId'] as String).input(),
      defaultAuthenticationMethod: map['defaultAuthenticationMethod'] == null ? null : (map['defaultAuthenticationMethod'] as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      serviceJson: map['serviceJson'] == null ? null : (map['serviceJson'] as String).input(),
    );
  }
}

