// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_directoryservice_trust_trust_args_doc}
/// The set of arguments for Trust.
/// {@endtemplate}
/// {@macro pulumi_directoryservice_trust_trust_args_doc}
class TrustArgs {
  /// Set of IPv4 addresses for the DNS server associated with the remote Directory.
  /// Can contain between 1 and 4 values.
  final pulumi.Input<List<String>>? conditionalForwarderIpAddrs;
  /// Whether to delete the conditional forwarder when deleting the Trust relationship.
  final pulumi.Input<bool>? deleteAssociatedConditionalForwarder;
  /// ID of the Directory.
  final pulumi.Input<String> directoryId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Fully qualified domain name of the remote Directory.
  final pulumi.Input<String> remoteDomainName;
  /// Whether to enable selective authentication.
  /// Valid values are `Enabled` and `Disabled`.
  /// Default value is `Disabled`.
  final pulumi.Input<String>? selectiveAuth;
  /// The direction of the Trust relationship.
  /// Valid values are `One-Way: Outgoing`, `One-Way: Incoming`, and `Two-Way`.
  final pulumi.Input<String> trustDirection;
  /// Password for the Trust.
  /// Does not need to match the passwords for either Directory.
  /// Can contain upper- and lower-case letters, numbers, and punctuation characters.
  /// May be up to 128 characters long.
  final pulumi.Input<String> trustPassword;
  /// Type of the Trust relationship.
  /// Valid values are `Forest` and `External`.
  /// Default value is `Forest`.
  final pulumi.Input<String>? trustType;

  /// Creates a new [TrustArgs].
  /// [conditionalForwarderIpAddrs] Set of IPv4 addresses for the DNS server associated with the remote Directory.
  /// [deleteAssociatedConditionalForwarder] Whether to delete the conditional forwarder when deleting the Trust relationship.
  /// [directoryId] ID of the Directory.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [remoteDomainName] Fully qualified domain name of the remote Directory.
  /// [selectiveAuth] Whether to enable selective authentication.
  /// [trustDirection] The direction of the Trust relationship.
  /// [trustPassword] Password for the Trust.
  /// [trustType] Type of the Trust relationship.
  TrustArgs({
    pulumi.Output<List<String>>? conditionalForwarderIpAddrs,
    pulumi.Output<bool>? deleteAssociatedConditionalForwarder,
    required pulumi.Output<String> directoryId,
    pulumi.Output<String>? region,
    required pulumi.Output<String> remoteDomainName,
    pulumi.Output<String>? selectiveAuth,
    required pulumi.Output<String> trustDirection,
    required pulumi.Output<String> trustPassword,
    pulumi.Output<String>? trustType,
  }) :
      conditionalForwarderIpAddrs = pulumi.Input.asOptionalInput<List<String>>(conditionalForwarderIpAddrs),
      deleteAssociatedConditionalForwarder = pulumi.Input.asOptionalInput<bool>(deleteAssociatedConditionalForwarder),
      directoryId = pulumi.Input.asInput<String>(directoryId),
      region = pulumi.Input.asOptionalInput<String>(region),
      remoteDomainName = pulumi.Input.asInput<String>(remoteDomainName),
      selectiveAuth = pulumi.Input.asOptionalInput<String>(selectiveAuth),
      trustDirection = pulumi.Input.asInput<String>(trustDirection),
      trustPassword = pulumi.Input.asInput<String>(trustPassword),
      trustType = pulumi.Input.asOptionalInput<String>(trustType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditionalForwarderIpAddrs': ?conditionalForwarderIpAddrs,
      'deleteAssociatedConditionalForwarder': ?deleteAssociatedConditionalForwarder,
      'directoryId': directoryId,
      'region': ?region,
      'remoteDomainName': remoteDomainName,
      'selectiveAuth': ?selectiveAuth,
      'trustDirection': trustDirection,
      'trustPassword': trustPassword,
      'trustType': ?trustType,
    };
  }

  factory TrustArgs.fromMap(Map<String, dynamic> map) {
    return TrustArgs(
      conditionalForwarderIpAddrs: map['conditionalForwarderIpAddrs'] == null ? null : pulumi.Output.create<List<String>>((map['conditionalForwarderIpAddrs'] as List).cast<String>()),
      deleteAssociatedConditionalForwarder: map['deleteAssociatedConditionalForwarder'] == null ? null : pulumi.Output.create<bool>(map['deleteAssociatedConditionalForwarder'] as bool),
      directoryId: pulumi.Output.create<String>(map['directoryId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      remoteDomainName: pulumi.Output.create<String>(map['remoteDomainName'] as String),
      selectiveAuth: map['selectiveAuth'] == null ? null : pulumi.Output.create<String>(map['selectiveAuth'] as String),
      trustDirection: pulumi.Output.create<String>(map['trustDirection'] as String),
      trustPassword: pulumi.Output.create<String>(map['trustPassword'] as String),
      trustType: map['trustType'] == null ? null : pulumi.Output.create<String>(map['trustType'] as String),
    );
  }
}

