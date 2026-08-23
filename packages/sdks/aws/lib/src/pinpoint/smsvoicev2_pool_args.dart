// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'smsvoicev2_pool_timeouts.dart';

/// {@template pulumi_pinpoint_smsvoicev2_pool_smsvoicev2_pool_args_doc}
/// The set of arguments for Smsvoicev2Pool.
/// {@endtemplate}
/// {@macro pulumi_pinpoint_smsvoicev2_pool_smsvoicev2_pool_args_doc}
class Smsvoicev2PoolArgs {
  /// Whether deletion protection is enabled. When `true`, the pool cannot be deleted.
  final pulumi.Input<bool>? deletionProtectionEnabled;
  /// Two-character code, in ISO 3166-1 alpha-2 format, for the country or region of the pool. Cannot be changed after creation.
  final pulumi.Input<String>? isoCountryCode;
  /// Type of message. Valid values are `TRANSACTIONAL` and `PROMOTIONAL`. Cannot be changed after creation.
  final pulumi.Input<String> messageType;
  /// Name of the opt-out list associated with the pool.
  final pulumi.Input<String>? optOutListName;
  /// Set of origination identity ARNs (phone number ARNs or sender ID ARNs) associated with the pool. At least one identity is required at creation.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<String>> originationIdentities;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-options.html#cli-configure-options-region). Defaults to the region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Whether the pool relies on self-managed opt-out handling. When `false`, AWS auto-replies to HELP/STOP requests and manages the opt-out list.
  final pulumi.Input<bool>? selfManagedOptOutsEnabled;
  /// Whether shared routes are enabled for the pool. When `true`, messages may use shared phone numbers or sender IDs in countries that allow it.
  final pulumi.Input<bool>? sharedRoutesEnabled;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Smsvoicev2PoolTimeouts>? timeouts;
  /// Destination for incoming messages. Specify an ARN to receive incoming messages, or `connect.[region].amazonaws.com` (with `[region]` replaced by the AWS Region of the Amazon Connect instance) to set Amazon Connect as the inbound destination.
  final pulumi.Input<String>? twoWayChannelArn;
  /// ARN of the IAM role that End User Messaging SMS assumes to publish inbound messages to the two-way channel.
  final pulumi.Input<String>? twoWayChannelRole;
  /// Whether inbound message reception is enabled for the pool. When `true`, `twoWayChannelArn` must be set.
  final pulumi.Input<bool>? twoWayEnabled;

  /// Creates a new [Smsvoicev2PoolArgs].
  /// [deletionProtectionEnabled] Whether deletion protection is enabled. When `true`, the pool cannot be deleted.
  /// [isoCountryCode] Two-character code, in ISO 3166-1 alpha-2 format, for the country or region of the pool. Cannot be changed after creation.
  /// [messageType] Type of message. Valid values are `TRANSACTIONAL` and `PROMOTIONAL`. Cannot be changed after creation.
  /// [optOutListName] Name of the opt-out list associated with the pool.
  /// [originationIdentities] Set of origination identity ARNs (phone number ARNs or sender ID ARNs) associated with the pool. At least one identity is required at creation.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-options.html#cli-configure-options-region). Defaults to the region set in the provider configuration.
  /// [selfManagedOptOutsEnabled] Whether the pool relies on self-managed opt-out handling. When `false`, AWS auto-replies to HELP/STOP requests and manages the opt-out list.
  /// [sharedRoutesEnabled] Whether shared routes are enabled for the pool. When `true`, messages may use shared phone numbers or sender IDs in countries that allow it.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  /// [twoWayChannelArn] Destination for incoming messages. Specify an ARN to receive incoming messages, or `connect.[region].amazonaws.com` (with `[region]` replaced by the AWS Region of the Amazon Connect instance) to set Amazon Connect as the inbound destination.
  /// [twoWayChannelRole] ARN of the IAM role that End User Messaging SMS assumes to publish inbound messages to the two-way channel.
  /// [twoWayEnabled] Whether inbound message reception is enabled for the pool. When `true`, `twoWayChannelArn` must be set.
  const Smsvoicev2PoolArgs({
    this.deletionProtectionEnabled,
    this.isoCountryCode,
    required this.messageType,
    this.optOutListName,
    required this.originationIdentities,
    this.region,
    this.selfManagedOptOutsEnabled,
    this.sharedRoutesEnabled,
    this.tags,
    this.timeouts,
    this.twoWayChannelArn,
    this.twoWayChannelRole,
    this.twoWayEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionProtectionEnabled': ?deletionProtectionEnabled,
      'isoCountryCode': ?isoCountryCode,
      'messageType': messageType,
      'optOutListName': ?optOutListName,
      'originationIdentities': originationIdentities,
      'region': ?region,
      'selfManagedOptOutsEnabled': ?selfManagedOptOutsEnabled,
      'sharedRoutesEnabled': ?sharedRoutesEnabled,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<Smsvoicev2PoolTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'twoWayChannelArn': ?twoWayChannelArn,
      'twoWayChannelRole': ?twoWayChannelRole,
      'twoWayEnabled': ?twoWayEnabled,
    };
  }

  factory Smsvoicev2PoolArgs.fromMap(Map<String, dynamic> map) {
    return Smsvoicev2PoolArgs(
      deletionProtectionEnabled: (() { final guardedValue = map['deletionProtectionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isoCountryCode: (() { final guardedValue = map['isoCountryCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      messageType: pulumi.Input.fromValue(map['messageType'] as String),
      optOutListName: (() { final guardedValue = map['optOutListName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      originationIdentities: pulumi.Input.fromValue((map['originationIdentities'] as List).cast<String>()),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selfManagedOptOutsEnabled: (() { final guardedValue = map['selfManagedOptOutsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sharedRoutesEnabled: (() { final guardedValue = map['sharedRoutesEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Smsvoicev2PoolTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      twoWayChannelArn: (() { final guardedValue = map['twoWayChannelArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      twoWayChannelRole: (() { final guardedValue = map['twoWayChannelRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      twoWayEnabled: (() { final guardedValue = map['twoWayEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
