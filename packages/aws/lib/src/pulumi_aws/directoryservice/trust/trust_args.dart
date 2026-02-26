// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Trust.
class TrustArgs {
  /// Set of IPv4 addresses for the DNS server associated with the remote Directory.
  /// Can contain between 1 and 4 values.
  final Input<List<String>>? conditionalForwarderIpAddrs;

  /// Whether to delete the conditional forwarder when deleting the Trust relationship.
  final Input<bool>? deleteAssociatedConditionalForwarder;

  /// ID of the Directory.
  final Input<String> directoryId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Fully qualified domain name of the remote Directory.
  final Input<String> remoteDomainName;

  /// Whether to enable selective authentication.
  /// Valid values are `Enabled` and `Disabled`.
  /// Default value is `Disabled`.
  final Input<String>? selectiveAuth;

  /// The direction of the Trust relationship.
  /// Valid values are `One-Way: Outgoing`, `One-Way: Incoming`, and `Two-Way`.
  final Input<String> trustDirection;

  /// Password for the Trust.
  /// Does not need to match the passwords for either Directory.
  /// Can contain upper- and lower-case letters, numbers, and punctuation characters.
  /// May be up to 128 characters long.
  final Input<String> trustPassword;

  /// Type of the Trust relationship.
  /// Valid values are `Forest` and `External`.
  /// Default value is `Forest`.
  final Input<String>? trustType;

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
    final map = <String, dynamic>{};
    final conditionalForwarderIpAddrsValue = conditionalForwarderIpAddrs;
    if (conditionalForwarderIpAddrsValue != null) {
      map['conditionalForwarderIpAddrs'] = conditionalForwarderIpAddrsValue;
    }
    final deleteAssociatedConditionalForwarderValue =
        deleteAssociatedConditionalForwarder;
    if (deleteAssociatedConditionalForwarderValue != null) {
      map['deleteAssociatedConditionalForwarder'] =
          deleteAssociatedConditionalForwarderValue;
    }
    map['directoryId'] = directoryId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['remoteDomainName'] = remoteDomainName;
    final selectiveAuthValue = selectiveAuth;
    if (selectiveAuthValue != null) {
      map['selectiveAuth'] = selectiveAuthValue;
    }
    map['trustDirection'] = trustDirection;
    map['trustPassword'] = trustPassword;
    final trustTypeValue = trustType;
    if (trustTypeValue != null) {
      map['trustType'] = trustTypeValue;
    }
    return map;
  }

  factory TrustArgs.fromMap(Map<String, dynamic> map) {
    return TrustArgs(
      conditionalForwarderIpAddrs: Input.asOptionalInput<List<String>>(
          map['conditionalForwarderIpAddrs']),
      deleteAssociatedConditionalForwarder: Input.asOptionalInput<bool>(
          map['deleteAssociatedConditionalForwarder']),
      directoryId: Input.asInput<String>(map['directoryId']),
      region: Input.asOptionalInput<String>(map['region']),
      remoteDomainName: Input.asInput<String>(map['remoteDomainName']),
      selectiveAuth: Input.asOptionalInput<String>(map['selectiveAuth']),
      trustDirection: Input.asInput<String>(map['trustDirection']),
      trustPassword: Input.asInput<String>(map['trustPassword']),
      trustType: Input.asOptionalInput<String>(map['trustType']),
    );
  }
}
