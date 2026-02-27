// ignore_for_file: unused_element, unnecessary_cast

import '../listener_rule_transform_host_header_rewrite_config_rewrite/listener_rule_transform_host_header_rewrite_config_rewrite_lb.dart';

class ListenerRuleTransformHostHeaderRewriteConfigLb {
  /// Block for host header rewrite configuration. Only one block is accepted. See Rewrite Blocks below.
  final ListenerRuleTransformHostHeaderRewriteConfigRewriteLb? rewrite;

  ListenerRuleTransformHostHeaderRewriteConfigLb({
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

  factory ListenerRuleTransformHostHeaderRewriteConfigLb.fromMap(
      Map<String, dynamic> map) {
    return ListenerRuleTransformHostHeaderRewriteConfigLb(
      rewrite: map['rewrite'] == null
          ? null
          : ListenerRuleTransformHostHeaderRewriteConfigRewriteLb.fromMap(
              (map['rewrite'] as Map).cast<String, dynamic>()),
    );
  }
}
