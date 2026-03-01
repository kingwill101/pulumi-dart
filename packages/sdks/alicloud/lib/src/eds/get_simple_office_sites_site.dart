// ignore_for_file: unused_element, unnecessary_cast


class GetSimpleOfficeSitesSite {
  /// The Internet Bandwidth Peak. It has been deprecated from version 1.142.0 and can be found in the new datasource alicloud_ecd_network_packages.
  final int bandwidth;
  /// Cloud Enterprise Network Instance Id.
  final String cenId;
  /// Workspace Corresponds to the Security Office Network of IPv4 Segment.
  final String cidrBlock;
  /// Workspace Creation Time.
  final String createTime;
  /// Security Group ID.
  final String customSecurityGroupId;
  /// Connect to the Cloud Desktop Allows the Use of the Access Mode of. Possible Values: the Internet: Only Allows the Client to Public Cloud Desktop. Virtual Private Cloud (VPC): Only Allows in the Virtual Private Cloud (VPC) in the Client to Connect to the Cloud Desktop. Any: Not by Way of Limitation. Use Client to Connect to the Cloud Desktop When It Is Possible to Choose the Connection.
  final String desktopAccessType;
  /// The Desktop Vpc Endpoint.
  final String desktopVpcEndpoint;
  /// Enterprise Ad Corresponding DNS Address.
  final List<String> dnsAddresses;
  /// Easy-to-Use DNS Name.
  final String dnsUserName;
  /// Enterprise of Ad Domain Name.
  final String domainName;
  /// Domain of the User Who Will Administer This Target Application Password.
  final String domainPassword;
  /// The Domain Administrator's Username.
  final String domainUserName;
  /// Whether to Use Cloud Desktop User Empowerment of Local Administrator Permissions.
  final bool enableAdminAccess;
  /// Enable Cross-Desktop Access.
  final bool enableCrossDesktopAccess;
  /// Whether the Open Internet Access Function.
  final bool enableInternetAccess;
  /// NAS File System ID.
  final List<String> fileSystemIds;
  /// The ID of the Simple Office Site.
  final String id;
  /// Whether to Enable Multi-Factor Authentication MFA.
  final bool mfaEnabled;
  /// Internet Access ID.
  final String networkPackageId;
  /// The Workspace ID.
  final String officeSiteId;
  /// Workspace Account System Type. Possible Values: Simple: Convenient Account. AD_CONNECTOR: Enterprise Ad Account.
  final String officeSiteType;
  /// The simple office site name.
  final String simpleOfficeSiteName;
  /// Whether to Enable Single Sign-on (SSO) for User-Based SSO.
  final bool ssoEnabled;
  /// Whether to Enable Single Sign-on (SSO) for User-Based SSO.
  final bool ssoStatus;
  /// Workspace State. Possible Values: Registering: Registered in the Registered: Registered.
  final String status;
  /// AD Subdomain of the DNS Address.
  final List<String> subDnsAddresses;
  /// AD Domain DNS Name.
  final String subDomainName;
  /// AD Trust Password.
  final String trustPassword;
  /// Security Office VPC ID.
  final String vpcId;
  /// The vswitch ids.
  final List<String> vswitchIds;

