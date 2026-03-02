// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AlidnsDomain resources.
class AlidnsDomainState {
  /// A list of the dns server name.
  final pulumi.Input<List<String>>? dnsServers;
  /// The domain ID.
  final pulumi.Input<String>? domainId;
  /// Name of the domain. This name without suffix can have a string of 1 to 63 characters(domain name subject, excluding suffix), must contain only alphanumeric characters or "-", and must not begin or end with "-", and "-" must not in the 3th and 4th character positions at the same time. Suffix `.sh` and `.tel` are not supported.
  final pulumi.Input<String>? domainName;
  /// Id of the group in which the domain will add. If not supplied, then use default group.
  final pulumi.Input<String>? groupId;
  /// Domain name group name.
  final pulumi.Input<String>? groupName;
  /// User language.
  final pulumi.Input<String>? lang;
  /// Only return punycode codes for Chinese domain names.
  final pulumi.Input<String>? punyCode;
  /// Remarks information for your domain name.
  final pulumi.Input<String>? remark;
  /// The Id of resource group which the dns domain belongs.
  final pulumi.Input<String>? resourceGroupId;
  /// A mapping of tags to assign to the resource.
  /// - Key: It can be [1, 20] characters in length. It can contain A-Z, a-z, numbers, underscores (_), and hyphens (-). It cannot begin with "aliyun", "acs:", "http://", or "https://". It cannot be a null string.
  /// - Value: It can be [1, 20] characters in length. It can contain A-Z, a-z, numbers, underscores (_), and hyphens (-). It cannot begin with "aliyun", "acs:", "http://", or "https://". It can be a null string.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AlidnsDomainState].
  /// [dnsServers] A list of the dns server name.
  /// [domainId] The domain ID.
  /// [domainName] Name of the domain. This name without suffix can have a string of 1 to 63 characters(domain name subject, excluding suffix), must contain only alphanumeric characters or "-", and must not begin or end with "-", and "-" must not in the 3th and 4th character positions at the same time. Suffix `.sh` and `.tel` are not supported.
  /// [groupId] Id of the group in which the domain will add. If not supplied, then use default group.
  /// [groupName] Domain name group name.
  /// [lang] User language.
  /// [punyCode] Only return punycode codes for Chinese domain names.
  /// [remark] Remarks information for your domain name.
  /// [resourceGroupId] The Id of resource group which the dns domain belongs.
  /// [tags] A mapping of tags to assign to the resource.
  AlidnsDomainState({
    this.dnsServers,
    this.domainId,
    this.domainName,
    this.groupId,
    this.groupName,
    this.lang,
    this.punyCode,
    this.remark,
    this.resourceGroupId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsServers': ?dnsServers,
      'domainId': ?domainId,
      'domainName': ?domainName,
      'groupId': ?groupId,
      'groupName': ?groupName,
      'lang': ?lang,
      'punyCode': ?punyCode,
      'remark': ?remark,
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
    };
  }

  factory AlidnsDomainState.fromMap(Map<String, dynamic> map) {
    return AlidnsDomainState(
      dnsServers: map['dnsServers'] == null ? null : ((map['dnsServers']! as List).cast<String>()).input(),
      domainId: map['domainId'] == null ? null : (map['domainId']! as String).input(),
      domainName: map['domainName'] == null ? null : (map['domainName']! as String).input(),
      groupId: map['groupId'] == null ? null : (map['groupId']! as String).input(),
      groupName: map['groupName'] == null ? null : (map['groupName']! as String).input(),
      lang: map['lang'] == null ? null : (map['lang']! as String).input(),
      punyCode: map['punyCode'] == null ? null : (map['punyCode']! as String).input(),
      remark: map['remark'] == null ? null : (map['remark']! as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

