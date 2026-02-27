// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for VoiceConnectorTermination.
class VoiceConnectorTerminationArgs {
  /// The countries to which calls are allowed, in ISO 3166-1 alpha-2 format.
  final pulumi.Input<List<String>> callingRegions;

  /// The IP addresses allowed to make calls, in CIDR format.
  final pulumi.Input<List<String>> cidrAllowLists;

  /// The limit on calls per second. Max value based on account service quota. Default value of `1`.
  final pulumi.Input<int>? cpsLimit;

  /// The default caller ID phone number.
  final pulumi.Input<String>? defaultPhoneNumber;

  /// When termination settings are disabled, outbound calls can not be made.
  final pulumi.Input<bool>? disabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The Amazon Chime Voice Connector ID.
  final pulumi.Input<String> voiceConnectorId;

  VoiceConnectorTerminationArgs({
    required this.callingRegions,
    required this.cidrAllowLists,
    this.cpsLimit,
    this.defaultPhoneNumber,
    this.disabled,
    this.region,
    required this.voiceConnectorId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['callingRegions'] = callingRegions;
    map['cidrAllowLists'] = cidrAllowLists;
    final cpsLimitValue = cpsLimit;
    if (cpsLimitValue != null) {
      map['cpsLimit'] = cpsLimitValue;
    }
    final defaultPhoneNumberValue = defaultPhoneNumber;
    if (defaultPhoneNumberValue != null) {
      map['defaultPhoneNumber'] = defaultPhoneNumberValue;
    }
    final disabledValue = disabled;
    if (disabledValue != null) {
      map['disabled'] = disabledValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['voiceConnectorId'] = voiceConnectorId;
    return map;
  }

  factory VoiceConnectorTerminationArgs.fromMap(Map<String, dynamic> map) {
    return VoiceConnectorTerminationArgs(
      callingRegions: pulumi.Input.asInput<List<String>>(map['callingRegions']),
      cidrAllowLists: pulumi.Input.asInput<List<String>>(map['cidrAllowLists']),
      cpsLimit: pulumi.Input.asOptionalInput<int>(map['cpsLimit']),
      defaultPhoneNumber:
          pulumi.Input.asOptionalInput<String>(map['defaultPhoneNumber']),
      disabled: pulumi.Input.asOptionalInput<bool>(map['disabled']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      voiceConnectorId: pulumi.Input.asInput<String>(map['voiceConnectorId']),
    );
  }
}
