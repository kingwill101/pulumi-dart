// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServerlessInstanceSecurityIpGroup {
  /// The attribute of the IP whitelist. This parameter is empty by default.
  final pulumi.Input<String>? securityIpGroupAttribute;
  /// The name of the IP whitelist.
  final pulumi.Input<String>? securityIpGroupName;
  /// The IP addresses in the whitelist.
  final pulumi.Input<String>? securityIpList;

  /// Creates a new [ServerlessInstanceSecurityIpGroup].
  /// [securityIpGroupAttribute] The attribute of the IP whitelist. This parameter is empty by default.
  /// [securityIpGroupName] The name of the IP whitelist.
  /// [securityIpList] The IP addresses in the whitelist.
  const ServerlessInstanceSecurityIpGroup({
    this.securityIpGroupAttribute,
    this.securityIpGroupName,
    this.securityIpList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityIpGroupAttribute': ?securityIpGroupAttribute,
      'securityIpGroupName': ?securityIpGroupName,
      'securityIpList': ?securityIpList,
    };
  }

  factory ServerlessInstanceSecurityIpGroup.fromMap(Map<String, dynamic> map) {
    return ServerlessInstanceSecurityIpGroup(
      securityIpGroupAttribute: (() { final guardedValue = map['securityIpGroupAttribute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityIpGroupName: (() { final guardedValue = map['securityIpGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityIpList: (() { final guardedValue = map['securityIpList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

