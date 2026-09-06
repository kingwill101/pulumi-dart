// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_domainregistration_list_top_level_domain_agreements_args_doc}
/// Arguments for listTopLevelDomainAgreements.
/// {@endtemplate}
/// {@macro pulumi_domainregistration_list_top_level_domain_agreements_args_doc}
class ListTopLevelDomainAgreementsArgs {
  /// If &lt;code&gt;true&lt;/code&gt;, then the list of agreements will include agreements for domain transfer as well; otherwise, &lt;code&gt;false&lt;/code&gt;.
  final pulumi.Input<bool?>? forTransfer;
  /// If &lt;code&gt;true&lt;/code&gt;, then the list of agreements will include agreements for domain privacy as well; otherwise, &lt;code&gt;false&lt;/code&gt;.
  final pulumi.Input<bool?>? includePrivacy;
  /// Name of the top-level domain.
  final pulumi.Input<String> name;

  /// Creates a new [ListTopLevelDomainAgreementsArgs].
  /// [forTransfer] If &lt;code&gt;true&lt;/code&gt;, then the list of agreements will include agreements for domain transfer as well; otherwise, &lt;code&gt;false&lt;/code&gt;.
  /// [includePrivacy] If &lt;code&gt;true&lt;/code&gt;, then the list of agreements will include agreements for domain privacy as well; otherwise, &lt;code&gt;false&lt;/code&gt;.
  /// [name] Name of the top-level domain.
  const ListTopLevelDomainAgreementsArgs({
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
      forTransfer: (() { final guardedValue = map['forTransfer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      includePrivacy: (() { final guardedValue = map['includePrivacy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
