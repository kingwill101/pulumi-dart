// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_alidns_domains_domain.dart';

/// Result data returned by getAlidnsDomains.
class GetAlidnsDomainsResult {
  /// Indicates whether the domain is an Alibaba Cloud domain.
  final bool? aliDomain;
  final String? domainNameRegex;
  /// A list of domains. Each element contains the following attributes:
  final List<GetAlidnsDomainsDomain> domains;
  final bool? enableDetails;
  /// Id of group that contains the domain.
  final String? groupId;
  final String? groupNameRegex;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of domain IDs.
  final List<String> ids;
  /// Cloud analysis product ID of the domain.
  final String? instanceId;
  final String? keyWord;
  final String? lang;
  /// A list of domain names.
  final List<String> names;
  final String? outputFile;
  /// The Id of resource group which the dns belongs.
  final String? resourceGroupId;
  final String? searchMode;
  final bool? starmark;
  /// Tags of the domain.
  final Map<String, String>? tags;
  /// Cloud resolution version ID.
  final String? versionCode;

  /// Creates a new [GetAlidnsDomainsResult].
  /// [aliDomain] Indicates whether the domain is an Alibaba Cloud domain.
  /// [domainNameRegex] Optional.
  /// [domains] A list of domains. Each element contains the following attributes:
  /// [enableDetails] Optional.
  /// [groupId] Id of group that contains the domain.
  /// [groupNameRegex] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of domain IDs.
  /// [instanceId] Cloud analysis product ID of the domain.
  /// [keyWord] Optional.
  /// [lang] Optional.
  /// [names] A list of domain names.
  /// [outputFile] Optional.
  /// [resourceGroupId] The Id of resource group which the dns belongs.
  /// [searchMode] Optional.
  /// [starmark] Optional.
  /// [tags] Tags of the domain.
  /// [versionCode] Cloud resolution version ID.
  GetAlidnsDomainsResult({
    this.aliDomain,
    this.domainNameRegex,
    required this.domains,
    this.enableDetails,
    this.groupId,
    this.groupNameRegex,
    required this.id,
    required this.ids,
    this.instanceId,
    this.keyWord,
    this.lang,
    required this.names,
    this.outputFile,
    this.resourceGroupId,
    this.searchMode,
    this.starmark,
    this.tags,
    this.versionCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliDomain': ?aliDomain,
      'domainNameRegex': ?domainNameRegex,
      'domains': pulumi.Input.encodeList<GetAlidnsDomainsDomain, Map<String, dynamic>>(domains, (value) => value.toMap()),
      'enableDetails': ?enableDetails,
      'groupId': ?groupId,
      'groupNameRegex': ?groupNameRegex,
      'id': id,
      'ids': ids,
      'instanceId': ?instanceId,
      'keyWord': ?keyWord,
      'lang': ?lang,
      'names': names,
      'outputFile': ?outputFile,
      'resourceGroupId': ?resourceGroupId,
      'searchMode': ?searchMode,
      'starmark': ?starmark,
      'tags': ?tags,
      'versionCode': ?versionCode,
    };
  }

  factory GetAlidnsDomainsResult.fromMap(Map<String, dynamic> map) {
    return GetAlidnsDomainsResult(
      aliDomain: map['aliDomain'] == null ? null : map['aliDomain']! as bool,
      domainNameRegex: map['domainNameRegex'] == null ? null : map['domainNameRegex']! as String,
      domains: pulumi.Input.decodeList<GetAlidnsDomainsDomain>(map['domains'], (value) => GetAlidnsDomainsDomain.fromMap((value as Map).cast<String, dynamic>())),
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails']! as bool,
      groupId: map['groupId'] == null ? null : map['groupId']! as String,
      groupNameRegex: map['groupNameRegex'] == null ? null : map['groupNameRegex']! as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] == null ? null : map['instanceId']! as String,
      keyWord: map['keyWord'] == null ? null : map['keyWord']! as String,
      lang: map['lang'] == null ? null : map['lang']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId']! as String,
      searchMode: map['searchMode'] == null ? null : map['searchMode']! as String,
      starmark: map['starmark'] == null ? null : map['starmark']! as bool,
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      versionCode: map['versionCode'] == null ? null : map['versionCode']! as String,
    );
  }
}

