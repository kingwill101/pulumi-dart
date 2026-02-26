// ignore_for_file: unused_element, unnecessary_cast

import '../listener_rule_transform_host_header_rewrite_config_rewrite/listener_rule_transform_host_header_rewrite_config_rewrite2.dart';

class ListenerRuleTransformHostHeaderRewriteConfig2 {
  /// Block for host header rewrite configuration. Only one block is accepted. See Rewrite Blocks below.
  final ListenerRuleTransformHostHeaderRewriteConfigRewrite2? rewrite;

  ListenerRuleTransformHostHeaderRewriteConfig2({
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

  factory ListenerRuleTransformHostHeaderRewriteConfig2.fromMap(
      Map<String, dynamic> map) {
    return ListenerRuleTransformHostHeaderRewriteConfig2(
      rewrite: map['rewrite'] == null
          ? null
          : ListenerRuleTransformHostHeaderRewriteConfigRewrite2.fromMap(
              (map['rewrite'] as Map).cast<String, dynamic>()),
    );
  }
}
