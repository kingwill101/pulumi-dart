// ignore_for_file: unused_element, unnecessary_cast


class ServerlessInstanceSecurityIpGroup {
  /// The attribute of the IP whitelist. This parameter is empty by default.
  final String? securityIpGroupAttribute;
  /// The name of the IP whitelist.
  final String? securityIpGroupName;
  /// The IP addresses in the whitelist.
  final String? securityIpList;

  /// Creates a new [ServerlessInstanceSecurityIpGroup].
  /// [securityIpGroupAttribute] The attribute of the IP whitelist. This parameter is empty by default.
  /// [securityIpGroupName] The name of the IP whitelist.
  /// [securityIpList] The IP addresses in the whitelist.
  ServerlessInstanceSecurityIpGroup({
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
      securityIpGroupAttribute: map['securityIpGroupAttribute'] == null ? null : map['securityIpGroupAttribute'] as String,
      securityIpGroupName: map['securityIpGroupName'] == null ? null : map['securityIpGroupName'] as String,
      securityIpList: map['securityIpList'] == null ? null : map['securityIpList'] as String,
    );
  }
}

