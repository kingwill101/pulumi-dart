// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iprule_response.dart';

class BastionHostPropertiesFormatResponseNetworkAcls {
  /// Sets the IP ACL rules for Developer Bastion Host.
  final pulumi.Input<List<IPRuleResponse>?>? ipRules;

  /// Creates a new [BastionHostPropertiesFormatResponseNetworkAcls].
  /// [ipRules] Sets the IP ACL rules for Developer Bastion Host.
  const BastionHostPropertiesFormatResponseNetworkAcls({
    this.ipRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipRules': ?pulumi.Input.mapOptionalInputValue<List<IPRuleResponse>, List<Map<String, dynamic>>>(ipRules, (value) => pulumi.Input.encodeList<IPRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BastionHostPropertiesFormatResponseNetworkAcls.fromMap(Map<String, dynamic> map) {
    return BastionHostPropertiesFormatResponseNetworkAcls(
      ipRules: (() { final guardedValue = map['ipRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IPRuleResponse>(guardedValue, (value) => IPRuleResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
