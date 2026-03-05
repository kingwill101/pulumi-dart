// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_get_alidns_domains_get_alidns_domains_args_doc}
/// Arguments for getAlidnsDomains.
/// {@endtemplate}
/// {@macro pulumi_dns_get_alidns_domains_get_alidns_domains_args_doc}
class GetAlidnsDomainsArgs {
  /// Specifies whether the domain is from Alibaba Cloud or not.
  final pulumi.Input<bool>? aliDomain;
  /// A regex string to filter results by the domain name.
  final pulumi.Input<String>? domainNameRegex;
  /// Default to `false`. Set it to `true` can output more details about resource attributes.
  final pulumi.Input<bool>? enableDetails;
  /// Domain group ID, if not filled, the default is all groups.
  final pulumi.Input<String>? groupId;
  /// A regex string to filter results by the group name.
  final pulumi.Input<String>? groupNameRegex;
  /// A list of domain IDs.
  final pulumi.Input<List<String>>? ids;
  /// Cloud analysis product ID.
  final pulumi.Input<String>? instanceId;
  /// The keywords are searched according to the `%KeyWord%` mode, which is not case sensitive.
  final pulumi.Input<String>? keyWord;
  /// User language.
  final pulumi.Input<String>? lang;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The Id of resource group which the dns belongs.
  final pulumi.Input<String>? resourceGroupId;
  /// Search mode, `LIKE` fuzzy search, `EXACT` exact search.
  final pulumi.Input<String>? searchMode;
  /// Whether to query the domain name star.
  final pulumi.Input<bool>? starmark;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Cloud analysis version code.
  final pulumi.Input<String>? versionCode;

  /// Creates a new [GetAlidnsDomainsArgs].
  /// [aliDomain] Specifies whether the domain is from Alibaba Cloud or not.
  /// [domainNameRegex] A regex string to filter results by the domain name.
  /// [enableDetails] Default to `false`. Set it to `true` can output more details about resource attributes.
  /// [groupId] Domain group ID, if not filled, the default is all groups.
  /// [groupNameRegex] A regex string to filter results by the group name.
  /// [ids] A list of domain IDs.
  /// [instanceId] Cloud analysis product ID.
  /// [keyWord] The keywords are searched according to the `%KeyWord%` mode, which is not case sensitive.
  /// [lang] User language.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [resourceGroupId] The Id of resource group which the dns belongs.
  /// [searchMode] Search mode, `LIKE` fuzzy search, `EXACT` exact search.
  /// [starmark] Whether to query the domain name star.
  /// [tags] A mapping of tags to assign to the resource.
  /// [versionCode] Cloud analysis version code.
  GetAlidnsDomainsArgs({
    this.aliDomain,
    this.domainNameRegex,
    this.enableDetails,
    this.groupId,
    this.groupNameRegex,
    this.ids,
    this.instanceId,
    this.keyWord,
    this.lang,
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
      'enableDetails': ?enableDetails,
      'groupId': ?groupId,
      'groupNameRegex': ?groupNameRegex,
      'ids': ?ids,
      'instanceId': ?instanceId,
      'keyWord': ?keyWord,
      'lang': ?lang,
      'outputFile': ?outputFile,
      'resourceGroupId': ?resourceGroupId,
      'searchMode': ?searchMode,
      'starmark': ?starmark,
      'tags': ?tags,
      'versionCode': ?versionCode,
    };
  }

  factory GetAlidnsDomainsArgs.fromMap(Map<String, dynamic> map) {
    return GetAlidnsDomainsArgs(
      aliDomain: (() { final guardedValue = map['aliDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      domainNameRegex: (() { final guardedValue = map['domainNameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      groupId: (() { final guardedValue = map['groupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      groupNameRegex: (() { final guardedValue = map['groupNameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyWord: (() { final guardedValue = map['keyWord']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lang: (() { final guardedValue = map['lang']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      searchMode: (() { final guardedValue = map['searchMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      starmark: (() { final guardedValue = map['starmark']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      versionCode: (() { final guardedValue = map['versionCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

