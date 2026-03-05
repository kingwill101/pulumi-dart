// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_rule_transform_host_header_rewrite_config_rewrite.dart';

class ListenerRuleTransformHostHeaderRewriteConfig {
  /// Block for host header rewrite configuration. Only one block is accepted. See Rewrite Blocks below.
  final pulumi.Input<ListenerRuleTransformHostHeaderRewriteConfigRewrite>? rewrite;

  /// Creates a new [ListenerRuleTransformHostHeaderRewriteConfig].
  /// [rewrite] Block for host header rewrite configuration. Only one block is accepted. See Rewrite Blocks below.
  ListenerRuleTransformHostHeaderRewriteConfig({
    this.rewrite,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rewrite': ?pulumi.Input.mapOptionalInputValue<ListenerRuleTransformHostHeaderRewriteConfigRewrite, Map<String, dynamic>>(rewrite, (value) => value.toMap()),
    };
  }

  factory ListenerRuleTransformHostHeaderRewriteConfig.fromMap(Map<String, dynamic> map) {
    return ListenerRuleTransformHostHeaderRewriteConfig(
      rewrite: (() { final guardedValue = map['rewrite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ListenerRuleTransformHostHeaderRewriteConfigRewrite.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

