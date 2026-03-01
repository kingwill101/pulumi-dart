// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iprule.dart';

class BastionHostPropertiesFormatNetworkAcls {
  /// Sets the IP ACL rules for Developer Bastion Host.
  final List<IPRule>? ipRules;

  /// Creates a new [BastionHostPropertiesFormatNetworkAcls].
  /// [ipRules] Sets the IP ACL rules for Developer Bastion Host.
  BastionHostPropertiesFormatNetworkAcls({
    this.ipRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipRules': ?ipRules == null ? null : pulumi.Input.encodeList<IPRule, Map<String, dynamic>>(ipRules!, (value) => value.toMap()),
    };
  }

  factory BastionHostPropertiesFormatNetworkAcls.fromMap(Map<String, dynamic> map) {
    return BastionHostPropertiesFormatNetworkAcls(
      ipRules: map['ipRules'] == null ? null : pulumi.Input.decodeList<IPRule>(map['ipRules'], (value) => IPRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

