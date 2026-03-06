// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServerlessInstancesInstanceSecurityIpGroup {
  /// The attribute of the IP whitelist. This parameter is empty by default.
  final pulumi.Input<String> securityIpGroupAttribute;
  /// The name of the IP whitelist.
  final pulumi.Input<String> securityIpGroupName;
  /// The IP addresses in the whitelist.
  final pulumi.Input<String> securityIpList;

  /// Creates a new [GetServerlessInstancesInstanceSecurityIpGroup].
  /// [securityIpGroupAttribute] The attribute of the IP whitelist. This parameter is empty by default.
  /// [securityIpGroupName] The name of the IP whitelist.
  /// [securityIpList] The IP addresses in the whitelist.
  const GetServerlessInstancesInstanceSecurityIpGroup({
    required this.securityIpGroupAttribute,
    required this.securityIpGroupName,
    required this.securityIpList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityIpGroupAttribute': securityIpGroupAttribute,
      'securityIpGroupName': securityIpGroupName,
      'securityIpList': securityIpList,
    };
  }

  factory GetServerlessInstancesInstanceSecurityIpGroup.fromMap(Map<String, dynamic> map) {
    return GetServerlessInstancesInstanceSecurityIpGroup(
      securityIpGroupAttribute: pulumi.Input.fromValue(map['securityIpGroupAttribute'] as String),
      securityIpGroupName: pulumi.Input.fromValue(map['securityIpGroupName'] as String),
      securityIpList: pulumi.Input.fromValue(map['securityIpList'] as String),
    );
  }
}

