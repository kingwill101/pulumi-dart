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
    pulumi.Output<bool>? deletionProtectionEnabled,
    required pulumi.Output<String> isoCountryCode,
    required pulumi.Output<String> messageType,
    required pulumi.Output<List<String>> numberCapabilities,
    required pulumi.Output<String> numberType,
    pulumi.Output<String>? optOutListName,
    pulumi.Output<String>? region,
    pulumi.Output<String>? registrationId,
    pulumi.Output<bool>? selfManagedOptOutsEnabled,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Smsvoicev2PhoneNumberTimeouts>? timeouts,
    pulumi.Output<String>? twoWayChannelArn,
    pulumi.Output<bool>? twoWayChannelEnabled,
    pulumi.Output<String>? twoWayChannelRole,
  }) :
      deletionProtectionEnabled = pulumi.Input.asOptionalInput<bool>(deletionProtectionEnabled),
      isoCountryCode = pulumi.Input.asInput<String>(isoCountryCode),
      messageType = pulumi.Input.asInput<String>(messageType),
      numberCapabilities = pulumi.Input.asInput<List<String>>(numberCapabilities),
      numberType = pulumi.Input.asInput<String>(numberType),
      optOutListName = pulumi.Input.asOptionalInput<String>(optOutListName),
      region = pulumi.Input.asOptionalInput<String>(region),
      registrationId = pulumi.Input.asOptionalInput<String>(registrationId),
      selfManagedOptOutsEnabled = pulumi.Input.asOptionalInput<bool>(selfManagedOptOutsEnabled),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      timeouts = pulumi.Input.asOptionalInput<Smsvoicev2PhoneNumberTimeouts>(timeouts),
      twoWayChannelArn = pulumi.Input.asOptionalInput<String>(twoWayChannelArn),
      twoWayChannelEnabled = pulumi.Input.asOptionalInput<bool>(twoWayChannelEnabled),
      twoWayChannelRole = pulumi.Input.asOptionalInput<String>(twoWayChannelRole);

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
      deletionProtectionEnabled: map['deletionProtectionEnabled'] == null ? null : pulumi.Output.create<bool>(map['deletionProtectionEnabled'] as bool),
      isoCountryCode: pulumi.Output.create<String>(map['isoCountryCode'] as String),
      messageType: pulumi.Output.create<String>(map['messageType'] as String),
      numberCapabilities: pulumi.Output.create<List<String>>((map['numberCapabilities'] as List).cast<String>()),
      numberType: pulumi.Output.create<String>(map['numberType'] as String),
      optOutListName: map['optOutListName'] == null ? null : pulumi.Output.create<String>(map['optOutListName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      registrationId: map['registrationId'] == null ? null : pulumi.Output.create<String>(map['registrationId'] as String),
      selfManagedOptOutsEnabled: map['selfManagedOptOutsEnabled'] == null ? null : pulumi.Output.create<bool>(map['selfManagedOptOutsEnabled'] as bool),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<Smsvoicev2PhoneNumberTimeouts>(Smsvoicev2PhoneNumberTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      twoWayChannelArn: map['twoWayChannelArn'] == null ? null : pulumi.Output.create<String>(map['twoWayChannelArn'] as String),
      twoWayChannelEnabled: map['twoWayChannelEnabled'] == null ? null : pulumi.Output.create<bool>(map['twoWayChannelEnabled'] as bool),
      twoWayChannelRole: map['twoWayChannelRole'] == null ? null : pulumi.Output.create<String>(map['twoWayChannelRole'] as String),
    );
  }
}

