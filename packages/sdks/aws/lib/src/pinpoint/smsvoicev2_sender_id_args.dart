// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'smsvoicev2_sender_id_timeouts.dart';

/// {@template pulumi_pinpoint_smsvoicev2_sender_id_smsvoicev2_sender_id_args_doc}
/// The set of arguments for Smsvoicev2SenderId.
/// {@endtemplate}
/// {@macro pulumi_pinpoint_smsvoicev2_sender_id_smsvoicev2_sender_id_args_doc}
class Smsvoicev2SenderIdArgs {
  /// Whether deletion protection is enabled. When set to `true`, the sender ID cannot be deleted. Defaults to `false`.
  final pulumi.Input<bool>? deletionProtectionEnabled;
  /// Two-character code, in ISO 3166-1 alpha-2 format, for the country or region.
  final pulumi.Input<String> isoCountryCode;
  /// Type of message. Valid values are `TRANSACTIONAL` and `PROMOTIONAL`. Defaults to `["TRANSACTIONAL"]` if not specified.
  final pulumi.Input<List<String>>? messageTypes;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Alphanumeric sender ID to request. Must be between 3 and 11 characters long, contain only upper case letters, numbers, and dashes, and cannot be numeric-only. AWS stores sender IDs in upper case, so upper case is required here to keep configuration, state, and resource identity consistent.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> senderId;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Smsvoicev2SenderIdTimeouts>? timeouts;

  /// Creates a new [Smsvoicev2SenderIdArgs].
  /// [deletionProtectionEnabled] Whether deletion protection is enabled. When set to `true`, the sender ID cannot be deleted. Defaults to `false`.
  /// [isoCountryCode] Two-character code, in ISO 3166-1 alpha-2 format, for the country or region.
  /// [messageTypes] Type of message. Valid values are `TRANSACTIONAL` and `PROMOTIONAL`. Defaults to `["TRANSACTIONAL"]` if not specified.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [senderId] Alphanumeric sender ID to request. Must be between 3 and 11 characters long, contain only upper case letters, numbers, and dashes, and cannot be numeric-only. AWS stores sender IDs in upper case, so upper case is required here to keep configuration, state, and resource identity consistent.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  const Smsvoicev2SenderIdArgs({
    this.deletionProtectionEnabled,
    required this.isoCountryCode,
    this.messageTypes,
    this.region,
    required this.senderId,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionProtectionEnabled': ?deletionProtectionEnabled,
      'isoCountryCode': isoCountryCode,
      'messageTypes': ?messageTypes,
      'region': ?region,
      'senderId': senderId,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<Smsvoicev2SenderIdTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory Smsvoicev2SenderIdArgs.fromMap(Map<String, dynamic> map) {
    return Smsvoicev2SenderIdArgs(
      deletionProtectionEnabled: (() { final guardedValue = map['deletionProtectionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isoCountryCode: pulumi.Input.fromValue(map['isoCountryCode'] as String),
      messageTypes: (() { final guardedValue = map['messageTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      senderId: pulumi.Input.fromValue(map['senderId'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Smsvoicev2SenderIdTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
