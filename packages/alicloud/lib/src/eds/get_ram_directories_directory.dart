// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ram_directories_directory_ad_connector.dart';
import 'get_ram_directories_directory_log.dart';

class GetRamDirectoriesDirectory {
  /// The AD connectors.
  final List<GetRamDirectoriesDirectoryAdConnector> adConnectors;
  /// The CreateTime of resource.
  final String createTime;
  /// The id of the custom security group.
  final String customSecurityGroupId;
  /// The desktop access type.
  final String desktopAccessType;
  /// The desktop vpc endpoint.
  final String desktopVpcEndpoint;
  /// The directory type.
  final String directoryType;
  /// The address of DNSAddress.
  final List<String> dnsAddresses;
  /// The username of DNS.
  final String dnsUserName;
  /// The name of the domain.
  final String domainName;
  /// The domain password.
  final String domainPassword;
  /// The username of the domain.
  final String domainUserName;
  /// Whether to enable admin access.
  final bool enableAdminAccess;
  /// Whether to enable cross desktop access.
  final bool enableCrossDesktopAccess;
  /// Whether enable internet access.
  final bool enableInternetAccess;
  /// The ids of filesystem.
  final List<String> fileSystemIds;
  /// The ID of the Ram Directory.
  final String id;
  /// The register log information.
  final List<GetRamDirectoriesDirectoryLog> logs;
  /// Whether to enable MFA.
  final bool mfaEnabled;
  /// The ID of ram directory.
  final String ramDirectoryId;
  /// The name of directory.
  final String ramDirectoryName;
  /// Whether to enable SSO.
  final bool ssoEnabled;
  /// The status of directory.
  final String status;
  /// The address of sub DNS.
  final List<String> subDnsAddresses;
  /// The Name of the sub-domain.
  final String subDomainName;
  /// The trust password.
  final String trustPassword;
  /// The ID of the vpc.
  final String vpcId;
  /// List of vSwitch IDs in the directory.
  final List<String> vswitchIds;

  /// Creates a new [GetRamDirectoriesDirectory].
  /// [adConnectors] The AD connectors.
  /// [createTime] The CreateTime of resource.
  /// [customSecurityGroupId] The id of the custom security group.
  /// [desktopAccessType] The desktop access type.
  /// [desktopVpcEndpoint] The desktop vpc endpoint.
  /// [directoryType] The directory type.
  /// [dnsAddresses] The address of DNSAddress.
  /// [dnsUserName] The username of DNS.
  /// [domainName] The name of the domain.
  /// [domainPassword] The domain password.
  /// [domainUserName] The username of the domain.
  /// [enableAdminAccess] Whether to enable admin access.
  /// [enableCrossDesktopAccess] Whether to enable cross desktop access.
  /// [enableInternetAccess] Whether enable internet access.
  /// [fileSystemIds] The ids of filesystem.
  /// [id] The ID of the Ram Directory.
  /// [logs] The register log information.
  /// [mfaEnabled] Whether to enable MFA.
  /// [ramDirectoryId] The ID of ram directory.
  /// [ramDirectoryName] The name of directory.
  /// [ssoEnabled] Whether to enable SSO.
  /// [status] The status of directory.
  /// [subDnsAddresses] The address of sub DNS.
  /// [subDomainName] The Name of the sub-domain.
  /// [trustPassword] The trust password.
  /// [vpcId] The ID of the vpc.
  /// [vswitchIds] List of vSwitch IDs in the directory.
  GetRamDirectoriesDirectory({
    required this.adConnectors,
    required this.createTime,
    required this.customSecurityGroupId,
    required this.desktopAccessType,
    required this.desktopVpcEndpoint,
    required this.directoryType,
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
    required this.logs,
    required this.mfaEnabled,
    required this.ramDirectoryId,
    required this.ramDirectoryName,
    required this.ssoEnabled,
    required this.status,
    required this.subDnsAddresses,
    required this.subDomainName,
    required this.trustPassword,
    required this.vpcId,
    required this.vswitchIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adConnectors': pulumi.Input.encodeList<GetRamDirectoriesDirectoryAdConnector, Map<String, dynamic>>(adConnectors, (value) => value.toMap()),
      'createTime': createTime,
      'customSecurityGroupId': customSecurityGroupId,
      'desktopAccessType': desktopAccessType,
      'desktopVpcEndpoint': desktopVpcEndpoint,
      'directoryType': directoryType,
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
      'logs': pulumi.Input.encodeList<GetRamDirectoriesDirectoryLog, Map<String, dynamic>>(logs, (value) => value.toMap()),
      'mfaEnabled': mfaEnabled,
      'ramDirectoryId': ramDirectoryId,
      'ramDirectoryName': ramDirectoryName,
      'ssoEnabled': ssoEnabled,
      'status': status,
      'subDnsAddresses': subDnsAddresses,
      'subDomainName': subDomainName,
      'trustPassword': trustPassword,
      'vpcId': vpcId,
      'vswitchIds': vswitchIds,
    };
  }

  factory GetRamDirectoriesDirectory.fromMap(Map<String, dynamic> map) {
    return GetRamDirectoriesDirectory(
      adConnectors: pulumi.Input.decodeList<GetRamDirectoriesDirectoryAdConnector>(map['adConnectors'], (value) => GetRamDirectoriesDirectoryAdConnector.fromMap((value as Map).cast<String, dynamic>())),
      createTime: map['createTime'] as String,
      customSecurityGroupId: map['customSecurityGroupId'] as String,
      desktopAccessType: map['desktopAccessType'] as String,
      desktopVpcEndpoint: map['desktopVpcEndpoint'] as String,
      directoryType: map['directoryType'] as String,
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
      logs: pulumi.Input.decodeList<GetRamDirectoriesDirectoryLog>(map['logs'], (value) => GetRamDirectoriesDirectoryLog.fromMap((value as Map).cast<String, dynamic>())),
      mfaEnabled: map['mfaEnabled'] as bool,
      ramDirectoryId: map['ramDirectoryId'] as String,
      ramDirectoryName: map['ramDirectoryName'] as String,
      ssoEnabled: map['ssoEnabled'] as bool,
      status: map['status'] as String,
      subDnsAddresses: (map['subDnsAddresses'] as List).cast<String>(),
      subDomainName: map['subDomainName'] as String,
      trustPassword: map['trustPassword'] as String,
      vpcId: map['vpcId'] as String,
      vswitchIds: (map['vswitchIds'] as List).cast<String>(),
    );
  }
}

