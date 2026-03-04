// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'coo_web_cc_rule_rule_detail.dart';

/// Input properties used for looking up and filtering CooWebCcRule resources.
class CooWebCcRuleState {
  /// The domain name of the website service.
  ///
  /// &gt; **NOTE:**  The domain name must already have website service forwarding rules configured. You can call [DescribeDomains](https://help.aliyun.com/document_detail/91724.html) to query all domain names.
  final pulumi.Input<String>? domain;

  /// Rule name.
  final pulumi.Input<String>? name;

  /// Rule details.   See `rule_detail` below.
  final pulumi.Input<CooWebCcRuleRuleDetail>? ruleDetail;

  /// Creates a new [CooWebCcRuleState].
  /// [domain] The domain name of the website service.
  /// [name] Rule name.
  /// [ruleDetail] Rule details.   See `rule_detail` below.
  CooWebCcRuleState({this.domain, this.name, this.ruleDetail});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': ?domain,
      'name': ?name,
      'ruleDetail':
          ?pulumi.Input.mapOptionalInputValue<
            CooWebCcRuleRuleDetail,
            Map<String, dynamic>
          >(ruleDetail, (value) => value.toMap()),
    };
  }

  factory CooWebCcRuleState.fromMap(Map<String, dynamic> map) {
    return CooWebCcRuleState(
      domain: (() {
        final guardedValue = map['domain'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ruleDetail: (() {
        final guardedValue = map['ruleDetail'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CooWebCcRuleRuleDetail.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
