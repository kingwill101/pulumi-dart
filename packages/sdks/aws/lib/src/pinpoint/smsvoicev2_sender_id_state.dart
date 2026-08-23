// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'smsvoicev2_sender_id_timeouts.dart';

/// Input properties used for looking up and filtering Smsvoicev2SenderId resources.
class Smsvoicev2SenderIdState {
  /// ARN of the sender ID.
  final pulumi.Input<String>? arn;
  /// Whether deletion protection is enabled. When set to `true`, the sender ID cannot be deleted. Defaults to `false`.
  final pulumi.Input<bool>? deletionProtectionEnabled;
  /// Two-character code, in ISO 3166-1 alpha-2 format, for the country or region.
  final pulumi.Input<String>? isoCountryCode;
  /// Type of message. Valid values are `TRANSACTIONAL` and `PROMOTIONAL`. Defaults to `["TRANSACTIONAL"]` if not specified.
  final pulumi.Input<List<String>>? messageTypes;
  /// Monthly leasing price, in US dollars.
  final pulumi.Input<String>? monthlyLeasingPrice;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Whether the sender ID is registered.
  final pulumi.Input<bool>? registered;
  /// Unique identifier for the registration.
  final pulumi.Input<String>? registrationId;
  /// Alphanumeric sender ID to request. Must be between 3 and 11 characters long, contain only upper case letters, numbers, and dashes, and cannot be numeric-only. AWS stores sender IDs in upper case, so upper case is required here to keep configuration, state, and resource identity consistent.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? senderId;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<Smsvoicev2SenderIdTimeouts>? timeouts;

  /// Creates a new [Smsvoicev2SenderIdState].
  /// [arn] ARN of the sender ID.
  /// [deletionProtectionEnabled] Whether deletion protection is enabled. When set to `true`, the sender ID cannot be deleted. Defaults to `false`.
  /// [isoCountryCode] Two-character code, in ISO 3166-1 alpha-2 format, for the country or region.
  /// [messageTypes] Type of message. Valid values are `TRANSACTIONAL` and `PROMOTIONAL`. Defaults to `["TRANSACTIONAL"]` if not specified.
  /// [monthlyLeasingPrice] Monthly leasing price, in US dollars.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [registered] Whether the sender ID is registered.
  /// [registrationId] Unique identifier for the registration.
  /// [senderId] Alphanumeric sender ID to request. Must be between 3 and 11 characters long, contain only upper case letters, numbers, and dashes, and cannot be numeric-only. AWS stores sender IDs in upper case, so upper case is required here to keep configuration, state, and resource identity consistent.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [timeouts] Optional.
  const Smsvoicev2SenderIdState({
    this.arn,
    this.deletionProtectionEnabled,
    this.isoCountryCode,
    this.messageTypes,
    this.monthlyLeasingPrice,
    this.region,
    this.registered,
    this.registrationId,
    this.senderId,
    this.tags,
    this.tagsAll,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'deletionProtectionEnabled': ?deletionProtectionEnabled,
      'isoCountryCode': ?isoCountryCode,
      'messageTypes': ?messageTypes,
      'monthlyLeasingPrice': ?monthlyLeasingPrice,
      'region': ?region,
      'registered': ?registered,
      'registrationId': ?registrationId,
      'senderId': ?senderId,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<Smsvoicev2SenderIdTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory Smsvoicev2SenderIdState.fromMap(Map<String, dynamic> map) {
    return Smsvoicev2SenderIdState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionProtectionEnabled: (() { final guardedValue = map['deletionProtectionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isoCountryCode: (() { final guardedValue = map['isoCountryCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      messageTypes: (() { final guardedValue = map['messageTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      monthlyLeasingPrice: (() { final guardedValue = map['monthlyLeasingPrice']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registered: (() { final guardedValue = map['registered']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      registrationId: (() { final guardedValue = map['registrationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      senderId: (() { final guardedValue = map['senderId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Smsvoicev2SenderIdTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
