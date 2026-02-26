// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_listener_rule_transform_host_header_rewrite_config_rewrite/get_listener_rule_transform_host_header_rewrite_config_rewrite.dart';

class GetListenerRuleTransformHostHeaderRewriteConfig {
  /// Block for URL rewrite configuration. Detailed below.
  final List<GetListenerRuleTransformHostHeaderRewriteConfigRewrite>? rewrites;

  GetListenerRuleTransformHostHeaderRewriteConfig({
    this.rewrites,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final rewritesValue = rewrites;
    if (rewritesValue != null) {
      map['rewrites'] = Input.encodeList<
          GetListenerRuleTransformHostHeaderRewriteConfigRewrite,
          Map<String, dynamic>>(rewritesValue, (value) => value.toMap());
    }
    return map;
  }

  factory GetListenerRuleTransformHostHeaderRewriteConfig.fromMap(
      Map<String, dynamic> map) {
    return GetListenerRuleTransformHostHeaderRewriteConfig(
      rewrites: map['rewrites'] == null
          ? null
          : Input.decodeList<
                  GetListenerRuleTransformHostHeaderRewriteConfigRewrite>(
              map['rewrites'],
              (value) => GetListenerRuleTransformHostHeaderRewriteConfigRewrite
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
