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
  const GetRamDirectoriesDirectory({
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
      adConnectors: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRamDirectoriesDirectoryAdConnector>(map['adConnectors']!, (value) => GetRamDirectoriesDirectoryAdConnector.fromMap((value as Map).cast<String, dynamic>()))),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      customSecurityGroupId: pulumi.Input.fromValue(map['customSecurityGroupId'] as String),
      desktopAccessType: pulumi.Input.fromValue(map['desktopAccessType'] as String),
      desktopVpcEndpoint: pulumi.Input.fromValue(map['desktopVpcEndpoint'] as String),
      directoryType: pulumi.Input.fromValue(map['directoryType'] as String),
      dnsAddresses: pulumi.Input.fromValue((map['dnsAddresses'] as List).cast<String>()),
      dnsUserName: pulumi.Input.fromValue(map['dnsUserName'] as String),
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      domainPassword: pulumi.Input.fromValue(map['domainPassword'] as String),
      domainUserName: pulumi.Input.fromValue(map['domainUserName'] as String),
      enableAdminAccess: pulumi.Input.fromValue(map['enableAdminAccess'] as bool),
      enableCrossDesktopAccess: pulumi.Input.fromValue(map['enableCrossDesktopAccess'] as bool),
      enableInternetAccess: pulumi.Input.fromValue(map['enableInternetAccess'] as bool),
      fileSystemIds: pulumi.Input.fromValue((map['fileSystemIds'] as List).cast<String>()),
      id: pulumi.Input.fromValue(map['id'] as String),
      logs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRamDirectoriesDirectoryLog>(map['logs']!, (value) => GetRamDirectoriesDirectoryLog.fromMap((value as Map).cast<String, dynamic>()))),
      mfaEnabled: pulumi.Input.fromValue(map['mfaEnabled'] as bool),
      ramDirectoryId: pulumi.Input.fromValue(map['ramDirectoryId'] as String),
      ramDirectoryName: pulumi.Input.fromValue(map['ramDirectoryName'] as String),
      ssoEnabled: pulumi.Input.fromValue(map['ssoEnabled'] as bool),
      status: pulumi.Input.fromValue(map['status'] as String),
      subDnsAddresses: pulumi.Input.fromValue((map['subDnsAddresses'] as List).cast<String>()),
      subDomainName: pulumi.Input.fromValue(map['subDomainName'] as String),
      trustPassword: pulumi.Input.fromValue(map['trustPassword'] as String),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
      vswitchIds: pulumi.Input.fromValue((map['vswitchIds'] as List).cast<String>()),
    );
  }
}

