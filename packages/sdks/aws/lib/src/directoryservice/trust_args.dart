// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_directoryservice_trust_trust_args_doc}
/// The set of arguments for Trust.
/// {@endtemplate}
/// {@macro pulumi_directoryservice_trust_trust_args_doc}
class TrustArgs {
  /// Set of IPv4 addresses for the DNS server associated with the remote Directory.
  /// Can contain between 1 and 4 values.
  final pulumi.Input<List<String>?>? conditionalForwarderIpAddrs;
  /// Whether to delete the conditional forwarder when deleting the Trust relationship.
  final pulumi.Input<bool?>? deleteAssociatedConditionalForwarder;
  /// ID of the Directory.
  final pulumi.Input<String> directoryId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Fully qualified domain name of the remote Directory.
  final pulumi.Input<String> remoteDomainName;
  /// Whether to enable selective authentication.
  /// Valid values are `Enabled` and `Disabled`.
  /// Default value is `Disabled`.
  final pulumi.Input<String?>? selectiveAuth;
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
  final pulumi.Input<String?>? trustType;

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
  const TrustArgs({
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
      conditionalForwarderIpAddrs: (() { final guardedValue = map['conditionalForwarderIpAddrs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      deleteAssociatedConditionalForwarder: (() { final guardedValue = map['deleteAssociatedConditionalForwarder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      directoryId: pulumi.Input.fromValue(map['directoryId'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remoteDomainName: pulumi.Input.fromValue(map['remoteDomainName'] as String),
      selectiveAuth: (() { final guardedValue = map['selectiveAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trustDirection: pulumi.Input.fromValue(map['trustDirection'] as String),
      trustPassword: pulumi.Input.fromValue(map['trustPassword'] as String),
      trustType: (() { final guardedValue = map['trustType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
