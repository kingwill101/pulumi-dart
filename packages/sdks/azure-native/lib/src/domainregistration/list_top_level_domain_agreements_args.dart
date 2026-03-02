// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_domainregistration_list_top_level_domain_agreements_args_doc}
/// Arguments for listTopLevelDomainAgreements.
/// {@endtemplate}
/// {@macro pulumi_domainregistration_list_top_level_domain_agreements_args_doc}
class ListTopLevelDomainAgreementsArgs {
  /// If <code>true</code>, then the list of agreements will include agreements for domain transfer as well; otherwise, <code>false</code>.
  final pulumi.Input<bool>? forTransfer;
  /// If <code>true</code>, then the list of agreements will include agreements for domain privacy as well; otherwise, <code>false</code>.
  final pulumi.Input<bool>? includePrivacy;
  /// Name of the top-level domain.
  final pulumi.Input<String> name;

  /// Creates a new [ListTopLevelDomainAgreementsArgs].
  /// [forTransfer] If <code>true</code>, then the list of agreements will include agreements for domain transfer as well; otherwise, <code>false</code>.
  /// [includePrivacy] If <code>true</code>, then the list of agreements will include agreements for domain privacy as well; otherwise, <code>false</code>.
  /// [name] Name of the top-level domain.
  ListTopLevelDomainAgreementsArgs({
    this.forTransfer,
    this.includePrivacy,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forTransfer': ?forTransfer,
      'includePrivacy': ?includePrivacy,
      'name': name,
    };
  }

  factory ListTopLevelDomainAgreementsArgs.fromMap(Map<String, dynamic> map) {
    return ListTopLevelDomainAgreementsArgs(
      forTransfer: map['forTransfer'] == null ? null : (map['forTransfer'] as bool).input(),
      includePrivacy: map['includePrivacy'] == null ? null : (map['includePrivacy'] as bool).input(),
      name: (map['name'] as String).input(),
    );
  }
}

