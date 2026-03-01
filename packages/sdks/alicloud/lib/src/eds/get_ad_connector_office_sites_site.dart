// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ad_connector_office_sites_site_ad_connector.dart';
import 'get_ad_connector_office_sites_site_log.dart';

class GetAdConnectorOfficeSitesSite {
  /// The Name of the ad connector office site.
  final String adConnectorOfficeSiteName;
  /// AD Connector Collection of Information.
  final List<GetAdConnectorOfficeSitesSiteAdConnector> adConnectors;
  /// The Internet Bandwidth Peak. Possible Values: 0~200. If This Field Is Set to 0, Indicates That There Is No Open Internet Access.
  final int bandwidth;
  /// Cloud Enterprise Network Instance Id.
  final String cenId;
  /// Workspace Corresponds to the Security Office Network of IPv4 Segment.
  final String cidrBlock;
  /// Workspace Creation Time.
  final String createTime;
  /// Security Group ID.
  final String customSecurityGroupId;
  /// The method that is used to connect the client to cloud desktops.
  final String desktopAccessType;
  /// The endpoint that is used to connect to cloud desktops over a VPC.
  final String desktopVpcEndpoint;
  /// Enterprise Ad Corresponding DNS Address.
  final List<String> dnsAddresses;
  /// The Easy-to-Use DNS Name.
  final String dnsUserName;
  /// Enterprise of Ad Domain Name.
  final String domainName;
  /// The Domain Administrator's Username.
  final String domainUserName;
  /// Whether to Use Cloud Desktop User Empowerment of Local Administrator Permissions.
  final bool enableAdminAccess;
  /// Indicates whether the desktop communication feature is enabled for cloud desktops in the same workspace. After the feature is enabled, the cloud desktops in the same workspace can access each other.
  final bool enableCrossDesktopAccess;
  /// Whether the Open Internet Access Function.
  final bool enableInternetAccess;
  /// NAS File System ID.
  final List<String> fileSystemIds;
  /// The ID of the Ad Connector Office Site.
  final String id;
  /// Registered Log Information.
  final List<GetAdConnectorOfficeSitesSiteLog> logs;
  /// Whether to Enable Multi-Factor Authentication MFA.
  final bool mfaEnabled;
  /// The ID of the Internet Access.
  final String networkPackageId;
  /// The ID of the Workspace.
  final String officeSiteId;
  /// Workspace Account System Type. Possible Values: Simple: Convenient Account. AD_CONNECTOR: Enterprise Ad Account.
  final String officeSiteType;
  /// Whether to Enable Single Sign-on (SSO) for User-Based SSO.
  final bool ssoEnabled;
  /// The workspace status.
  final String status;
  /// Sub-Domain DNS Address.
  final List<String> subDomainDnsAddresses;
  /// The AD Domain DNS Name.
  final String subDomainName;
  /// The AD Trust Password.
  final String trustPassword;
  /// Security Office VPC ID.
  final String vpcId;
  /// The vswitch ids.
  final List<String> vswitchIds;