  /// Creates a new [GetSimpleOfficeSitesSite].
  /// [bandwidth] The Internet Bandwidth Peak. It has been deprecated from version 1.142.0 and can be found in the new datasource alicloud_ecd_network_packages.
  /// [cenId] Cloud Enterprise Network Instance Id.
  /// [cidrBlock] Workspace Corresponds to the Security Office Network of IPv4 Segment.
  /// [createTime] Workspace Creation Time.
  /// [customSecurityGroupId] Security Group ID.
  /// [desktopAccessType] Connect to the Cloud Desktop Allows the Use of the Access Mode of. Possible Values: the Internet: Only Allows the Client to Public Cloud Desktop. Virtual Private Cloud (VPC): Only Allows in the Virtual Private Cloud (VPC) in the Client to Connect to the Cloud Desktop. Any: Not by Way of Limitation. Use Client to Connect to the Cloud Desktop When It Is Possible to Choose the Connection.
  /// [desktopVpcEndpoint] The Desktop Vpc Endpoint.
  /// [dnsAddresses] Enterprise Ad Corresponding DNS Address.
  /// [dnsUserName] Easy-to-Use DNS Name.
  /// [domainName] Enterprise of Ad Domain Name.
  /// [domainPassword] Domain of the User Who Will Administer This Target Application Password.
  /// [domainUserName] The Domain Administrator's Username.
  /// [enableAdminAccess] Whether to Use Cloud Desktop User Empowerment of Local Administrator Permissions.
  /// [enableCrossDesktopAccess] Enable Cross-Desktop Access.
  /// [enableInternetAccess] Whether the Open Internet Access Function.
  /// [fileSystemIds] NAS File System ID.
  /// [id] The ID of the Simple Office Site.
  /// [mfaEnabled] Whether to Enable Multi-Factor Authentication MFA.
  /// [networkPackageId] Internet Access ID.
  /// [officeSiteId] The Workspace ID.
  /// [officeSiteType] Workspace Account System Type. Possible Values: Simple: Convenient Account. AD_CONNECTOR: Enterprise Ad Account.
  /// [simpleOfficeSiteName] The simple office site name.
  /// [ssoEnabled] Whether to Enable Single Sign-on (SSO) for User-Based SSO.
  /// [ssoStatus] Whether to Enable Single Sign-on (SSO) for User-Based SSO.
  /// [status] Workspace State. Possible Values: Registering: Registered in the Registered: Registered.
  /// [subDnsAddresses] AD Subdomain of the DNS Address.
  /// [subDomainName] AD Domain DNS Name.
  /// [trustPassword] AD Trust Password.
  /// [vpcId] Security Office VPC ID.
  /// [vswitchIds] The vswitch ids.
  GetSimpleOfficeSitesSite({
    required this.bandwidth,
    required this.cenId,
    required this.cidrBlock,
    required this.createTime,
    required this.customSecurityGroupId,
    required this.desktopAccessType,
    required this.desktopVpcEndpoint,
    required this.dnsAddresses,
    required this.dnsUserName,
    required this.domainName,
    required this.domainPassword,
    required this.domainUserName,
    required this.enableAdminAccess,
    required this.enableCrossDesktopAccess,
    required this.enableInternetAccess,
    required this.fileSystemIds,
    required this.id,
    required this.mfaEnabled,
    required this.networkPackageId,
    required this.officeSiteId,
    required this.officeSiteType,
    required this.simpleOfficeSiteName,
    required this.ssoEnabled,
    required this.ssoStatus,
    required this.status,
    required this.subDnsAddresses,
    required this.subDomainName,
    required this.trustPassword,
    required this.vpcId,
    required this.vswitchIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidth': bandwidth,
      'cenId': cenId,
      'cidrBlock': cidrBlock,
      'createTime': createTime,
      'customSecurityGroupId': customSecurityGroupId,
      'desktopAccessType': desktopAccessType,
      'desktopVpcEndpoint': desktopVpcEndpoint,
      'dnsAddresses': dnsAddresses,
      'dnsUserName': dnsUserName,
      'domainName': domainName,
      'domainPassword': domainPassword,
      'domainUserName': domainUserName,
      'enableAdminAccess': enableAdminAccess,
      'enableCrossDesktopAccess': enableCrossDesktopAccess,
      'enableInternetAccess': enableInternetAccess,
      'fileSystemIds': fileSystemIds,
      'id': id,
      'mfaEnabled': mfaEnabled,
      'networkPackageId': networkPackageId,
      'officeSiteId': officeSiteId,
      'officeSiteType': officeSiteType,
      'simpleOfficeSiteName': simpleOfficeSiteName,
      'ssoEnabled': ssoEnabled,
      'ssoStatus': ssoStatus,
      'status': status,
      'subDnsAddresses': subDnsAddresses,
      'subDomainName': subDomainName,
      'trustPassword': trustPassword,
      'vpcId': vpcId,
      'vswitchIds': vswitchIds,
    };
  }

  factory GetSimpleOfficeSitesSite.fromMap(Map<String, dynamic> map) {
    return GetSimpleOfficeSitesSite(
      bandwidth: map['bandwidth'] as int,
      cenId: map['cenId'] as String,
      cidrBlock: map['cidrBlock'] as String,
      createTime: map['createTime'] as String,
      customSecurityGroupId: map['customSecurityGroupId'] as String,
      desktopAccessType: map['desktopAccessType'] as String,
      desktopVpcEndpoint: map['desktopVpcEndpoint'] as String,
      dnsAddresses: (map['dnsAddresses'] as List).cast<String>(),
      dnsUserName: map['dnsUserName'] as String,
      domainName: map['domainName'] as String,
      domainPassword: map['domainPassword'] as String,
      domainUserName: map['domainUserName'] as String,
      enableAdminAccess: map['enableAdminAccess'] as bool,
      enableCrossDesktopAccess: map['enableCrossDesktopAccess'] as bool,
      enableInternetAccess: map['enableInternetAccess'] as bool,
      fileSystemIds: (map['fileSystemIds'] as List).cast<String>(),
      id: map['id'] as String,
      mfaEnabled: map['mfaEnabled'] as bool,
      networkPackageId: map['networkPackageId'] as String,
      officeSiteId: map['officeSiteId'] as String,
      officeSiteType: map['officeSiteType'] as String,
      simpleOfficeSiteName: map['simpleOfficeSiteName'] as String,
      ssoEnabled: map['ssoEnabled'] as bool,
      ssoStatus: map['ssoStatus'] as bool,
      status: map['status'] as String,
      subDnsAddresses: (map['subDnsAddresses'] as List).cast<String>(),
      subDomainName: map['subDomainName'] as String,
      trustPassword: map['trustPassword'] as String,
      vpcId: map['vpcId'] as String,
      vswitchIds: (map['vswitchIds'] as List).cast<String>(),
    );
  }
}

