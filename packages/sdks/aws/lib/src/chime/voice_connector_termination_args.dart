// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_chime_voice_connector_termination_voice_connector_termination_args_doc}
/// The set of arguments for VoiceConnectorTermination.
/// {@endtemplate}
/// {@macro pulumi_chime_voice_connector_termination_voice_connector_termination_args_doc}
class VoiceConnectorTerminationArgs {
  /// The countries to which calls are allowed, in ISO 3166-1 alpha-2 format.
  final pulumi.Input<List<String>> callingRegions;
  /// The IP addresses allowed to make calls, in CIDR format.
  final pulumi.Input<List<String>> cidrAllowLists;
  /// The limit on calls per second. Max value based on account service quota. Default value of `1`.
  final pulumi.Input<int?>? cpsLimit;
  /// The default caller ID phone number.
  final pulumi.Input<String?>? defaultPhoneNumber;
  /// When termination settings are disabled, outbound calls can not be made.
  final pulumi.Input<bool?>? disabled;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// The Amazon Chime Voice Connector ID.
  final pulumi.Input<String> voiceConnectorId;

  /// Creates a new [VoiceConnectorTerminationArgs].
  /// [callingRegions] The countries to which calls are allowed, in ISO 3166-1 alpha-2 format.
  /// [cidrAllowLists] The IP addresses allowed to make calls, in CIDR format.
  /// [cpsLimit] The limit on calls per second. Max value based on account service quota. Default value of `1`.
  /// [defaultPhoneNumber] The default caller ID phone number.
  /// [disabled] When termination settings are disabled, outbound calls can not be made.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [voiceConnectorId] The Amazon Chime Voice Connector ID.
  const VoiceConnectorTerminationArgs({
    required this.callingRegions,
    required this.cidrAllowLists,
    this.cpsLimit,
    this.defaultPhoneNumber,
    this.disabled,
    this.region,
    required this.voiceConnectorId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'callingRegions': callingRegions,
      'cidrAllowLists': cidrAllowLists,
      'cpsLimit': ?cpsLimit,
      'defaultPhoneNumber': ?defaultPhoneNumber,
      'disabled': ?disabled,
      'region': ?region,
      'voiceConnectorId': voiceConnectorId,
    };
  }

  factory VoiceConnectorTerminationArgs.fromMap(Map<String, dynamic> map) {
    return VoiceConnectorTerminationArgs(
      callingRegions: pulumi.Input.fromValue((map['callingRegions'] as List).cast<String>()),
      cidrAllowLists: pulumi.Input.fromValue((map['cidrAllowLists'] as List).cast<String>()),
      cpsLimit: (() { final guardedValue = map['cpsLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      defaultPhoneNumber: (() { final guardedValue = map['defaultPhoneNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      voiceConnectorId: pulumi.Input.fromValue(map['voiceConnectorId'] as String),
    );
  }
}
