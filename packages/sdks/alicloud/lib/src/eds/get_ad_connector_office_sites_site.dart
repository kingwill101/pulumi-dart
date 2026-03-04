// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ad_connector_office_sites_site_ad_connector.dart';
import 'get_ad_connector_office_sites_site_log.dart';

class GetAdConnectorOfficeSitesSite {
  /// The Name of the ad connector office site.
  final pulumi.Input<String> adConnectorOfficeSiteName;

  /// AD Connector Collection of Information.
  final pulumi.Input<List<GetAdConnectorOfficeSitesSiteAdConnector>>
  adConnectors;

  /// The Internet Bandwidth Peak. Possible Values: 0~200. If This Field Is Set to 0, Indicates That There Is No Open Internet Access.
  final pulumi.Input<int> bandwidth;

  /// Cloud Enterprise Network Instance Id.
  final pulumi.Input<String> cenId;

  /// Workspace Corresponds to the Security Office Network of IPv4 Segment.
  final pulumi.Input<String> cidrBlock;

  /// Workspace Creation Time.
  final pulumi.Input<String> createTime;

  /// Security Group ID.
  final pulumi.Input<String> customSecurityGroupId;

  /// The method that is used to connect the client to cloud desktops.
  final pulumi.Input<String> desktopAccessType;

  /// The endpoint that is used to connect to cloud desktops over a VPC.
  final pulumi.Input<String> desktopVpcEndpoint;

  /// Enterprise Ad Corresponding DNS Address.
  final pulumi.Input<List<String>> dnsAddresses;

  /// The Easy-to-Use DNS Name.
  final pulumi.Input<String> dnsUserName;

  /// Enterprise of Ad Domain Name.
  final pulumi.Input<String> domainName;

  /// The Domain Administrator's Username.
  final pulumi.Input<String> domainUserName;

  /// Whether to Use Cloud Desktop User Empowerment of Local Administrator Permissions.
  final pulumi.Input<bool> enableAdminAccess;

  /// Indicates whether the desktop communication feature is enabled for cloud desktops in the same workspace. After the feature is enabled, the cloud desktops in the same workspace can access each other.
  final pulumi.Input<bool> enableCrossDesktopAccess;

  /// Whether the Open Internet Access Function.
  final pulumi.Input<bool> enableInternetAccess;

  /// NAS File System ID.
  final pulumi.Input<List<String>> fileSystemIds;

  /// The ID of the Ad Connector Office Site.
  final pulumi.Input<String> id;

  /// Registered Log Information.
  final pulumi.Input<List<GetAdConnectorOfficeSitesSiteLog>> logs;

  /// Whether to Enable Multi-Factor Authentication MFA.
  final pulumi.Input<bool> mfaEnabled;

  /// The ID of the Internet Access.
  final pulumi.Input<String> networkPackageId;

  /// The ID of the Workspace.
  final pulumi.Input<String> officeSiteId;

  /// Workspace Account System Type. Possible Values: Simple: Convenient Account. AD_CONNECTOR: Enterprise Ad Account.
  final pulumi.Input<String> officeSiteType;

  /// Whether to Enable Single Sign-on (SSO) for User-Based SSO.
  final pulumi.Input<bool> ssoEnabled;

  /// The workspace status.
  final pulumi.Input<String> status;

  /// Sub-Domain DNS Address.
  final pulumi.Input<List<String>> subDomainDnsAddresses;

  /// The AD Domain DNS Name.
  final pulumi.Input<String> subDomainName;

  /// The AD Trust Password.
  final pulumi.Input<String> trustPassword;

  /// Security Office VPC ID.
  final pulumi.Input<String> vpcId;

  /// The vswitch ids.
  final pulumi.Input<List<String>> vswitchIds;

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
      'adConnectors':
          pulumi.Input.mapInputValue<
            List<GetAdConnectorOfficeSitesSiteAdConnector>,
            List<Map<String, dynamic>>
          >(
            adConnectors,
            (value) =>
                pulumi.Input.encodeList<
                  GetAdConnectorOfficeSitesSiteAdConnector,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
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
      'logs':
          pulumi.Input.mapInputValue<
            List<GetAdConnectorOfficeSitesSiteLog>,
            List<Map<String, dynamic>>
          >(
            logs,
            (value) =>
                pulumi.Input.encodeList<
                  GetAdConnectorOfficeSitesSiteLog,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
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
      adConnectorOfficeSiteName: pulumi.Input.fromValue(
        map['adConnectorOfficeSiteName'] as String,
      ),
      adConnectors: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetAdConnectorOfficeSitesSiteAdConnector>(
          map['adConnectors']!,
          (value) => GetAdConnectorOfficeSitesSiteAdConnector.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
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
      logs: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetAdConnectorOfficeSitesSiteLog>(
          map['logs']!,
          (value) => GetAdConnectorOfficeSitesSiteLog.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      mfaEnabled: pulumi.Input.fromValue(map['mfaEnabled'] as bool),
      networkPackageId: pulumi.Input.fromValue(
        map['networkPackageId'] as String,
      ),
      officeSiteId: pulumi.Input.fromValue(map['officeSiteId'] as String),
      officeSiteType: pulumi.Input.fromValue(map['officeSiteType'] as String),
      ssoEnabled: pulumi.Input.fromValue(map['ssoEnabled'] as bool),
      status: pulumi.Input.fromValue(map['status'] as String),
      subDomainDnsAddresses: pulumi.Input.fromValue(
        (map['subDomainDnsAddresses'] as List).cast<String>(),
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
