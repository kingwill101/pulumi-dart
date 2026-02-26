// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../smsvoicev2_phone_number_timeouts/smsvoicev2_phone_number_timeouts.dart';

/// The set of arguments for Smsvoicev2PhoneNumber.
class Smsvoicev2PhoneNumberArgs {
  /// By default this is set to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. When set to true the phone number can’t be deleted.
  final Input<bool>? deletionProtectionEnabled;

  /// The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.
  final Input<String> isoCountryCode;

  /// The type of message. Valid values are `TRANSACTIONAL` for messages that are critical or time-sensitive and `PROMOTIONAL` for messages that aren’t critical or time-sensitive.
  final Input<String> messageType;

  /// Describes if the origination identity can be used for text messages, voice calls or both. valid values are `SMS` and `VOICE`.
  final Input<List<String>> numberCapabilities;

  /// The type of phone number to request. Possible values are `LONG_CODE`, `TOLL_FREE`, `TEN_DLC`, or `SIMULATOR`.
  final Input<String> numberType;

  /// The name of the opt-out list to associate with the phone number.
  final Input<String>? optOutListName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Use this field to attach your phone number for an external registration process.
  final Input<String>? registrationId;

  /// When set to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> an end recipient sends a message that begins with HELP or STOP to one of your dedicated numbers, AWS End User Messaging SMS and Voice automatically replies with a customizable message and adds the end recipient to the opt-out list. When set to true you’re responsible for responding to HELP and STOP requests. You’re also responsible for tracking and honoring opt-out request.
  final Input<bool>? selfManagedOptOutsEnabled;
  final Input<Map<String, String>>? tags;
  final Input<Smsvoicev2PhoneNumberTimeouts>? timeouts;

  /// Configuration for two-way SMS. Specify an ARN to receive incoming SMS messages, or `connect.[region].amazonaws.com` (with `[region]` replaced by the AWS Region of the Amazon Connect instance) to set Amazon Connect as the inbound destination.
  final Input<String>? twoWayChannelArn;

  /// By default this is set to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. When set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> you can receive incoming text messages from your end recipients.
  final Input<bool>? twoWayChannelEnabled;

  /// IAM Role ARN for a service to assume, to be able to post inbound SMS messages.
  final Input<String>? twoWayChannelRole;

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
    final map = <String, dynamic>{};
    final deletionProtectionEnabledValue = deletionProtectionEnabled;
    if (deletionProtectionEnabledValue != null) {
      map['deletionProtectionEnabled'] = deletionProtectionEnabledValue;
    }
    map['isoCountryCode'] = isoCountryCode;
    map['messageType'] = messageType;
    map['numberCapabilities'] = numberCapabilities;
    map['numberType'] = numberType;
    final optOutListNameValue = optOutListName;
    if (optOutListNameValue != null) {
      map['optOutListName'] = optOutListNameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final registrationIdValue = registrationId;
    if (registrationIdValue != null) {
      map['registrationId'] = registrationIdValue;
    }
    final selfManagedOptOutsEnabledValue = selfManagedOptOutsEnabled;
    if (selfManagedOptOutsEnabledValue != null) {
      map['selfManagedOptOutsEnabled'] = selfManagedOptOutsEnabledValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = Input.mapOptionalInputValue<
          Smsvoicev2PhoneNumberTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    final twoWayChannelArnValue = twoWayChannelArn;
    if (twoWayChannelArnValue != null) {
      map['twoWayChannelArn'] = twoWayChannelArnValue;
    }
    final twoWayChannelEnabledValue = twoWayChannelEnabled;
    if (twoWayChannelEnabledValue != null) {
      map['twoWayChannelEnabled'] = twoWayChannelEnabledValue;
    }
    final twoWayChannelRoleValue = twoWayChannelRole;
    if (twoWayChannelRoleValue != null) {
      map['twoWayChannelRole'] = twoWayChannelRoleValue;
    }
    return map;
  }

  factory Smsvoicev2PhoneNumberArgs.fromMap(Map<String, dynamic> map) {
    return Smsvoicev2PhoneNumberArgs(
      deletionProtectionEnabled:
          Input.asOptionalInput<bool>(map['deletionProtectionEnabled']),
      isoCountryCode: Input.asInput<String>(map['isoCountryCode']),
      messageType: Input.asInput<String>(map['messageType']),
      numberCapabilities:
          Input.asInput<List<String>>(map['numberCapabilities']),
      numberType: Input.asInput<String>(map['numberType']),
      optOutListName: Input.asOptionalInput<String>(map['optOutListName']),
      region: Input.asOptionalInput<String>(map['region']),
      registrationId: Input.asOptionalInput<String>(map['registrationId']),
      selfManagedOptOutsEnabled:
          Input.asOptionalInput<bool>(map['selfManagedOptOutsEnabled']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts:
          Input.asOptionalInput<Smsvoicev2PhoneNumberTimeouts>(map['timeouts']),
      twoWayChannelArn: Input.asOptionalInput<String>(map['twoWayChannelArn']),
      twoWayChannelEnabled:
          Input.asOptionalInput<bool>(map['twoWayChannelEnabled']),
      twoWayChannelRole:
          Input.asOptionalInput<String>(map['twoWayChannelRole']),
    );
  }
}
