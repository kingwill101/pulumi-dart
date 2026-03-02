// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_alidns_domains_domain_record_line.dart';

class GetAlidnsDomainsDomain {
  /// Specifies whether the domain is from Alibaba Cloud or not.
  final pulumi.Input<bool> aliDomain;
  /// List of available TTLs.
  final pulumi.Input<List<int>> availableTtls;
  /// DNS list of domain names in the resolution system.
  final pulumi.Input<List<String>> dnsServers;
  /// ID of the domain.
  final pulumi.Input<String> domainId;
  /// Name of the domain.
  final pulumi.Input<String> domainName;
  /// Domain group ID, if not filled, the default is all groups.
  final pulumi.Input<String> groupId;
  /// Name of group that contains the domain.
  final pulumi.Input<String> groupName;
  /// The Id of resource.
  final pulumi.Input<String> id;
  /// Whether it is in black hole.
  final pulumi.Input<bool> inBlackHole;
  /// Whether it is cleaning.
  final pulumi.Input<bool> inClean;
  /// Cloud analysis product ID.
  final pulumi.Input<String> instanceId;
  /// The type of the DNS request line.
  final pulumi.Input<String> lineType;
  /// Minimum TTL.
  final pulumi.Input<int> minTtl;
  /// Punycode of the Chinese domain.
  final pulumi.Input<String> punyCode;
  /// Tree-like analytical line list.
  final pulumi.Input<String> recordLineTreeJson;
  /// Parse the line data list.
  final pulumi.Input<List<GetAlidnsDomainsDomainRecordLine>> recordLines;
  /// Whether it is a regional route.
  final pulumi.Input<bool> regionLines;
  /// The Id of resource group which the dns belongs.
  final pulumi.Input<String> remark;
  /// The Id of resource group which the dns belongs.
  final pulumi.Input<String> resourceGroupId;
  /// Whether to allow auxiliary dns.
  final pulumi.Input<bool> slaveDns;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>> tags;
  /// Cloud analysis version code.
  final pulumi.Input<String> versionCode;
  /// Cloud analysis version name of the domain.
  final pulumi.Input<String> versionName;

  /// Creates a new [GetAlidnsDomainsDomain].
  /// [aliDomain] Specifies whether the domain is from Alibaba Cloud or not.
  /// [availableTtls] List of available TTLs.
  /// [dnsServers] DNS list of domain names in the resolution system.
  /// [domainId] ID of the domain.
  /// [domainName] Name of the domain.
  /// [groupId] Domain group ID, if not filled, the default is all groups.
  /// [groupName] Name of group that contains the domain.
  /// [id] The Id of resource.
  /// [inBlackHole] Whether it is in black hole.
  /// [inClean] Whether it is cleaning.
  /// [instanceId] Cloud analysis product ID.
  /// [lineType] The type of the DNS request line.
  /// [minTtl] Minimum TTL.
  /// [punyCode] Punycode of the Chinese domain.
  /// [recordLineTreeJson] Tree-like analytical line list.
  /// [recordLines] Parse the line data list.
  /// [regionLines] Whether it is a regional route.
  /// [remark] The Id of resource group which the dns belongs.
  /// [resourceGroupId] The Id of resource group which the dns belongs.
  /// [slaveDns] Whether to allow auxiliary dns.
  /// [tags] A mapping of tags to assign to the resource.
  /// [versionCode] Cloud analysis version code.
  /// [versionName] Cloud analysis version name of the domain.
  GetAlidnsDomainsDomain({
    required this.aliDomain,
    required this.availableTtls,
    required this.dnsServers,
    required this.domainId,
    required this.domainName,
    required this.groupId,
    required this.groupName,
    required this.id,
    required this.inBlackHole,
    required this.inClean,
    required this.instanceId,
    required this.lineType,
    required this.minTtl,
    required this.punyCode,
    required this.recordLineTreeJson,
    required this.recordLines,
    required this.regionLines,
    required this.remark,
    required this.resourceGroupId,
    required this.slaveDns,
    required this.tags,
    required this.versionCode,
    required this.versionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliDomain': aliDomain,
      'availableTtls': availableTtls,
      'dnsServers': dnsServers,
      'domainId': domainId,
      'domainName': domainName,
      'groupId': groupId,
      'groupName': groupName,
      'id': id,
      'inBlackHole': inBlackHole,
      'inClean': inClean,
      'instanceId': instanceId,
      'lineType': lineType,
      'minTtl': minTtl,
      'punyCode': punyCode,
      'recordLineTreeJson': recordLineTreeJson,
      'recordLines': pulumi.Input.mapInputValue<List<GetAlidnsDomainsDomainRecordLine>, List<Map<String, dynamic>>>(recordLines, (value) => pulumi.Input.encodeList<GetAlidnsDomainsDomainRecordLine, Map<String, dynamic>>(value, (value) => value.toMap())),
      'regionLines': regionLines,
      'remark': remark,
      'resourceGroupId': resourceGroupId,
      'slaveDns': slaveDns,
      'tags': tags,
      'versionCode': versionCode,
      'versionName': versionName,
    };
  }

  factory GetAlidnsDomainsDomain.fromMap(Map<String, dynamic> map) {
    return GetAlidnsDomainsDomain(
      aliDomain: (map['aliDomain'] as bool).input(),
      availableTtls: ((map['availableTtls'] as List).cast<int>()).input(),
      dnsServers: ((map['dnsServers'] as List).cast<String>()).input(),
      domainId: (map['domainId'] as String).input(),
      domainName: (map['domainName'] as String).input(),
      groupId: (map['groupId'] as String).input(),
      groupName: (map['groupName'] as String).input(),
      id: (map['id'] as String).input(),
      inBlackHole: (map['inBlackHole'] as bool).input(),
      inClean: (map['inClean'] as bool).input(),
      instanceId: (map['instanceId'] as String).input(),
      lineType: (map['lineType'] as String).input(),
      minTtl: (map['minTtl'] as int).input(),
      punyCode: (map['punyCode'] as String).input(),
      recordLineTreeJson: (map['recordLineTreeJson'] as String).input(),
      recordLines: (pulumi.Input.decodeList<GetAlidnsDomainsDomainRecordLine>(map['recordLines'], (value) => GetAlidnsDomainsDomainRecordLine.fromMap((value as Map).cast<String, dynamic>()))).input(),
      regionLines: (map['regionLines'] as bool).input(),
      remark: (map['remark'] as String).input(),
      resourceGroupId: (map['resourceGroupId'] as String).input(),
      slaveDns: (map['slaveDns'] as bool).input(),
      tags: ((map['tags'] as Map).cast<String, String>()).input(),
      versionCode: (map['versionCode'] as String).input(),
      versionName: (map['versionName'] as String).input(),
    );
  }
}

