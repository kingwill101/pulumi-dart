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
    pulumi.Output<List<String>>? conditionalForwarderIpAddrs,
    pulumi.Output<String>? createdDateTime,
    pulumi.Output<bool>? deleteAssociatedConditionalForwarder,
    pulumi.Output<String>? directoryId,
    pulumi.Output<String>? lastUpdatedDateTime,
    pulumi.Output<String>? region,
    pulumi.Output<String>? remoteDomainName,
    pulumi.Output<String>? selectiveAuth,
    pulumi.Output<String>? stateLastUpdatedDateTime,
    pulumi.Output<String>? trustDirection,
    pulumi.Output<String>? trustPassword,
    pulumi.Output<String>? trustState,
    pulumi.Output<String>? trustStateReason,
    pulumi.Output<String>? trustType,
  }) :
      conditionalForwarderIpAddrs = pulumi.Input.asOptionalInput<List<String>>(conditionalForwarderIpAddrs),
      createdDateTime = pulumi.Input.asOptionalInput<String>(createdDateTime),
      deleteAssociatedConditionalForwarder = pulumi.Input.asOptionalInput<bool>(deleteAssociatedConditionalForwarder),
      directoryId = pulumi.Input.asOptionalInput<String>(directoryId),
      lastUpdatedDateTime = pulumi.Input.asOptionalInput<String>(lastUpdatedDateTime),
      region = pulumi.Input.asOptionalInput<String>(region),
      remoteDomainName = pulumi.Input.asOptionalInput<String>(remoteDomainName),
      selectiveAuth = pulumi.Input.asOptionalInput<String>(selectiveAuth),
      stateLastUpdatedDateTime = pulumi.Input.asOptionalInput<String>(stateLastUpdatedDateTime),
      trustDirection = pulumi.Input.asOptionalInput<String>(trustDirection),
      trustPassword = pulumi.Input.asOptionalInput<String>(trustPassword),
      trustState = pulumi.Input.asOptionalInput<String>(trustState),
      trustStateReason = pulumi.Input.asOptionalInput<String>(trustStateReason),
      trustType = pulumi.Input.asOptionalInput<String>(trustType);

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
      conditionalForwarderIpAddrs: map['conditionalForwarderIpAddrs'] == null ? null : pulumi.Output.create<List<String>>((map['conditionalForwarderIpAddrs'] as List).cast<String>()),
      createdDateTime: map['createdDateTime'] == null ? null : pulumi.Output.create<String>(map['createdDateTime'] as String),
      deleteAssociatedConditionalForwarder: map['deleteAssociatedConditionalForwarder'] == null ? null : pulumi.Output.create<bool>(map['deleteAssociatedConditionalForwarder'] as bool),
      directoryId: map['directoryId'] == null ? null : pulumi.Output.create<String>(map['directoryId'] as String),
      lastUpdatedDateTime: map['lastUpdatedDateTime'] == null ? null : pulumi.Output.create<String>(map['lastUpdatedDateTime'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      remoteDomainName: map['remoteDomainName'] == null ? null : pulumi.Output.create<String>(map['remoteDomainName'] as String),
      selectiveAuth: map['selectiveAuth'] == null ? null : pulumi.Output.create<String>(map['selectiveAuth'] as String),
      stateLastUpdatedDateTime: map['stateLastUpdatedDateTime'] == null ? null : pulumi.Output.create<String>(map['stateLastUpdatedDateTime'] as String),
      trustDirection: map['trustDirection'] == null ? null : pulumi.Output.create<String>(map['trustDirection'] as String),
      trustPassword: map['trustPassword'] == null ? null : pulumi.Output.create<String>(map['trustPassword'] as String),
      trustState: map['trustState'] == null ? null : pulumi.Output.create<String>(map['trustState'] as String),
      trustStateReason: map['trustStateReason'] == null ? null : pulumi.Output.create<String>(map['trustStateReason'] as String),
      trustType: map['trustType'] == null ? null : pulumi.Output.create<String>(map['trustType'] as String),
    );
  }
}

