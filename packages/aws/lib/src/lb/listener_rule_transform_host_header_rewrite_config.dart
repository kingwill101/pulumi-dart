// ignore_for_file: unused_element, unnecessary_cast

import 'listener_rule_transform_host_header_rewrite_config_rewrite.dart';

class ListenerRuleTransformHostHeaderRewriteConfig {
  /// Block for host header rewrite configuration. Only one block is accepted. See Rewrite Blocks below.
  final ListenerRuleTransformHostHeaderRewriteConfigRewrite? rewrite;

  /// Creates a new [ListenerRuleTransformHostHeaderRewriteConfig].
  /// [rewrite] Block for host header rewrite configuration. Only one block is accepted. See Rewrite Blocks below.
  ListenerRuleTransformHostHeaderRewriteConfig({
    this.rewrite,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rewrite': ?rewrite == null ? null : rewrite!.toMap(),
    };
  }

  factory ListenerRuleTransformHostHeaderRewriteConfig.fromMap(Map<String, dynamic> map) {
    return ListenerRuleTransformHostHeaderRewriteConfig(
      rewrite: map['rewrite'] == null ? null : ListenerRuleTransformHostHeaderRewriteConfigRewrite.fromMap((map['rewrite'] as Map).cast<String, dynamic>()),
    );
  }
}

