// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_get_domains_get_domains_args_doc}
/// Arguments for getDomains.
/// {@endtemplate}
/// {@macro pulumi_dns_get_domains_get_domains_args_doc}
class GetDomainsArgs {
  /// Specifies whether the domain is from Alibaba Cloud or not.
  final pulumi.Input<bool>? aliDomain;
  /// A regex string to filter results by the domain name.
  final pulumi.Input<String>? domainNameRegex;
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

  /// Creates a new [GetDomainsArgs].
  /// [aliDomain] Specifies whether the domain is from Alibaba Cloud or not.
  /// [domainNameRegex] A regex string to filter results by the domain name.
  /// [enableDetails] Optional.
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
  GetDomainsArgs({
    bool? aliDomain,
    String? domainNameRegex,
    bool? enableDetails,
    String? groupId,
    String? groupNameRegex,
    List<String>? ids,
    String? instanceId,
    String? keyWord,
    String? lang,
    String? outputFile,
    String? resourceGroupId,
    String? searchMode,
    bool? starmark,
    Map<String, String>? tags,
    String? versionCode,
  }) :
      aliDomain = pulumi.Input.asOptionalInput<bool>(aliDomain),
      domainNameRegex = pulumi.Input.asOptionalInput<String>(domainNameRegex),
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      groupId = pulumi.Input.asOptionalInput<String>(groupId),
      groupNameRegex = pulumi.Input.asOptionalInput<String>(groupNameRegex),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      keyWord = pulumi.Input.asOptionalInput<String>(keyWord),
      lang = pulumi.Input.asOptionalInput<String>(lang),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      searchMode = pulumi.Input.asOptionalInput<String>(searchMode),
      starmark = pulumi.Input.asOptionalInput<bool>(starmark),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      versionCode = pulumi.Input.asOptionalInput<String>(versionCode);

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

  factory GetDomainsArgs.fromMap(Map<String, dynamic> map) {
    return GetDomainsArgs(
      aliDomain: map['aliDomain'] == null ? null : map['aliDomain'] as bool,
      domainNameRegex: map['domainNameRegex'] == null ? null : map['domainNameRegex'] as String,
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      groupId: map['groupId'] == null ? null : map['groupId'] as String,
      groupNameRegex: map['groupNameRegex'] == null ? null : map['groupNameRegex'] as String,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] == null ? null : map['instanceId'] as String,
      keyWord: map['keyWord'] == null ? null : map['keyWord'] as String,
      lang: map['lang'] == null ? null : map['lang'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      searchMode: map['searchMode'] == null ? null : map['searchMode'] as String,
      starmark: map['starmark'] == null ? null : map['starmark'] as bool,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      versionCode: map['versionCode'] == null ? null : map['versionCode'] as String,
    );
  }
}

