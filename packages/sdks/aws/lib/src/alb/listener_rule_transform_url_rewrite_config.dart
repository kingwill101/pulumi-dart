// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_rule_transform_url_rewrite_config_rewrite.dart';

class ListenerRuleTransformUrlRewriteConfig {
  /// Block for URL rewrite configuration. Only one block is accepted. See Rewrite Blocks below.
  final pulumi.Input<ListenerRuleTransformUrlRewriteConfigRewrite>? rewrite;

  /// Creates a new [ListenerRuleTransformUrlRewriteConfig].
  /// [rewrite] Block for URL rewrite configuration. Only one block is accepted. See Rewrite Blocks below.
  ListenerRuleTransformUrlRewriteConfig({
    this.rewrite,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rewrite': ?pulumi.Input.mapOptionalInputValue<ListenerRuleTransformUrlRewriteConfigRewrite, Map<String, dynamic>>(rewrite, (value) => value.toMap()),
    };
  }

  factory ListenerRuleTransformUrlRewriteConfig.fromMap(Map<String, dynamic> map) {
    return ListenerRuleTransformUrlRewriteConfig(
      rewrite: map['rewrite'] == null ? null : ((ListenerRuleTransformUrlRewriteConfigRewrite.fromMap((map['rewrite']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

