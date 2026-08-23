// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'smsvoicev2_phone_number_timeouts.dart';

/// {@template pulumi_pinpoint_smsvoicev2_phone_number_smsvoicev2_phone_number_args_doc}
/// The set of arguments for Smsvoicev2PhoneNumber.
/// {@endtemplate}
/// {@macro pulumi_pinpoint_smsvoicev2_phone_number_smsvoicev2_phone_number_args_doc}
class Smsvoicev2PhoneNumberArgs {
  /// Whether deletion protection is enabled. When `true`, the phone number cannot be deleted.
  final pulumi.Input<bool>? deletionProtectionEnabled;
  /// Whether to disassociate the phone number from any pool it is associated with before destroying it.
  final pulumi.Input<bool>? forceDisassociate;
  /// Two-character code, in ISO 3166-1 alpha-2 format, for the country or region.
  final pulumi.Input<String> isoCountryCode;
  /// Type of message. Valid values are `TRANSACTIONAL` for messages that are critical or time-sensitive and `PROMOTIONAL` for messages that aren’t critical or time-sensitive.
  final pulumi.Input<String> messageType;
  /// Whether the origination identity can be used for text messages, voice calls or both. Valid values are `SMS` and `VOICE`.
  final pulumi.Input<List<String>> numberCapabilities;
  /// Type of phone number to request. Possible values are `LONG_CODE`, `TOLL_FREE`, `TEN_DLC`, or `SIMULATOR`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> numberType;
  /// Name of the opt-out list to associate with the phone number. If omitted, AWS assigns the `Default` opt-out list.
  final pulumi.Input<String>? optOutListName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Use this field to attach your phone number for an external registration process.
  final pulumi.Input<String>? registrationId;
  /// When set to `false` an end recipient sends a message that begins with HELP or STOP to one of your dedicated numbers, AWS End User Messaging SMS and Voice automatically replies with a customizable message and adds the end recipient to the opt-out list. When set to true you’re responsible for responding to HELP and STOP requests. You’re also responsible for tracking and honoring opt-out request.
  final pulumi.Input<bool>? selfManagedOptOutsEnabled;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Smsvoicev2PhoneNumberTimeouts>? timeouts;
  /// Configuration for two-way SMS. Specify an ARN to receive incoming SMS messages, or `connect.[region].amazonaws.com` (with `[region]` replaced by the AWS Region of the Amazon Connect instance) to set Amazon Connect as the inbound destination.
  final pulumi.Input<String>? twoWayChannelArn;
  /// Whether two-way messaging is enabled. When `true`, you can receive incoming text messages from your end recipients. If omitted, AWS sets this to `false`.
  final pulumi.Input<bool>? twoWayChannelEnabled;
  /// IAM Role ARN for a service to assume, to be able to post inbound SMS messages.
  final pulumi.Input<String>? twoWayChannelRole;
  /// Whether to wait for the phone number to reach `ACTIVE` status before considering the resource created or updated. Defaults to `true`. Set to `false` for number types gated on carrier or registration approval (for example, `TEN_DLC`, `TOLL_FREE`, or any number submitted with `registrationId`), which can remain `PENDING` for days or weeks. When `false`, `pulumi up` returns once AWS accepts the phone number request; track activation with the `status` attribute.
  final pulumi.Input<bool>? waitForActive;

  /// Creates a new [Smsvoicev2PhoneNumberArgs].
  /// [deletionProtectionEnabled] Whether deletion protection is enabled. When `true`, the phone number cannot be deleted.
  /// [forceDisassociate] Whether to disassociate the phone number from any pool it is associated with before destroying it.
  /// [isoCountryCode] Two-character code, in ISO 3166-1 alpha-2 format, for the country or region.
  /// [messageType] Type of message. Valid values are `TRANSACTIONAL` for messages that are critical or time-sensitive and `PROMOTIONAL` for messages that aren’t critical or time-sensitive.
  /// [numberCapabilities] Whether the origination identity can be used for text messages, voice calls or both. Valid values are `SMS` and `VOICE`.
  /// [numberType] Type of phone number to request. Possible values are `LONG_CODE`, `TOLL_FREE`, `TEN_DLC`, or `SIMULATOR`.
  /// [optOutListName] Name of the opt-out list to associate with the phone number. If omitted, AWS assigns the `Default` opt-out list.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [registrationId] Use this field to attach your phone number for an external registration process.
  /// [selfManagedOptOutsEnabled] When set to `false` an end recipient sends a message that begins with HELP or STOP to one of your dedicated numbers, AWS End User Messaging SMS and Voice automatically replies with a customizable message and adds the end recipient to the opt-out list. When set to true you’re responsible for responding to HELP and STOP requests. You’re also responsible for tracking and honoring opt-out request.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  /// [twoWayChannelArn] Configuration for two-way SMS. Specify an ARN to receive incoming SMS messages, or `connect.[region].amazonaws.com` (with `[region]` replaced by the AWS Region of the Amazon Connect instance) to set Amazon Connect as the inbound destination.
  /// [twoWayChannelEnabled] Whether two-way messaging is enabled. When `true`, you can receive incoming text messages from your end recipients. If omitted, AWS sets this to `false`.
  /// [twoWayChannelRole] IAM Role ARN for a service to assume, to be able to post inbound SMS messages.
  /// [waitForActive] Whether to wait for the phone number to reach `ACTIVE` status before considering the resource created or updated. Defaults to `true`. Set to `false` for number types gated on carrier or registration approval (for example, `TEN_DLC`, `TOLL_FREE`, or any number submitted with `registrationId`), which can remain `PENDING` for days or weeks. When `false`, `pulumi up` returns once AWS accepts the phone number request; track activation with the `status` attribute.
  const Smsvoicev2PhoneNumberArgs({
    this.deletionProtectionEnabled,
    this.forceDisassociate,
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
    this.waitForActive,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionProtectionEnabled': ?deletionProtectionEnabled,
      'forceDisassociate': ?forceDisassociate,
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
      'waitForActive': ?waitForActive,
    };
  }

  factory Smsvoicev2PhoneNumberArgs.fromMap(Map<String, dynamic> map) {
    return Smsvoicev2PhoneNumberArgs(
      deletionProtectionEnabled: (() { final guardedValue = map['deletionProtectionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      forceDisassociate: (() { final guardedValue = map['forceDisassociate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isoCountryCode: pulumi.Input.fromValue(map['isoCountryCode'] as String),
      messageType: pulumi.Input.fromValue(map['messageType'] as String),
      numberCapabilities: pulumi.Input.fromValue((map['numberCapabilities'] as List).cast<String>()),
      numberType: pulumi.Input.fromValue(map['numberType'] as String),
      optOutListName: (() { final guardedValue = map['optOutListName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registrationId: (() { final guardedValue = map['registrationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selfManagedOptOutsEnabled: (() { final guardedValue = map['selfManagedOptOutsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Smsvoicev2PhoneNumberTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      twoWayChannelArn: (() { final guardedValue = map['twoWayChannelArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      twoWayChannelEnabled: (() { final guardedValue = map['twoWayChannelEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      twoWayChannelRole: (() { final guardedValue = map['twoWayChannelRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      waitForActive: (() { final guardedValue = map['waitForActive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
