// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_listener_rule_transform_url_rewrite_config_rewrite/get_listener_rule_transform_url_rewrite_config_rewrite.dart';

class GetListenerRuleTransformUrlRewriteConfig {
  /// Block for URL rewrite configuration. Detailed below.
  final List<GetListenerRuleTransformUrlRewriteConfigRewrite>? rewrites;

  GetListenerRuleTransformUrlRewriteConfig({
    this.rewrites,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final rewritesValue = rewrites;
    if (rewritesValue != null) {
      map['rewrites'] = Input.encodeList<
          GetListenerRuleTransformUrlRewriteConfigRewrite,
          Map<String, dynamic>>(rewritesValue, (value) => value.toMap());
    }
    return map;
  }

  factory GetListenerRuleTransformUrlRewriteConfig.fromMap(
      Map<String, dynamic> map) {
    return GetListenerRuleTransformUrlRewriteConfig(
      rewrites: map['rewrites'] == null
          ? null
          : Input.decodeList<GetListenerRuleTransformUrlRewriteConfigRewrite>(
              map['rewrites'],
              (value) =>
                  GetListenerRuleTransformUrlRewriteConfigRewrite.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
