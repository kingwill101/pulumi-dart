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
    pulumi.Output<List<String>>? dnsServers,
    pulumi.Output<String>? domainId,
    pulumi.Output<String>? domainName,
    pulumi.Output<String>? groupId,
    pulumi.Output<String>? groupName,
    pulumi.Output<String>? lang,
    pulumi.Output<String>? punyCode,
    pulumi.Output<String>? remark,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      dnsServers = pulumi.Input.asOptionalInput<List<String>>(dnsServers),
      domainId = pulumi.Input.asOptionalInput<String>(domainId),
      domainName = pulumi.Input.asOptionalInput<String>(domainName),
      groupId = pulumi.Input.asOptionalInput<String>(groupId),
      groupName = pulumi.Input.asOptionalInput<String>(groupName),
      lang = pulumi.Input.asOptionalInput<String>(lang),
      punyCode = pulumi.Input.asOptionalInput<String>(punyCode),
      remark = pulumi.Input.asOptionalInput<String>(remark),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      dnsServers: map['dnsServers'] == null ? null : pulumi.Output.create<List<String>>((map['dnsServers'] as List).cast<String>()),
      domainId: map['domainId'] == null ? null : pulumi.Output.create<String>(map['domainId'] as String),
      domainName: map['domainName'] == null ? null : pulumi.Output.create<String>(map['domainName'] as String),
      groupId: map['groupId'] == null ? null : pulumi.Output.create<String>(map['groupId'] as String),
      groupName: map['groupName'] == null ? null : pulumi.Output.create<String>(map['groupName'] as String),
      lang: map['lang'] == null ? null : pulumi.Output.create<String>(map['lang'] as String),
      punyCode: map['punyCode'] == null ? null : pulumi.Output.create<String>(map['punyCode'] as String),
      remark: map['remark'] == null ? null : pulumi.Output.create<String>(map['remark'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

