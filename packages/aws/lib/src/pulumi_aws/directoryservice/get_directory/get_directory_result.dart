// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_directory_connect_setting/get_directory_connect_setting.dart';
import '../get_directory_radius_setting/get_directory_radius_setting.dart';
import '../get_directory_vpc_setting/get_directory_vpc_setting.dart';

/// Result data returned by getDirectory.
class GetDirectoryResult {
  /// Access URL for the directory/connector, such as http://alias.awsapps.com.
  final String accessUrl;

  /// Alias for the directory/connector, such as `d-991708b282.awsapps.com`.
  final String alias;
  final List<GetDirectoryConnectSetting> connectSettings;

  /// Textual description for the directory/connector.
  final String description;
  final String directoryId;

  /// List of IP addresses of the DNS servers for the directory/connector.
  final List<String> dnsIpAddresses;

  /// (for `MicrosoftAD`) Microsoft AD edition (`Standard` or `Enterprise`).
  final String edition;

  /// Directory/connector single-sign on status.
  final bool enableSso;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Fully qualified name for the directory/connector.
  final String name;
  final List<GetDirectoryRadiusSetting> radiusSettings;
  final String region;

  /// ID of the security group created by the directory/connector.
  final String securityGroupId;

  /// Short name of the directory/connector, such as `CORP`.
  final String shortName;

  /// (for `SimpleAD` and `ADConnector`) Size of the directory/connector (`Small` or `Large`).
  final String size;

  /// A map of tags assigned to the directory/connector.
  final Map<String, String> tags;

  /// Directory type (`SimpleAD`, `ADConnector` or `MicrosoftAD`).
  final String type;
  final List<GetDirectoryVpcSetting> vpcSettings;

  GetDirectoryResult({
    required this.accessUrl,
    required this.alias,
    required this.connectSettings,
    required this.description,
    required this.directoryId,
    required this.dnsIpAddresses,
    required this.edition,
    required this.enableSso,
    required this.id,
    required this.name,
    required this.radiusSettings,
    required this.region,
    required this.securityGroupId,
    required this.shortName,
    required this.size,
    required this.tags,
    required this.type,
    required this.vpcSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessUrl'] = accessUrl;
    map['alias'] = alias;
    map['connectSettings'] =
        Input.encodeList<GetDirectoryConnectSetting, Map<String, dynamic>>(
            connectSettings, (value) => value.toMap());
    map['description'] = description;
    map['directoryId'] = directoryId;
    map['dnsIpAddresses'] = dnsIpAddresses;
    map['edition'] = edition;
    map['enableSso'] = enableSso;
    map['id'] = id;
    map['name'] = name;
    map['radiusSettings'] =
        Input.encodeList<GetDirectoryRadiusSetting, Map<String, dynamic>>(
            radiusSettings, (value) => value.toMap());
    map['region'] = region;
    map['securityGroupId'] = securityGroupId;
    map['shortName'] = shortName;
    map['size'] = size;
    map['tags'] = tags;
    map['type'] = type;
    map['vpcSettings'] =
        Input.encodeList<GetDirectoryVpcSetting, Map<String, dynamic>>(
            vpcSettings, (value) => value.toMap());
    return map;
  }

  factory GetDirectoryResult.fromMap(Map<String, dynamic> map) {
    return GetDirectoryResult(
      accessUrl: map['accessUrl'] as String,
      alias: map['alias'] as String,
      connectSettings: Input.decodeList<GetDirectoryConnectSetting>(
          map['connectSettings'],
          (value) => GetDirectoryConnectSetting.fromMap(
              (value as Map).cast<String, dynamic>())),
      description: map['description'] as String,
      directoryId: map['directoryId'] as String,
      dnsIpAddresses: (map['dnsIpAddresses'] as List).cast<String>(),
      edition: map['edition'] as String,
      enableSso: map['enableSso'] as bool,
      id: map['id'] as String,
      name: map['name'] as String,
      radiusSettings: Input.decodeList<GetDirectoryRadiusSetting>(
          map['radiusSettings'],
          (value) => GetDirectoryRadiusSetting.fromMap(
              (value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
      securityGroupId: map['securityGroupId'] as String,
      shortName: map['shortName'] as String,
      size: map['size'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
      vpcSettings: Input.decodeList<GetDirectoryVpcSetting>(
          map['vpcSettings'],
          (value) => GetDirectoryVpcSetting.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
