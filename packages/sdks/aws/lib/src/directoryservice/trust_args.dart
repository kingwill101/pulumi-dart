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
    this.conditionalForwarderIpAddrs,
    this.deleteAssociatedConditionalForwarder,
    required this.directoryId,
    this.region,
    required this.remoteDomainName,
    this.selectiveAuth,
    required this.trustDirection,
    required this.trustPassword,
    this.trustType,
  });

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
      conditionalForwarderIpAddrs: map['conditionalForwarderIpAddrs'] == null ? null : ((map['conditionalForwarderIpAddrs'] as List).cast<String>()).input(),
      deleteAssociatedConditionalForwarder: map['deleteAssociatedConditionalForwarder'] == null ? null : (map['deleteAssociatedConditionalForwarder'] as bool).input(),
      directoryId: (map['directoryId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      remoteDomainName: (map['remoteDomainName'] as String).input(),
      selectiveAuth: map['selectiveAuth'] == null ? null : (map['selectiveAuth'] as String).input(),
      trustDirection: (map['trustDirection'] as String).input(),
      trustPassword: (map['trustPassword'] as String).input(),
      trustType: map['trustType'] == null ? null : (map['trustType'] as String).input(),
    );
  }
}

