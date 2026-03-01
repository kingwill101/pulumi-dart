// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_dns_domain_dns_domain_args_doc}
/// The set of arguments for DnsDomain.
/// {@endtemplate}
/// {@macro pulumi_dns_dns_domain_dns_domain_args_doc}
class DnsDomainArgs {
  /// Name of the domain. This name without suffix can have a string of 1 to 63 characters(domain name subject, excluding suffix), must contain only alphanumeric characters or "-", and must not begin or end with "-", and "-" must not in the 3th and 4th character positions at the same time. Suffix `.sh` and `.tel` are not supported.
  final pulumi.Input<String> domainName;
  /// Id of the group in which the domain will add. If not supplied, then use default group.
  final pulumi.Input<String>? groupId;
  /// User language.
  final pulumi.Input<String>? lang;
  /// Remarks information for your domain name.
  final pulumi.Input<String>? remark;
  /// The Id of resource group which the dns domain belongs.
  final pulumi.Input<String>? resourceGroupId;
  /// A mapping of tags to assign to the resource.
  /// - Key: It can be up to 64 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It cannot be a null string.
  /// - Value: It can be up to 128 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It can be a null string.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DnsDomainArgs].
  /// [domainName] Name of the domain. This name without suffix can have a string of 1 to 63 characters(domain name subject, excluding suffix), must contain only alphanumeric characters or "-", and must not begin or end with "-", and "-" must not in the 3th and 4th character positions at the same time. Suffix `.sh` and `.tel` are not supported.
  /// [groupId] Id of the group in which the domain will add. If not supplied, then use default group.
  /// [lang] User language.
  /// [remark] Remarks information for your domain name.
  /// [resourceGroupId] The Id of resource group which the dns domain belongs.
  /// [tags] A mapping of tags to assign to the resource.
  DnsDomainArgs({
    required pulumi.Output<String> domainName,
    pulumi.Output<String>? groupId,
    pulumi.Output<String>? lang,
    pulumi.Output<String>? remark,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      domainName = pulumi.Input.asInput<String>(domainName),
      groupId = pulumi.Input.asOptionalInput<String>(groupId),
      lang = pulumi.Input.asOptionalInput<String>(lang),
      remark = pulumi.Input.asOptionalInput<String>(remark),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'groupId': ?groupId,
      'lang': ?lang,
      'remark': ?remark,
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
    };
  }

  factory DnsDomainArgs.fromMap(Map<String, dynamic> map) {
    return DnsDomainArgs(
      domainName: pulumi.Output.create<String>(map['domainName'] as String),
      groupId: map['groupId'] == null ? null : pulumi.Output.create<String>(map['groupId'] as String),
      lang: map['lang'] == null ? null : pulumi.Output.create<String>(map['lang'] as String),
      remark: map['remark'] == null ? null : pulumi.Output.create<String>(map['remark'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

