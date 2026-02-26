// ignore_for_file: unused_element, unnecessary_cast

import '../listener_rule_transform_url_rewrite_config_rewrite/listener_rule_transform_url_rewrite_config_rewrite.dart';

class ListenerRuleTransformUrlRewriteConfig {
  /// Block for URL rewrite configuration. Only one block is accepted. See Rewrite Blocks below.
  final ListenerRuleTransformUrlRewriteConfigRewrite? rewrite;

  ListenerRuleTransformUrlRewriteConfig({
    this.rewrite,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final rewriteValue = rewrite;
    if (rewriteValue != null) {
      map['rewrite'] = rewriteValue.toMap();
    }
    return map;
  }

  factory ListenerRuleTransformUrlRewriteConfig.fromMap(
      Map<String, dynamic> map) {
    return ListenerRuleTransformUrlRewriteConfig(
      rewrite: map['rewrite'] == null
          ? null
          : ListenerRuleTransformUrlRewriteConfigRewrite.fromMap(
              (map['rewrite'] as Map).cast<String, dynamic>()),
    );
  }
}
