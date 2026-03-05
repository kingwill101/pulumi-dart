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
      ipGroupNames: (() { final guardedValue = map['ipGroupNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ipPrefixValues: (() { final guardedValue = map['ipPrefixValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      prefixType: (() { final guardedValue = map['prefixType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

