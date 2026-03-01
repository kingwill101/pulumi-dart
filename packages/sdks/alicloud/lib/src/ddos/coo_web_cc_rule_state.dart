// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'coo_web_cc_rule_rule_detail.dart';

/// Input properties used for looking up and filtering CooWebCcRule resources.
class CooWebCcRuleState {
  /// The domain name of the website service.
  ///
  /// > **NOTE:**  The domain name must already have website service forwarding rules configured. You can call [DescribeDomains](https://help.aliyun.com/document_detail/91724.html) to query all domain names.
  final pulumi.Input<String>? domain;
  /// Rule name.
  final pulumi.Input<String>? name;
  /// Rule details.   See `rule_detail` below.
  final pulumi.Input<CooWebCcRuleRuleDetail>? ruleDetail;

  /// Creates a new [CooWebCcRuleState].
  /// [domain] The domain name of the website service.
  /// [name] Rule name.
  /// [ruleDetail] Rule details.   See `rule_detail` below.
  CooWebCcRuleState({
    pulumi.Output<String>? domain,
    pulumi.Output<String>? name,
    pulumi.Output<CooWebCcRuleRuleDetail>? ruleDetail,
  }) :
      domain = pulumi.Input.asOptionalInput<String>(domain),
      name = pulumi.Input.asOptionalInput<String>(name),
      ruleDetail = pulumi.Input.asOptionalInput<CooWebCcRuleRuleDetail>(ruleDetail);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': ?domain,
      'name': ?name,
      'ruleDetail': ?pulumi.Input.mapOptionalInputValue<CooWebCcRuleRuleDetail, Map<String, dynamic>>(ruleDetail, (value) => value.toMap()),
    };
  }

  factory CooWebCcRuleState.fromMap(Map<String, dynamic> map) {
    return CooWebCcRuleState(
      domain: map['domain'] == null ? null : pulumi.Output.create<String>(map['domain'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      ruleDetail: map['ruleDetail'] == null ? null : pulumi.Output.create<CooWebCcRuleRuleDetail>(CooWebCcRuleRuleDetail.fromMap((map['ruleDetail'] as Map).cast<String, dynamic>())),
    );
  }
}