  /// Creates a new [GetAdConnectorOfficeSitesSite].
  /// [adConnectorOfficeSiteName] The Name of the ad connector office site.
  /// [adConnectors] AD Connector Collection of Information.
  /// [bandwidth] The Internet Bandwidth Peak. Possible Values: 0~200. If This Field Is Set to 0, Indicates That There Is No Open Internet Access.
  /// [cenId] Cloud Enterprise Network Instance Id.
  /// [cidrBlock] Workspace Corresponds to the Security Office Network of IPv4 Segment.
  /// [createTime] Workspace Creation Time.
  /// [customSecurityGroupId] Security Group ID.
  /// [desktopAccessType] The method that is used to connect the client to cloud desktops.
  /// [desktopVpcEndpoint] The endpoint that is used to connect to cloud desktops over a VPC.
  /// [dnsAddresses] Enterprise Ad Corresponding DNS Address.
  /// [dnsUserName] The Easy-to-Use DNS Name.
  /// [domainName] Enterprise of Ad Domain Name.
  /// [domainUserName] The Domain Administrator's Username.
  /// [enableAdminAccess] Whether to Use Cloud Desktop User Empowerment of Local Administrator Permissions.
  /// [enableCrossDesktopAccess] Indicates whether the desktop communication feature is enabled for cloud desktops in the same workspace. After the feature is enabled, the cloud desktops in the same workspace can access each other.
  /// [enableInternetAccess] Whether the Open Internet Access Function.
  /// [fileSystemIds] NAS File System ID.
  /// [id] The ID of the Ad Connector Office Site.
  /// [logs] Registered Log Information.
  /// [mfaEnabled] Whether to Enable Multi-Factor Authentication MFA.
  /// [networkPackageId] The ID of the Internet Access.
  /// [officeSiteId] The ID of the Workspace.
  /// [officeSiteType] Workspace Account System Type. Possible Values: Simple: Convenient Account. AD_CONNECTOR: Enterprise Ad Account.
  /// [ssoEnabled] Whether to Enable Single Sign-on (SSO) for User-Based SSO.
  /// [status] The workspace status.
  /// [subDomainDnsAddresses] Sub-Domain DNS Address.
  /// [subDomainName] The AD Domain DNS Name.
  /// [trustPassword] The AD Trust Password.
  /// [vpcId] Security Office VPC ID.
  /// [vswitchIds] The vswitch ids.
  GetAdConnectorOfficeSitesSite({
    required this.adConnectorOfficeSiteName,
    required this.adConnectors,
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
    required this.domainUserName,
    required this.enableAdminAccess,
    required this.enableCrossDesktopAccess,
    required this.enableInternetAccess,
    required this.fileSystemIds,
    required this.id,
    required this.logs,
    required this.mfaEnabled,
    required this.networkPackageId,
    required this.officeSiteId,
    required this.officeSiteType,
    required this.ssoEnabled,
    required this.status,
    required this.subDomainDnsAddresses,
    required this.subDomainName,
    required this.trustPassword,
    required this.vpcId,
    required this.vswitchIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adConnectorOfficeSiteName': adConnectorOfficeSiteName,
      'adConnectors': pulumi.Input.encodeList<GetAdConnectorOfficeSitesSiteAdConnector, Map<String, dynamic>>(adConnectors, (value) => value.toMap()),
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
      'domainUserName': domainUserName,
      'enableAdminAccess': enableAdminAccess,
      'enableCrossDesktopAccess': enableCrossDesktopAccess,
      'enableInternetAccess': enableInternetAccess,
      'fileSystemIds': fileSystemIds,
      'id': id,
      'logs': pulumi.Input.encodeList<GetAdConnectorOfficeSitesSiteLog, Map<String, dynamic>>(logs, (value) => value.toMap()),
      'mfaEnabled': mfaEnabled,
      'networkPackageId': networkPackageId,
      'officeSiteId': officeSiteId,
      'officeSiteType': officeSiteType,
      'ssoEnabled': ssoEnabled,
      'status': status,
      'subDomainDnsAddresses': subDomainDnsAddresses,
      'subDomainName': subDomainName,
      'trustPassword': trustPassword,
      'vpcId': vpcId,
      'vswitchIds': vswitchIds,
    };
  }

  factory GetAdConnectorOfficeSitesSite.fromMap(Map<String, dynamic> map) {
    return GetAdConnectorOfficeSitesSite(
      adConnectorOfficeSiteName: map['adConnectorOfficeSiteName'] as String,
      adConnectors: pulumi.Input.decodeList<GetAdConnectorOfficeSitesSiteAdConnector>(map['adConnectors'], (value) => GetAdConnectorOfficeSitesSiteAdConnector.fromMap((value as Map).cast<String, dynamic>())),
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
      domainUserName: map['domainUserName'] as String,
      enableAdminAccess: map['enableAdminAccess'] as bool,
      enableCrossDesktopAccess: map['enableCrossDesktopAccess'] as bool,
      enableInternetAccess: map['enableInternetAccess'] as bool,
      fileSystemIds: (map['fileSystemIds'] as List).cast<String>(),
      id: map['id'] as String,
      logs: pulumi.Input.decodeList<GetAdConnectorOfficeSitesSiteLog>(map['logs'], (value) => GetAdConnectorOfficeSitesSiteLog.fromMap((value as Map).cast<String, dynamic>())),
      mfaEnabled: map['mfaEnabled'] as bool,
      networkPackageId: map['networkPackageId'] as String,
      officeSiteId: map['officeSiteId'] as String,
      officeSiteType: map['officeSiteType'] as String,
      ssoEnabled: map['ssoEnabled'] as bool,
      status: map['status'] as String,
      subDomainDnsAddresses: (map['subDomainDnsAddresses'] as List).cast<String>(),
      subDomainName: map['subDomainName'] as String,
      trustPassword: map['trustPassword'] as String,
      vpcId: map['vpcId'] as String,
      vswitchIds: (map['vswitchIds'] as List).cast<String>(),
    );
  }
}

