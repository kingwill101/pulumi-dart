// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'smsvoicev2_phone_number_timeouts.dart';

/// {@template pulumi_pinpoint_smsvoicev2_phone_number_smsvoicev2_phone_number_args_doc}
/// The set of arguments for Smsvoicev2PhoneNumber.
/// {@endtemplate}
/// {@macro pulumi_pinpoint_smsvoicev2_phone_number_smsvoicev2_phone_number_args_doc}
class Smsvoicev2PhoneNumberArgs {
  /// By default this is set to `false`. When set to true the phone number can’t be deleted.
  final pulumi.Input<bool>? deletionProtectionEnabled;
  /// The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.
  final pulumi.Input<String> isoCountryCode;
  /// The type of message. Valid values are `TRANSACTIONAL` for messages that are critical or time-sensitive and `PROMOTIONAL` for messages that aren’t critical or time-sensitive.
  final pulumi.Input<String> messageType;
  /// Describes if the origination identity can be used for text messages, voice calls or both. valid values are `SMS` and `VOICE`.
  final pulumi.Input<List<String>> numberCapabilities;
  /// The type of phone number to request. Possible values are `LONG_CODE`, `TOLL_FREE`, `TEN_DLC`, or `SIMULATOR`.
  final pulumi.Input<String> numberType;
  /// The name of the opt-out list to associate with the phone number.
  final pulumi.Input<String>? optOutListName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Use this field to attach your phone number for an external registration process.
  final pulumi.Input<String>? registrationId;
  /// When set to `false` an end recipient sends a message that begins with HELP or STOP to one of your dedicated numbers, AWS End User Messaging SMS and Voice automatically replies with a customizable message and adds the end recipient to the opt-out list. When set to true you’re responsible for responding to HELP and STOP requests. You’re also responsible for tracking and honoring opt-out request.
  final pulumi.Input<bool>? selfManagedOptOutsEnabled;
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Smsvoicev2PhoneNumberTimeouts>? timeouts;
  /// Configuration for two-way SMS. Specify an ARN to receive incoming SMS messages, or `connect.[region].amazonaws.com` (with `[region]` replaced by the AWS Region of the Amazon Connect instance) to set Amazon Connect as the inbound destination.
  final pulumi.Input<String>? twoWayChannelArn;
  /// By default this is set to `false`. When set to `true` you can receive incoming text messages from your end recipients.
  final pulumi.Input<bool>? twoWayChannelEnabled;
  /// IAM Role ARN for a service to assume, to be able to post inbound SMS messages.
  final pulumi.Input<String>? twoWayChannelRole;

  /// Creates a new [Smsvoicev2PhoneNumberArgs].
  /// [deletionProtectionEnabled] By default this is set to `false`. When set to true the phone number can’t be deleted.
  /// [isoCountryCode] The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.
  /// [messageType] The type of message. Valid values are `TRANSACTIONAL` for messages that are critical or time-sensitive and `PROMOTIONAL` for messages that aren’t critical or time-sensitive.
  /// [numberCapabilities] Describes if the origination identity can be used for text messages, voice calls or both. valid values are `SMS` and `VOICE`.
  /// [numberType] The type of phone number to request. Possible values are `LONG_CODE`, `TOLL_FREE`, `TEN_DLC`, or `SIMULATOR`.
  /// [optOutListName] The name of the opt-out list to associate with the phone number.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [registrationId] Use this field to attach your phone number for an external registration process.
  /// [selfManagedOptOutsEnabled] When set to `false` an end recipient sends a message that begins with HELP or STOP to one of your dedicated numbers, AWS End User Messaging SMS and Voice automatically replies with a customizable message and adds the end recipient to the opt-out list. When set to true you’re responsible for responding to HELP and STOP requests. You’re also responsible for tracking and honoring opt-out request.
  /// [tags] Optional.
  /// [timeouts] Optional.
  /// [twoWayChannelArn] Configuration for two-way SMS. Specify an ARN to receive incoming SMS messages, or `connect.[region].amazonaws.com` (with `[region]` replaced by the AWS Region of the Amazon Connect instance) to set Amazon Connect as the inbound destination.
  /// [twoWayChannelEnabled] By default this is set to `false`. When set to `true` you can receive incoming text messages from your end recipients.
  /// [twoWayChannelRole] IAM Role ARN for a service to assume, to be able to post inbound SMS messages.
  Smsvoicev2PhoneNumberArgs({
    this.deletionProtectionEnabled,
    required this.isoCountryCode,
    required this.messageType,
    required this.numberCapabilities,
    required this.numberType,
    this.optOutListName,
    this.region,
    this.registrationId,
    this.selfManagedOptOutsEnabled,
    this.tags,
    this.timeouts,
    this.twoWayChannelArn,
    this.twoWayChannelEnabled,
    this.twoWayChannelRole,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionProtectionEnabled': ?deletionProtectionEnabled,
      'isoCountryCode': isoCountryCode,
      'messageType': messageType,
      'numberCapabilities': numberCapabilities,
      'numberType': numberType,
      'optOutListName': ?optOutListName,
      'region': ?region,
      'registrationId': ?registrationId,
      'selfManagedOptOutsEnabled': ?selfManagedOptOutsEnabled,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<Smsvoicev2PhoneNumberTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'twoWayChannelArn': ?twoWayChannelArn,
      'twoWayChannelEnabled': ?twoWayChannelEnabled,
      'twoWayChannelRole': ?twoWayChannelRole,
    };
  }

  factory Smsvoicev2PhoneNumberArgs.fromMap(Map<String, dynamic> map) {
    return Smsvoicev2PhoneNumberArgs(
      deletionProtectionEnabled: map['deletionProtectionEnabled'] == null ? null : (map['deletionProtectionEnabled'] as bool).input(),
      isoCountryCode: (map['isoCountryCode'] as String).input(),
      messageType: (map['messageType'] as String).input(),
      numberCapabilities: ((map['numberCapabilities'] as List).cast<String>()).input(),
      numberType: (map['numberType'] as String).input(),
      optOutListName: map['optOutListName'] == null ? null : (map['optOutListName'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      registrationId: map['registrationId'] == null ? null : (map['registrationId'] as String).input(),
      selfManagedOptOutsEnabled: map['selfManagedOptOutsEnabled'] == null ? null : (map['selfManagedOptOutsEnabled'] as bool).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      timeouts: map['timeouts'] == null ? null : (Smsvoicev2PhoneNumberTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())).input(),
      twoWayChannelArn: map['twoWayChannelArn'] == null ? null : (map['twoWayChannelArn'] as String).input(),
      twoWayChannelEnabled: map['twoWayChannelEnabled'] == null ? null : (map['twoWayChannelEnabled'] as bool).input(),
      twoWayChannelRole: map['twoWayChannelRole'] == null ? null : (map['twoWayChannelRole'] as String).input(),
    );
  }
}

