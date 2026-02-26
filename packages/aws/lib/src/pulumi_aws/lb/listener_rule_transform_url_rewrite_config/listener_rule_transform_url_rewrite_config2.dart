// ignore_for_file: unused_element, unnecessary_cast

import '../listener_rule_transform_url_rewrite_config_rewrite/listener_rule_transform_url_rewrite_config_rewrite2.dart';

class ListenerRuleTransformUrlRewriteConfig2 {
  /// Block for URL rewrite configuration. Only one block is accepted. See Rewrite Blocks below.
  final ListenerRuleTransformUrlRewriteConfigRewrite2? rewrite;

  ListenerRuleTransformUrlRewriteConfig2({
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

  factory ListenerRuleTransformUrlRewriteConfig2.fromMap(
      Map<String, dynamic> map) {
    return ListenerRuleTransformUrlRewriteConfig2(
      rewrite: map['rewrite'] == null
          ? null
          : ListenerRuleTransformUrlRewriteConfigRewrite2.fromMap(
              (map['rewrite'] as Map).cast<String, dynamic>()),
    );
  }
}
