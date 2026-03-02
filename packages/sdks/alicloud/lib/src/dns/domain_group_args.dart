// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_domain_group_domain_group_args_doc}
/// The set of arguments for DomainGroup.
/// {@endtemplate}
/// {@macro pulumi_dns_domain_group_domain_group_args_doc}
class DomainGroupArgs {
  /// The Name of the domain group. The `domain_group_name` is required when the value of the `group_name`  is Empty.
  final pulumi.Input<String>? domainGroupName;
  /// The Name of the domain group. The `group_name` has been deprecated from provider version 1.97.0. Please use `domain_group_name` instead.
  final pulumi.Input<String>? groupName;
  /// User language.
  final pulumi.Input<String>? lang;

  /// Creates a new [DomainGroupArgs].
  /// [domainGroupName] The Name of the domain group. The `domain_group_name` is required when the value of the `group_name`  is Empty.
  /// [groupName] The Name of the domain group. The `group_name` has been deprecated from provider version 1.97.0. Please use `domain_group_name` instead.
  /// [lang] User language.
  DomainGroupArgs({
    this.domainGroupName,
    this.groupName,
    this.lang,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainGroupName': ?domainGroupName,
      'groupName': ?groupName,
      'lang': ?lang,
    };
  }

  factory DomainGroupArgs.fromMap(Map<String, dynamic> map) {
    return DomainGroupArgs(
      domainGroupName: map['domainGroupName'] == null ? null : (map['domainGroupName'] as String).input(),
      groupName: map['groupName'] == null ? null : (map['groupName'] as String).input(),
      lang: map['lang'] == null ? null : (map['lang'] as String).input(),
    );
  }
}

