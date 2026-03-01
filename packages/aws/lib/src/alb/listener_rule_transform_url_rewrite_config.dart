// ignore_for_file: unused_element, unnecessary_cast

import 'listener_rule_transform_url_rewrite_config_rewrite.dart';

class ListenerRuleTransformUrlRewriteConfig {
  /// Block for URL rewrite configuration. Only one block is accepted. See Rewrite Blocks below.
  final ListenerRuleTransformUrlRewriteConfigRewrite? rewrite;

  /// Creates a new [ListenerRuleTransformUrlRewriteConfig].
  /// [rewrite] Block for URL rewrite configuration. Only one block is accepted. See Rewrite Blocks below.
  ListenerRuleTransformUrlRewriteConfig({this.rewrite});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rewrite': ?rewrite == null ? null : rewrite!.toMap(),
    };
  }

  factory ListenerRuleTransformUrlRewriteConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return ListenerRuleTransformUrlRewriteConfig(
      rewrite: map['rewrite'] == null
          ? null
          : ListenerRuleTransformUrlRewriteConfigRewrite.fromMap(
              (map['rewrite'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
