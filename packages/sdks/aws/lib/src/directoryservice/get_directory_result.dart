// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_directory_connect_setting.dart';
import 'get_directory_radius_setting.dart';
import 'get_directory_vpc_setting.dart';

/// Result data returned by getDirectory.
class GetDirectoryResult {
  /// Access URL for the directory/connector, such as http://alias.awsapps.com.
  final String? accessUrl;
  /// Alias for the directory/connector, such as `d-991708b282.awsapps.com`.
  final String? alias;
  final List<GetDirectoryConnectSetting>? connectSettings;
  /// Textual description for the directory/connector.
  final String? description;
  final String? directoryId;
  /// List of IP addresses of the DNS servers for the directory/connector.
  final List<String>? dnsIpAddresses;
  /// (for `MicrosoftAD`) Microsoft AD edition (`Standard` or `Enterprise`).
  final String? edition;
  /// Directory/connector single-sign on status.
  final bool? enableSso;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Fully qualified name for the directory/connector.
  final String? name;
  final List<GetDirectoryRadiusSetting>? radiusSettings;
  final String? region;
  /// ID of the security group created by the directory/connector.
  final String? securityGroupId;
  /// Short name of the directory/connector, such as `CORP`.
  final String? shortName;
  /// (for `SimpleAD` and `ADConnector`) Size of the directory/connector (`Small` or `Large`).
  final String? size;
  /// A map of tags assigned to the directory/connector.
  final Map<String, String>? tags;
  /// Directory type (`SimpleAD`, `ADConnector` or `MicrosoftAD`).
  final String? type;
  final List<GetDirectoryVpcSetting>? vpcSettings;

  /// Creates a new [GetDirectoryResult].
  /// [accessUrl] Access URL for the directory/connector, such as http://alias.awsapps.com.
  /// [alias] Alias for the directory/connector, such as `d-991708b282.awsapps.com`.
  /// [connectSettings] Optional.
  /// [description] Textual description for the directory/connector.
  /// [directoryId] Optional.
  /// [dnsIpAddresses] List of IP addresses of the DNS servers for the directory/connector.
  /// [edition] (for `MicrosoftAD`) Microsoft AD edition (`Standard` or `Enterprise`).
  /// [enableSso] Directory/connector single-sign on status.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Fully qualified name for the directory/connector.
  /// [radiusSettings] Optional.
  /// [region] Optional.
  /// [securityGroupId] ID of the security group created by the directory/connector.
  /// [shortName] Short name of the directory/connector, such as `CORP`.
  /// [size] (for `SimpleAD` and `ADConnector`) Size of the directory/connector (`Small` or `Large`).
  /// [tags] A map of tags assigned to the directory/connector.
  /// [type] Directory type (`SimpleAD`, `ADConnector` or `MicrosoftAD`).
  /// [vpcSettings] Optional.
  const GetDirectoryResult({
    this.accessUrl,
    this.alias,
    this.connectSettings,
    this.description,
    this.directoryId,
    this.dnsIpAddresses,
    this.edition,
    this.enableSso,
    this.id,
    this.name,
    this.radiusSettings,
    this.region,
    this.securityGroupId,
    this.shortName,
    this.size,
    this.tags,
    this.type,
    this.vpcSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessUrl': ?accessUrl,
      'alias': ?alias,
      'connectSettings': ?(() { final guardedValue = connectSettings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDirectoryConnectSetting, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'description': ?description,
      'directoryId': ?directoryId,
      'dnsIpAddresses': ?dnsIpAddresses,
      'edition': ?edition,
      'enableSso': ?enableSso,
      'id': ?id,
      'name': ?name,
      'radiusSettings': ?(() { final guardedValue = radiusSettings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDirectoryRadiusSetting, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'region': ?region,
      'securityGroupId': ?securityGroupId,
      'shortName': ?shortName,
      'size': ?size,
      'tags': ?tags,
      'type': ?type,
      'vpcSettings': ?(() { final guardedValue = vpcSettings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDirectoryVpcSetting, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetDirectoryResult.fromMap(Map<String, dynamic> map) {
    return GetDirectoryResult(
      accessUrl: (() { final guardedValue = map['accessUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      alias: (() { final guardedValue = map['alias']; if (guardedValue == null) return null; return guardedValue as String; })(),
      connectSettings: (() { final guardedValue = map['connectSettings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDirectoryConnectSetting>(guardedValue, (value) => GetDirectoryConnectSetting.fromMap((value as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      directoryId: (() { final guardedValue = map['directoryId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dnsIpAddresses: (() { final guardedValue = map['dnsIpAddresses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      edition: (() { final guardedValue = map['edition']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enableSso: (() { final guardedValue = map['enableSso']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      radiusSettings: (() { final guardedValue = map['radiusSettings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDirectoryRadiusSetting>(guardedValue, (value) => GetDirectoryRadiusSetting.fromMap((value as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      securityGroupId: (() { final guardedValue = map['securityGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      shortName: (() { final guardedValue = map['shortName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vpcSettings: (() { final guardedValue = map['vpcSettings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDirectoryVpcSetting>(guardedValue, (value) => GetDirectoryVpcSetting.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
