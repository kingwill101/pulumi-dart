// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Trust resources.
class TrustState {
  /// Set of IPv4 addresses for the DNS server associated with the remote Directory.
  /// Can contain between 1 and 4 values.
  final pulumi.Input<List<String>>? conditionalForwarderIpAddrs;
  /// Date and time when the Trust was created.
  final pulumi.Input<String>? createdDateTime;
  /// Whether to delete the conditional forwarder when deleting the Trust relationship.
  final pulumi.Input<bool>? deleteAssociatedConditionalForwarder;
  /// ID of the Directory.
  final pulumi.Input<String>? directoryId;
  /// Date and time when the Trust was last updated.
  final pulumi.Input<String>? lastUpdatedDateTime;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Fully qualified domain name of the remote Directory.
  final pulumi.Input<String>? remoteDomainName;
  /// Whether to enable selective authentication.
  /// Valid values are `Enabled` and `Disabled`.
  /// Default value is `Disabled`.
  final pulumi.Input<String>? selectiveAuth;
  /// Date and time when the Trust state in `trust_state` was last updated.
  final pulumi.Input<String>? stateLastUpdatedDateTime;
  /// The direction of the Trust relationship.
  /// Valid values are `One-Way: Outgoing`, `One-Way: Incoming`, and `Two-Way`.
  final pulumi.Input<String>? trustDirection;
  /// Password for the Trust.
  /// Does not need to match the passwords for either Directory.
  /// Can contain upper- and lower-case letters, numbers, and punctuation characters.
  /// May be up to 128 characters long.
  final pulumi.Input<String>? trustPassword;
  /// State of the Trust relationship.
  /// One of `Created`, `VerifyFailed`,`Verified`, `UpdateFailed`,`Updated`,`Deleted`, or `Failed`.
  final pulumi.Input<String>? trustState;
  /// Reason for the Trust state set in `trust_state`.
  final pulumi.Input<String>? trustStateReason;
  /// Type of the Trust relationship.
  /// Valid values are `Forest` and `External`.
  /// Default value is `Forest`.
  final pulumi.Input<String>? trustType;

  /// Creates a new [TrustState].
  /// [conditionalForwarderIpAddrs] Set of IPv4 addresses for the DNS server associated with the remote Directory.
  /// [createdDateTime] Date and time when the Trust was created.
  /// [deleteAssociatedConditionalForwarder] Whether to delete the conditional forwarder when deleting the Trust relationship.
  /// [directoryId] ID of the Directory.
  /// [lastUpdatedDateTime] Date and time when the Trust was last updated.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [remoteDomainName] Fully qualified domain name of the remote Directory.
  /// [selectiveAuth] Whether to enable selective authentication.
  /// [stateLastUpdatedDateTime] Date and time when the Trust state in `trust_state` was last updated.
  /// [trustDirection] The direction of the Trust relationship.
  /// [trustPassword] Password for the Trust.
  /// [trustState] State of the Trust relationship.
  /// [trustStateReason] Reason for the Trust state set in `trust_state`.
  /// [trustType] Type of the Trust relationship.
  TrustState({
    this.conditionalForwarderIpAddrs,
    this.createdDateTime,
    this.deleteAssociatedConditionalForwarder,
    this.directoryId,
    this.lastUpdatedDateTime,
    this.region,
    this.remoteDomainName,
    this.selectiveAuth,
    this.stateLastUpdatedDateTime,
    this.trustDirection,
    this.trustPassword,
    this.trustState,
    this.trustStateReason,
    this.trustType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditionalForwarderIpAddrs': ?conditionalForwarderIpAddrs,
      'createdDateTime': ?createdDateTime,
      'deleteAssociatedConditionalForwarder': ?deleteAssociatedConditionalForwarder,
      'directoryId': ?directoryId,
      'lastUpdatedDateTime': ?lastUpdatedDateTime,
      'region': ?region,
      'remoteDomainName': ?remoteDomainName,
      'selectiveAuth': ?selectiveAuth,
      'stateLastUpdatedDateTime': ?stateLastUpdatedDateTime,
      'trustDirection': ?trustDirection,
      'trustPassword': ?trustPassword,
      'trustState': ?trustState,
      'trustStateReason': ?trustStateReason,
      'trustType': ?trustType,
    };
  }

  factory TrustState.fromMap(Map<String, dynamic> map) {
    return TrustState(
      conditionalForwarderIpAddrs: (() { final guardedValue = map['conditionalForwarderIpAddrs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      createdDateTime: (() { final guardedValue = map['createdDateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deleteAssociatedConditionalForwarder: (() { final guardedValue = map['deleteAssociatedConditionalForwarder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      directoryId: (() { final guardedValue = map['directoryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastUpdatedDateTime: (() { final guardedValue = map['lastUpdatedDateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remoteDomainName: (() { final guardedValue = map['remoteDomainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selectiveAuth: (() { final guardedValue = map['selectiveAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stateLastUpdatedDateTime: (() { final guardedValue = map['stateLastUpdatedDateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trustDirection: (() { final guardedValue = map['trustDirection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trustPassword: (() { final guardedValue = map['trustPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trustState: (() { final guardedValue = map['trustState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trustStateReason: (() { final guardedValue = map['trustStateReason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trustType: (() { final guardedValue = map['trustType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

