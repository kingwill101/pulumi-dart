// ignore_for_file: unused_element, unnecessary_cast

import '../listener_rule_transform_url_rewrite_config_rewrite/listener_rule_transform_url_rewrite_config_rewrite_lb.dart';

class ListenerRuleTransformUrlRewriteConfigLb {
  /// Block for URL rewrite configuration. Only one block is accepted. See Rewrite Blocks below.
  final ListenerRuleTransformUrlRewriteConfigRewriteLb? rewrite;

  ListenerRuleTransformUrlRewriteConfigLb({
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

  factory ListenerRuleTransformUrlRewriteConfigLb.fromMap(
      Map<String, dynamic> map) {
    return ListenerRuleTransformUrlRewriteConfigLb(
      rewrite: map['rewrite'] == null
          ? null
          : ListenerRuleTransformUrlRewriteConfigRewriteLb.fromMap(
              (map['rewrite'] as Map).cast<String, dynamic>()),
    );
  }
}
