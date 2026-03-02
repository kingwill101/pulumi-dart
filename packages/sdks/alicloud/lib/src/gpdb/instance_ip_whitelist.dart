// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceIpWhitelist {
  /// The value of this parameter is empty by default. The attribute of the whitelist group.
  /// If the value contains `hidden`, this white list item will not output.
  final pulumi.Input<String>? ipGroupAttribute;
  /// IP whitelist group name.
  final pulumi.Input<String>? ipGroupName;
  /// List of IP addresses allowed to access all databases of an instance. The list contains up to 1,000 IP addresses, separated by commas. Supported formats include 0.0.0.0/0, 10.23.12.24 (IP), and 10.23.12.24/24 (Classless Inter-Domain Routing (CIDR) mode. /24 represents the length of the prefix in an IP address. The range of the prefix length is [1,32]). System default to `["127.0.0.1"]`.
  final pulumi.Input<String>? securityIpList;

  /// Creates a new [InstanceIpWhitelist].
  /// [ipGroupAttribute] The value of this parameter is empty by default. The attribute of the whitelist group.
  /// [ipGroupName] IP whitelist group name.
  /// [securityIpList] List of IP addresses allowed to access all databases of an instance. The list contains up to 1,000 IP addresses, separated by commas. Supported formats include 0.0.0.0/0, 10.23.12.24 (IP), and 10.23.12.24/24 (Classless Inter-Domain Routing (CIDR) mode. /24 represents the length of the prefix in an IP address. The range of the prefix length is [1,32]). System default to `["127.0.0.1"]`.
  InstanceIpWhitelist({
    this.ipGroupAttribute,
    this.ipGroupName,
    this.securityIpList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipGroupAttribute': ?ipGroupAttribute,
      'ipGroupName': ?ipGroupName,
      'securityIpList': ?securityIpList,
    };
  }

  factory InstanceIpWhitelist.fromMap(Map<String, dynamic> map) {
    return InstanceIpWhitelist(
      ipGroupAttribute: map['ipGroupAttribute'] == null ? null : (map['ipGroupAttribute'] as String).input(),
      ipGroupName: map['ipGroupName'] == null ? null : (map['ipGroupName'] as String).input(),
      securityIpList: map['securityIpList'] == null ? null : (map['securityIpList'] as String).input(),
    );
  }
}

