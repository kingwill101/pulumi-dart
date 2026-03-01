// ignore_for_file: unused_element, unnecessary_cast


class GetServerlessInstancesInstanceSecurityIpGroup {
  /// The attribute of the IP whitelist. This parameter is empty by default.
  final String securityIpGroupAttribute;
  /// The name of the IP whitelist.
  final String securityIpGroupName;
  /// The IP addresses in the whitelist.
  final String securityIpList;

  /// Creates a new [GetServerlessInstancesInstanceSecurityIpGroup].
  /// [securityIpGroupAttribute] The attribute of the IP whitelist. This parameter is empty by default.
  /// [securityIpGroupName] The name of the IP whitelist.
  /// [securityIpList] The IP addresses in the whitelist.
  GetServerlessInstancesInstanceSecurityIpGroup({
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
      securityIpGroupAttribute: map['securityIpGroupAttribute'] as String,
      securityIpGroupName: map['securityIpGroupName'] as String,
      securityIpList: map['securityIpList'] as String,
    );
  }
}

