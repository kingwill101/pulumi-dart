// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iprule_response.dart';

class BastionHostPropertiesFormatResponseNetworkAcls {
  /// Sets the IP ACL rules for Developer Bastion Host.
  final List<IPRuleResponse>? ipRules;

  /// Creates a new [BastionHostPropertiesFormatResponseNetworkAcls].
  /// [ipRules] Sets the IP ACL rules for Developer Bastion Host.
  BastionHostPropertiesFormatResponseNetworkAcls({
    this.ipRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipRules': ?ipRules == null ? null : pulumi.Input.encodeList<IPRuleResponse, Map<String, dynamic>>(ipRules!, (value) => value.toMap()),
    };
  }

  factory BastionHostPropertiesFormatResponseNetworkAcls.fromMap(Map<String, dynamic> map) {
    return BastionHostPropertiesFormatResponseNetworkAcls(
      ipRules: map['ipRules'] == null ? null : pulumi.Input.decodeList<IPRuleResponse>(map['ipRules'], (value) => IPRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

