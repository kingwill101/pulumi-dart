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
      dnsServers: (() {
        final guardedValue = map['dnsServers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      domainId: (() {
        final guardedValue = map['domainId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      domainName: (() {
        final guardedValue = map['domainName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      groupId: (() {
        final guardedValue = map['groupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      groupName: (() {
        final guardedValue = map['groupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      lang: (() {
        final guardedValue = map['lang'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      punyCode: (() {
        final guardedValue = map['punyCode'];
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
