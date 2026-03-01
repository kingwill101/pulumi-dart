// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'coo_web_cc_rule_rule_detail.dart';

/// {@template pulumi_ddos_coo_web_cc_rule_coo_web_cc_rule_args_doc}
/// The set of arguments for CooWebCcRule.
/// {@endtemplate}
/// {@macro pulumi_ddos_coo_web_cc_rule_coo_web_cc_rule_args_doc}
class CooWebCcRuleArgs {
  /// The domain name of the website service.
  ///
  /// > **NOTE:**  The domain name must already have website service forwarding rules configured. You can call [DescribeDomains](https://help.aliyun.com/document_detail/91724.html) to query all domain names.
  final pulumi.Input<String> domain;
  /// Rule name.
  final pulumi.Input<String>? name;
  /// Rule details.   See `rule_detail` below.
  final pulumi.Input<CooWebCcRuleRuleDetail> ruleDetail;

  /// Creates a new [CooWebCcRuleArgs].
  /// [domain] The domain name of the website service.
  /// [name] Rule name.
  /// [ruleDetail] Rule details.   See `rule_detail` below.
  CooWebCcRuleArgs({
    required pulumi.Output<String> domain,
    pulumi.Output<String>? name,
    required pulumi.Output<CooWebCcRuleRuleDetail> ruleDetail,
  }) :
      domain = pulumi.Input.asInput<String>(domain),
      name = pulumi.Input.asOptionalInput<String>(name),
      ruleDetail = pulumi.Input.asInput<CooWebCcRuleRuleDetail>(ruleDetail);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
      'name': ?name,
      'ruleDetail': pulumi.Input.mapInputValue<CooWebCcRuleRuleDetail, Map<String, dynamic>>(ruleDetail, (value) => value.toMap()),
    };
  }

  factory CooWebCcRuleArgs.fromMap(Map<String, dynamic> map) {
    return CooWebCcRuleArgs(
      domain: pulumi.Output.create<String>(map['domain'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      ruleDetail: pulumi.Output.create<CooWebCcRuleRuleDetail>(CooWebCcRuleRuleDetail.fromMap((map['ruleDetail'] as Map).cast<String, dynamic>())),
    );
  }
}

