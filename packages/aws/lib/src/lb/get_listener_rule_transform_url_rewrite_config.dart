// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_listener_rule_transform_url_rewrite_config_rewrite.dart';

class GetListenerRuleTransformUrlRewriteConfig {
  /// Block for URL rewrite configuration. Detailed below.
  final List<GetListenerRuleTransformUrlRewriteConfigRewrite>? rewrites;

  /// Creates a new [GetListenerRuleTransformUrlRewriteConfig].
  /// [rewrites] Block for URL rewrite configuration. Detailed below.
  GetListenerRuleTransformUrlRewriteConfig({
    this.rewrites,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final rewritesValue = rewrites;
    if (rewritesValue != null) {
      map['rewrites'] = pulumi.Input.encodeList<
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
          : pulumi.Input.decodeList<
                  GetListenerRuleTransformUrlRewriteConfigRewrite>(
              map['rewrites'],
              (value) =>
                  GetListenerRuleTransformUrlRewriteConfigRewrite.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
