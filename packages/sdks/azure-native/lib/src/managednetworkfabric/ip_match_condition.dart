// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the condition that can be filtered using the selected IPs.
class IpMatchCondition {
  /// The List of IP Group Names that need to be matched.
  final pulumi.Input<List<String>>? ipGroupNames;
  /// The list of IP Prefixes that need to be matched.
  final pulumi.Input<List<String>>? ipPrefixValues;
  /// IP Prefix Type that needs to be matched.
  final pulumi.Input<String>? prefixType;
  /// IP Address type that needs to be matched.
  final pulumi.Input<String>? type;

  /// Creates a new [IpMatchCondition].
  /// [ipGroupNames] The List of IP Group Names that need to be matched.
  /// [ipPrefixValues] The list of IP Prefixes that need to be matched.
  /// [prefixType] IP Prefix Type that needs to be matched.
  /// [type] IP Address type that needs to be matched.
  IpMatchCondition({
    this.ipGroupNames,
    this.ipPrefixValues,
    this.prefixType,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipGroupNames': ?ipGroupNames,
      'ipPrefixValues': ?ipPrefixValues,
      'prefixType': ?prefixType,
      'type': ?type,
    };
  }

  factory IpMatchCondition.fromMap(Map<String, dynamic> map) {
    return IpMatchCondition(
      ipGroupNames: map['ipGroupNames'] == null ? null : ((map['ipGroupNames'] as List).cast<String>()).input(),
      ipPrefixValues: map['ipPrefixValues'] == null ? null : ((map['ipPrefixValues'] as List).cast<String>()).input(),
      prefixType: map['prefixType'] == null ? null : (map['prefixType'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

