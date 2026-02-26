// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for VoiceConnectorTermination.
class VoiceConnectorTerminationArgs {
  /// The countries to which calls are allowed, in ISO 3166-1 alpha-2 format.
  final Input<List<String>> callingRegions;

  /// The IP addresses allowed to make calls, in CIDR format.
  final Input<List<String>> cidrAllowLists;

  /// The limit on calls per second. Max value based on account service quota. Default value of <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>.
  final Input<int>? cpsLimit;

  /// The default caller ID phone number.
  final Input<String>? defaultPhoneNumber;

  /// When termination settings are disabled, outbound calls can not be made.
  final Input<bool>? disabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The Amazon Chime Voice Connector ID.
  final Input<String> voiceConnectorId;

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
      callingRegions: Input.asInput<List<String>>(map['callingRegions']),
      cidrAllowLists: Input.asInput<List<String>>(map['cidrAllowLists']),
      cpsLimit: Input.asOptionalInput<int>(map['cpsLimit']),
      defaultPhoneNumber:
          Input.asOptionalInput<String>(map['defaultPhoneNumber']),
      disabled: Input.asOptionalInput<bool>(map['disabled']),
      region: Input.asOptionalInput<String>(map['region']),
      voiceConnectorId: Input.asInput<String>(map['voiceConnectorId']),
    );
  }
}
