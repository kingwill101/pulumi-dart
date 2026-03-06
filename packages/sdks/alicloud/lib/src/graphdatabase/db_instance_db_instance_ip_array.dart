// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DbInstanceDbInstanceIpArray {
  /// The default is empty. To distinguish between the different property console does not display a `hidden` label grouping.
  final pulumi.Input<String>? dbInstanceIpArrayAttribute;
  /// IP ADDRESS whitelist group name.
  final pulumi.Input<String>? dbInstanceIpArrayName;
  /// IP ADDRESS whitelist addresses in the IP ADDRESS list, and a maximum of 1000 comma-separated format is as follows: `0.0.0.0/0` and `10.23.12.24`(IP) or `10.23.12.24/24`(CIDR mode, CIDR (Classless Inter-Domain Routing)/24 represents the address prefixes in the length of the range [1,32]).
  final pulumi.Input<String>? securityIps;

  /// Creates a new [DbInstanceDbInstanceIpArray].
  /// [dbInstanceIpArrayAttribute] The default is empty. To distinguish between the different property console does not display a `hidden` label grouping.
  /// [dbInstanceIpArrayName] IP ADDRESS whitelist group name.
  /// [securityIps] IP ADDRESS whitelist addresses in the IP ADDRESS list, and a maximum of 1000 comma-separated format is as follows: `0.0.0.0/0` and `10.23.12.24`(IP) or `10.23.12.24/24`(CIDR mode, CIDR (Classless Inter-Domain Routing)/24 represents the address prefixes in the length of the range [1,32]).
  const DbInstanceDbInstanceIpArray({
    this.dbInstanceIpArrayAttribute,
    this.dbInstanceIpArrayName,
    this.securityIps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbInstanceIpArrayAttribute': ?dbInstanceIpArrayAttribute,
      'dbInstanceIpArrayName': ?dbInstanceIpArrayName,
      'securityIps': ?securityIps,
    };
  }

  factory DbInstanceDbInstanceIpArray.fromMap(Map<String, dynamic> map) {
    return DbInstanceDbInstanceIpArray(
      dbInstanceIpArrayAttribute: (() { final guardedValue = map['dbInstanceIpArrayAttribute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbInstanceIpArrayName: (() { final guardedValue = map['dbInstanceIpArrayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityIps: (() { final guardedValue = map['securityIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

