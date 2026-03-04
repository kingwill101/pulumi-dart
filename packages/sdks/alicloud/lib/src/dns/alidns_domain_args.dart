// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_alidns_domain_alidns_domain_args_doc}
/// The set of arguments for AlidnsDomain.
/// {@endtemplate}
/// {@macro pulumi_dns_alidns_domain_alidns_domain_args_doc}
class AlidnsDomainArgs {
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
  /// - Key: It can be [1, 20] characters in length. It can contain A-Z, a-z, numbers, underscores (_), and hyphens (-). It cannot begin with "aliyun", "acs:", "http://", or "https://". It cannot be a null string.
  /// - Value: It can be [1, 20] characters in length. It can contain A-Z, a-z, numbers, underscores (_), and hyphens (-). It cannot begin with "aliyun", "acs:", "http://", or "https://". It can be a null string.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AlidnsDomainArgs].
  /// [domainName] Name of the domain. This name without suffix can have a string of 1 to 63 characters(domain name subject, excluding suffix), must contain only alphanumeric characters or "-", and must not begin or end with "-", and "-" must not in the 3th and 4th character positions at the same time. Suffix `.sh` and `.tel` are not supported.
  /// [groupId] Id of the group in which the domain will add. If not supplied, then use default group.
  /// [lang] User language.
  /// [remark] Remarks information for your domain name.
  /// [resourceGroupId] The Id of resource group which the dns domain belongs.
  /// [tags] A mapping of tags to assign to the resource.
  AlidnsDomainArgs({
    required this.domainName,
    this.groupId,
    this.lang,
    this.remark,
    this.resourceGroupId,
    this.tags,
  });

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

  factory AlidnsDomainArgs.fromMap(Map<String, dynamic> map) {
    return AlidnsDomainArgs(
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      groupId: (() {
        final guardedValue = map['groupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      lang: (() {
        final guardedValue = map['lang'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      remark: (() {
        final guardedValue = map['remark'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
