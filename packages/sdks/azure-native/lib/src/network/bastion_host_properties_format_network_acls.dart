// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iprule.dart';

class BastionHostPropertiesFormatNetworkAcls {
  /// Sets the IP ACL rules for Developer Bastion Host.
  final pulumi.Input<List<IPRule>>? ipRules;

  /// Creates a new [BastionHostPropertiesFormatNetworkAcls].
  /// [ipRules] Sets the IP ACL rules for Developer Bastion Host.
  BastionHostPropertiesFormatNetworkAcls({
    this.ipRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipRules': ?pulumi.Input.mapOptionalInputValue<List<IPRule>, List<Map<String, dynamic>>>(ipRules, (value) => pulumi.Input.encodeList<IPRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BastionHostPropertiesFormatNetworkAcls.fromMap(Map<String, dynamic> map) {
    return BastionHostPropertiesFormatNetworkAcls(
      ipRules: (() { final guardedValue = map['ipRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IPRule>(guardedValue, (value) => IPRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

