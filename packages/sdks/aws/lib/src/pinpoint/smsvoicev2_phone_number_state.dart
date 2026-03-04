// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'smsvoicev2_phone_number_timeouts.dart';

/// Input properties used for looking up and filtering Smsvoicev2PhoneNumber resources.
class Smsvoicev2PhoneNumberState {
  /// ARN of the phone number.
  final pulumi.Input<String>? arn;

  /// By default this is set to `false`. When set to true the phone number can’t be deleted.
  final pulumi.Input<bool>? deletionProtectionEnabled;

  /// The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.
  final pulumi.Input<String>? isoCountryCode;

  /// The type of message. Valid values are `TRANSACTIONAL` for messages that are critical or time-sensitive and `PROMOTIONAL` for messages that aren’t critical or time-sensitive.
  final pulumi.Input<String>? messageType;

  /// The monthly price, in US dollars, to lease the phone number.
  final pulumi.Input<String>? monthlyLeasingPrice;

  /// Describes if the origination identity can be used for text messages, voice calls or both. valid values are `SMS` and `VOICE`.
  final pulumi.Input<List<String>>? numberCapabilities;

  /// The type of phone number to request. Possible values are `LONG_CODE`, `TOLL_FREE`, `TEN_DLC`, or `SIMULATOR`.
  final pulumi.Input<String>? numberType;

  /// The name of the opt-out list to associate with the phone number.
  final pulumi.Input<String>? optOutListName;

  /// The new phone number that was requested.
  final pulumi.Input<String>? phoneNumber;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Use this field to attach your phone number for an external registration process.
  final pulumi.Input<String>? registrationId;

  /// When set to `false` an end recipient sends a message that begins with HELP or STOP to one of your dedicated numbers, AWS End User Messaging SMS and Voice automatically replies with a customizable message and adds the end recipient to the opt-out list. When set to true you’re responsible for responding to HELP and STOP requests. You’re also responsible for tracking and honoring opt-out request.
  final pulumi.Input<bool>? selfManagedOptOutsEnabled;
  final pulumi.Input<Map<String, String>>? tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<Smsvoicev2PhoneNumberTimeouts>? timeouts;

  /// Configuration for two-way SMS. Specify an ARN to receive incoming SMS messages, or `connect.[region].amazonaws.com` (with `[region]` replaced by the AWS Region of the Amazon Connect instance) to set Amazon Connect as the inbound destination.
  final pulumi.Input<String>? twoWayChannelArn;

  /// By default this is set to `false`. When set to `true` you can receive incoming text messages from your end recipients.
  final pulumi.Input<bool>? twoWayChannelEnabled;

  /// IAM Role ARN for a service to assume, to be able to post inbound SMS messages.
  final pulumi.Input<String>? twoWayChannelRole;

  /// Creates a new [Smsvoicev2PhoneNumberState].
  /// [arn] ARN of the phone number.
  /// [deletionProtectionEnabled] By default this is set to `false`. When set to true the phone number can’t be deleted.
  /// [isoCountryCode] The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.
  /// [messageType] The type of message. Valid values are `TRANSACTIONAL` for messages that are critical or time-sensitive and `PROMOTIONAL` for messages that aren’t critical or time-sensitive.
  /// [monthlyLeasingPrice] The monthly price, in US dollars, to lease the phone number.
  /// [numberCapabilities] Describes if the origination identity can be used for text messages, voice calls or both. valid values are `SMS` and `VOICE`.
  /// [numberType] The type of phone number to request. Possible values are `LONG_CODE`, `TOLL_FREE`, `TEN_DLC`, or `SIMULATOR`.
  /// [optOutListName] The name of the opt-out list to associate with the phone number.
  /// [phoneNumber] The new phone number that was requested.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [registrationId] Use this field to attach your phone number for an external registration process.
  /// [selfManagedOptOutsEnabled] When set to `false` an end recipient sends a message that begins with HELP or STOP to one of your dedicated numbers, AWS End User Messaging SMS and Voice automatically replies with a customizable message and adds the end recipient to the opt-out list. When set to true you’re responsible for responding to HELP and STOP requests. You’re also responsible for tracking and honoring opt-out request.
  /// [tags] Optional.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  /// [twoWayChannelArn] Configuration for two-way SMS. Specify an ARN to receive incoming SMS messages, or `connect.[region].amazonaws.com` (with `[region]` replaced by the AWS Region of the Amazon Connect instance) to set Amazon Connect as the inbound destination.
  /// [twoWayChannelEnabled] By default this is set to `false`. When set to `true` you can receive incoming text messages from your end recipients.
  /// [twoWayChannelRole] IAM Role ARN for a service to assume, to be able to post inbound SMS messages.
  Smsvoicev2PhoneNumberState({
    this.arn,
    this.deletionProtectionEnabled,
    this.isoCountryCode,
    this.messageType,
    this.monthlyLeasingPrice,
    this.numberCapabilities,
    this.numberType,
    this.optOutListName,
    this.phoneNumber,
    this.region,
    this.registrationId,
    this.selfManagedOptOutsEnabled,
    this.tags,
    this.tagsAll,
    this.timeouts,
    this.twoWayChannelArn,
    this.twoWayChannelEnabled,
    this.twoWayChannelRole,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'deletionProtectionEnabled': ?deletionProtectionEnabled,
      'isoCountryCode': ?isoCountryCode,
      'messageType': ?messageType,
      'monthlyLeasingPrice': ?monthlyLeasingPrice,
      'numberCapabilities': ?numberCapabilities,
      'numberType': ?numberType,
      'optOutListName': ?optOutListName,
      'phoneNumber': ?phoneNumber,
      'region': ?region,
      'registrationId': ?registrationId,
      'selfManagedOptOutsEnabled': ?selfManagedOptOutsEnabled,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            Smsvoicev2PhoneNumberTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
      'twoWayChannelArn': ?twoWayChannelArn,
      'twoWayChannelEnabled': ?twoWayChannelEnabled,
      'twoWayChannelRole': ?twoWayChannelRole,
    };
  }

  factory Smsvoicev2PhoneNumberState.fromMap(Map<String, dynamic> map) {
    return Smsvoicev2PhoneNumberState(
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      deletionProtectionEnabled: (() {
        final guardedValue = map['deletionProtectionEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      isoCountryCode: (() {
        final guardedValue = map['isoCountryCode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      messageType: (() {
        final guardedValue = map['messageType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      monthlyLeasingPrice: (() {
        final guardedValue = map['monthlyLeasingPrice'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      numberCapabilities: (() {
        final guardedValue = map['numberCapabilities'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      numberType: (() {
        final guardedValue = map['numberType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      optOutListName: (() {
        final guardedValue = map['optOutListName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      phoneNumber: (() {
        final guardedValue = map['phoneNumber'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      registrationId: (() {
        final guardedValue = map['registrationId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      selfManagedOptOutsEnabled: (() {
        final guardedValue = map['selfManagedOptOutsEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      timeouts: (() {
        final guardedValue = map['timeouts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Smsvoicev2PhoneNumberTimeouts.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      twoWayChannelArn: (() {
        final guardedValue = map['twoWayChannelArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      twoWayChannelEnabled: (() {
        final guardedValue = map['twoWayChannelEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      twoWayChannelRole: (() {
        final guardedValue = map['twoWayChannelRole'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
