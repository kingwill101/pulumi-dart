// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domains_domain.dart';

/// Result data returned by getDomains.
class GetDomainsResult {
  /// Indicates whether the domain is an Alibaba Cloud domain.
  final bool? aliDomain;
  final String? domainNameRegex;

  /// A list of domains. Each element contains the following attributes:
  final List<GetDomainsDomain> domains;
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
  final Map<String, String>? tags;

  /// Cloud resolution version ID.
  final String? versionCode;

  /// Creates a new [GetDomainsResult].
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
  /// [tags] Optional.
  /// [versionCode] Cloud resolution version ID.
  GetDomainsResult({
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
      'domains':
          pulumi.Input.encodeList<GetDomainsDomain, Map<String, dynamic>>(
            domains,
            (value) => value.toMap(),
          ),
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

  factory GetDomainsResult.fromMap(Map<String, dynamic> map) {
    return GetDomainsResult(
      aliDomain: (() {
        final guardedValue = map['aliDomain'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      domainNameRegex: (() {
        final guardedValue = map['domainNameRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      domains: pulumi.Input.decodeList<GetDomainsDomain>(
        map['domains']!,
        (value) =>
            GetDomainsDomain.fromMap((value as Map).cast<String, dynamic>()),
      ),
      enableDetails: (() {
        final guardedValue = map['enableDetails'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      groupId: (() {
        final guardedValue = map['groupId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      groupNameRegex: (() {
        final guardedValue = map['groupNameRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceId: (() {
        final guardedValue = map['instanceId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      keyWord: (() {
        final guardedValue = map['keyWord'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      lang: (() {
        final guardedValue = map['lang'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      searchMode: (() {
        final guardedValue = map['searchMode'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      starmark: (() {
        final guardedValue = map['starmark'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      versionCode: (() {
        final guardedValue = map['versionCode'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
