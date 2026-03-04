// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSimpleOfficeSitesSite {
  /// The Internet Bandwidth Peak. It has been deprecated from version 1.142.0 and can be found in the new datasource alicloud_ecd_network_packages.
  final pulumi.Input<int> bandwidth;

  /// Cloud Enterprise Network Instance Id.
  final pulumi.Input<String> cenId;

  /// Workspace Corresponds to the Security Office Network of IPv4 Segment.
  final pulumi.Input<String> cidrBlock;

  /// Workspace Creation Time.
  final pulumi.Input<String> createTime;

  /// Security Group ID.
  final pulumi.Input<String> customSecurityGroupId;

  /// Connect to the Cloud Desktop Allows the Use of the Access Mode of. Possible Values: the Internet: Only Allows the Client to Public Cloud Desktop. Virtual Private Cloud (VPC): Only Allows in the Virtual Private Cloud (VPC) in the Client to Connect to the Cloud Desktop. Any: Not by Way of Limitation. Use Client to Connect to the Cloud Desktop When It Is Possible to Choose the Connection.
  final pulumi.Input<String> desktopAccessType;

  /// The Desktop Vpc Endpoint.
  final pulumi.Input<String> desktopVpcEndpoint;

  /// Enterprise Ad Corresponding DNS Address.
  final pulumi.Input<List<String>> dnsAddresses;

  /// Easy-to-Use DNS Name.
  final pulumi.Input<String> dnsUserName;

  /// Enterprise of Ad Domain Name.
  final pulumi.Input<String> domainName;

  /// Domain of the User Who Will Administer This Target Application Password.
  final pulumi.Input<String> domainPassword;

  /// The Domain Administrator's Username.
  final pulumi.Input<String> domainUserName;

  /// Whether to Use Cloud Desktop User Empowerment of Local Administrator Permissions.
  final pulumi.Input<bool> enableAdminAccess;

  /// Enable Cross-Desktop Access.
  final pulumi.Input<bool> enableCrossDesktopAccess;

  /// Whether the Open Internet Access Function.
  final pulumi.Input<bool> enableInternetAccess;

  /// NAS File System ID.
  final pulumi.Input<List<String>> fileSystemIds;

  /// The ID of the Simple Office Site.
  final pulumi.Input<String> id;

  /// Whether to Enable Multi-Factor Authentication MFA.
  final pulumi.Input<bool> mfaEnabled;

  /// Internet Access ID.
  final pulumi.Input<String> networkPackageId;

  /// The Workspace ID.
  final pulumi.Input<String> officeSiteId;

  /// Workspace Account System Type. Possible Values: Simple: Convenient Account. AD_CONNECTOR: Enterprise Ad Account.
  final pulumi.Input<String> officeSiteType;

  /// The simple office site name.
  final pulumi.Input<String> simpleOfficeSiteName;

  /// Whether to Enable Single Sign-on (SSO) for User-Based SSO.
  final pulumi.Input<bool> ssoEnabled;

  /// Whether to Enable Single Sign-on (SSO) for User-Based SSO.
  final pulumi.Input<bool> ssoStatus;

  /// Workspace State. Possible Values: Registering: Registered in the Registered: Registered.
  final pulumi.Input<String> status;

  /// AD Subdomain of the DNS Address.
  final pulumi.Input<List<String>> subDnsAddresses;

  /// AD Domain DNS Name.
  final pulumi.Input<String> subDomainName;

  /// AD Trust Password.
  final pulumi.Input<String> trustPassword;

  /// Security Office VPC ID.
  final pulumi.Input<String> vpcId;

  /// The vswitch ids.
  final pulumi.Input<List<String>> vswitchIds;

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
      bandwidth: pulumi.Input.fromValue(map['bandwidth'] as int),
      cenId: pulumi.Input.fromValue(map['cenId'] as String),
      cidrBlock: pulumi.Input.fromValue(map['cidrBlock'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      customSecurityGroupId: pulumi.Input.fromValue(
        map['customSecurityGroupId'] as String,
      ),
      desktopAccessType: pulumi.Input.fromValue(
        map['desktopAccessType'] as String,
      ),
      desktopVpcEndpoint: pulumi.Input.fromValue(
        map['desktopVpcEndpoint'] as String,
      ),
      dnsAddresses: pulumi.Input.fromValue(
        (map['dnsAddresses'] as List).cast<String>(),
      ),
      dnsUserName: pulumi.Input.fromValue(map['dnsUserName'] as String),
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      domainPassword: pulumi.Input.fromValue(map['domainPassword'] as String),
      domainUserName: pulumi.Input.fromValue(map['domainUserName'] as String),
      enableAdminAccess: pulumi.Input.fromValue(
        map['enableAdminAccess'] as bool,
      ),
      enableCrossDesktopAccess: pulumi.Input.fromValue(
        map['enableCrossDesktopAccess'] as bool,
      ),
      enableInternetAccess: pulumi.Input.fromValue(
        map['enableInternetAccess'] as bool,
      ),
      fileSystemIds: pulumi.Input.fromValue(
        (map['fileSystemIds'] as List).cast<String>(),
      ),
      id: pulumi.Input.fromValue(map['id'] as String),
      mfaEnabled: pulumi.Input.fromValue(map['mfaEnabled'] as bool),
      networkPackageId: pulumi.Input.fromValue(
        map['networkPackageId'] as String,
      ),
      officeSiteId: pulumi.Input.fromValue(map['officeSiteId'] as String),
      officeSiteType: pulumi.Input.fromValue(map['officeSiteType'] as String),
      simpleOfficeSiteName: pulumi.Input.fromValue(
        map['simpleOfficeSiteName'] as String,
      ),
      ssoEnabled: pulumi.Input.fromValue(map['ssoEnabled'] as bool),
      ssoStatus: pulumi.Input.fromValue(map['ssoStatus'] as bool),
      status: pulumi.Input.fromValue(map['status'] as String),
      subDnsAddresses: pulumi.Input.fromValue(
        (map['subDnsAddresses'] as List).cast<String>(),
      ),
      subDomainName: pulumi.Input.fromValue(map['subDomainName'] as String),
      trustPassword: pulumi.Input.fromValue(map['trustPassword'] as String),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
      vswitchIds: pulumi.Input.fromValue(
        (map['vswitchIds'] as List).cast<String>(),
      ),
    );
  }
}
