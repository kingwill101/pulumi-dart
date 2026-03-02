// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ram_directories_directory_ad_connector.dart';
import 'get_ram_directories_directory_log.dart';

class GetRamDirectoriesDirectory {
  /// The AD connectors.
  final pulumi.Input<List<GetRamDirectoriesDirectoryAdConnector>> adConnectors;
  /// The CreateTime of resource.
  final pulumi.Input<String> createTime;
  /// The id of the custom security group.
  final pulumi.Input<String> customSecurityGroupId;
  /// The desktop access type.
  final pulumi.Input<String> desktopAccessType;
  /// The desktop vpc endpoint.
  final pulumi.Input<String> desktopVpcEndpoint;
  /// The directory type.
  final pulumi.Input<String> directoryType;
  /// The address of DNSAddress.
  final pulumi.Input<List<String>> dnsAddresses;
  /// The username of DNS.
  final pulumi.Input<String> dnsUserName;
  /// The name of the domain.
  final pulumi.Input<String> domainName;
  /// The domain password.
  final pulumi.Input<String> domainPassword;
  /// The username of the domain.
  final pulumi.Input<String> domainUserName;
  /// Whether to enable admin access.
  final pulumi.Input<bool> enableAdminAccess;
  /// Whether to enable cross desktop access.
  final pulumi.Input<bool> enableCrossDesktopAccess;
  /// Whether enable internet access.
  final pulumi.Input<bool> enableInternetAccess;
  /// The ids of filesystem.
  final pulumi.Input<List<String>> fileSystemIds;
  /// The ID of the Ram Directory.
  final pulumi.Input<String> id;
  /// The register log information.
  final pulumi.Input<List<GetRamDirectoriesDirectoryLog>> logs;
  /// Whether to enable MFA.
  final pulumi.Input<bool> mfaEnabled;
  /// The ID of ram directory.
  final pulumi.Input<String> ramDirectoryId;
  /// The name of directory.
  final pulumi.Input<String> ramDirectoryName;
  /// Whether to enable SSO.
  final pulumi.Input<bool> ssoEnabled;
  /// The status of directory.
  final pulumi.Input<String> status;
  /// The address of sub DNS.
  final pulumi.Input<List<String>> subDnsAddresses;
  /// The Name of the sub-domain.
  final pulumi.Input<String> subDomainName;
  /// The trust password.
  final pulumi.Input<String> trustPassword;
  /// The ID of the vpc.
  final pulumi.Input<String> vpcId;
  /// List of vSwitch IDs in the directory.
  final pulumi.Input<List<String>> vswitchIds;

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
      'adConnectors': pulumi.Input.mapInputValue<List<GetRamDirectoriesDirectoryAdConnector>, List<Map<String, dynamic>>>(adConnectors, (value) => pulumi.Input.encodeList<GetRamDirectoriesDirectoryAdConnector, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      'logs': pulumi.Input.mapInputValue<List<GetRamDirectoriesDirectoryLog>, List<Map<String, dynamic>>>(logs, (value) => pulumi.Input.encodeList<GetRamDirectoriesDirectoryLog, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      adConnectors: (pulumi.Input.decodeList<GetRamDirectoriesDirectoryAdConnector>(map['adConnectors'], (value) => GetRamDirectoriesDirectoryAdConnector.fromMap((value as Map).cast<String, dynamic>()))).input(),
      createTime: (map['createTime'] as String).input(),
      customSecurityGroupId: (map['customSecurityGroupId'] as String).input(),
      desktopAccessType: (map['desktopAccessType'] as String).input(),
      desktopVpcEndpoint: (map['desktopVpcEndpoint'] as String).input(),
      directoryType: (map['directoryType'] as String).input(),
      dnsAddresses: ((map['dnsAddresses'] as List).cast<String>()).input(),
      dnsUserName: (map['dnsUserName'] as String).input(),
      domainName: (map['domainName'] as String).input(),
      domainPassword: (map['domainPassword'] as String).input(),
      domainUserName: (map['domainUserName'] as String).input(),
      enableAdminAccess: (map['enableAdminAccess'] as bool).input(),
      enableCrossDesktopAccess: (map['enableCrossDesktopAccess'] as bool).input(),
      enableInternetAccess: (map['enableInternetAccess'] as bool).input(),
      fileSystemIds: ((map['fileSystemIds'] as List).cast<String>()).input(),
      id: (map['id'] as String).input(),
      logs: (pulumi.Input.decodeList<GetRamDirectoriesDirectoryLog>(map['logs'], (value) => GetRamDirectoriesDirectoryLog.fromMap((value as Map).cast<String, dynamic>()))).input(),
      mfaEnabled: (map['mfaEnabled'] as bool).input(),
      ramDirectoryId: (map['ramDirectoryId'] as String).input(),
      ramDirectoryName: (map['ramDirectoryName'] as String).input(),
      ssoEnabled: (map['ssoEnabled'] as bool).input(),
      status: (map['status'] as String).input(),
      subDnsAddresses: ((map['subDnsAddresses'] as List).cast<String>()).input(),
      subDomainName: (map['subDomainName'] as String).input(),
      trustPassword: (map['trustPassword'] as String).input(),
      vpcId: (map['vpcId'] as String).input(),
      vswitchIds: ((map['vswitchIds'] as List).cast<String>()).input(),
    );
  }
}

