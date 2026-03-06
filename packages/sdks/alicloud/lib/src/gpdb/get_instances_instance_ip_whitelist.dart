// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstancesInstanceIpWhitelist {
  /// The value of this parameter is empty by default. The attribute of the whitelist group. The console does not display the whitelist group whose value of this parameter is hidden.
  final pulumi.Input<String> ipGroupAttribute;
  /// IP whitelist group name
  final pulumi.Input<String> ipGroupName;
  /// List of IP addresses allowed to access all databases of an instance. The list contains up to 1,000 IP addresses, separated by commas. Supported formats include 0.0.0.0/0, 10.23.12.24 (IP), and 10.23.12.24/24 (Classless Inter-Domain Routing (CIDR) mode. /24 represents the length of the prefix in an IP address. The range of the prefix length is [1,32]). System default to `["127.0.0.1"]`.
  final pulumi.Input<String> securityIpList;

  /// Creates a new [GetInstancesInstanceIpWhitelist].
  /// [ipGroupAttribute] The value of this parameter is empty by default. The attribute of the whitelist group. The console does not display the whitelist group whose value of this parameter is hidden.
  /// [ipGroupName] IP whitelist group name
  /// [securityIpList] List of IP addresses allowed to access all databases of an instance. The list contains up to 1,000 IP addresses, separated by commas. Supported formats include 0.0.0.0/0, 10.23.12.24 (IP), and 10.23.12.24/24 (Classless Inter-Domain Routing (CIDR) mode. /24 represents the length of the prefix in an IP address. The range of the prefix length is [1,32]). System default to `["127.0.0.1"]`.
  const GetInstancesInstanceIpWhitelist({
    required this.ipGroupAttribute,
    required this.ipGroupName,
    required this.securityIpList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipGroupAttribute': ipGroupAttribute,
      'ipGroupName': ipGroupName,
      'securityIpList': securityIpList,
    };
  }

  factory GetInstancesInstanceIpWhitelist.fromMap(Map<String, dynamic> map) {
    return GetInstancesInstanceIpWhitelist(
      ipGroupAttribute: pulumi.Input.fromValue(map['ipGroupAttribute'] as String),
      ipGroupName: pulumi.Input.fromValue(map['ipGroupName'] as String),
      securityIpList: pulumi.Input.fromValue(map['securityIpList'] as String),
    );
  }
}

