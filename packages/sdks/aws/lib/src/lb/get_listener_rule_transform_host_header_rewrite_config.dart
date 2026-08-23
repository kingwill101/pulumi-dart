// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_listener_rule_transform_host_header_rewrite_config_rewrite.dart';

class GetListenerRuleTransformHostHeaderRewriteConfig {
  /// Block for URL rewrite configuration. Detailed below.
  final pulumi.Input<List<GetListenerRuleTransformHostHeaderRewriteConfigRewrite>>? rewrites;

  /// Creates a new [GetListenerRuleTransformHostHeaderRewriteConfig].
  /// [rewrites] Block for URL rewrite configuration. Detailed below.
  const GetListenerRuleTransformHostHeaderRewriteConfig({
    this.rewrites,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rewrites': ?pulumi.Input.mapOptionalInputValue<List<GetListenerRuleTransformHostHeaderRewriteConfigRewrite>, List<Map<String, dynamic>>>(rewrites, (value) => pulumi.Input.encodeList<GetListenerRuleTransformHostHeaderRewriteConfigRewrite, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetListenerRuleTransformHostHeaderRewriteConfig.fromMap(Map<String, dynamic> map) {
    return GetListenerRuleTransformHostHeaderRewriteConfig(
      rewrites: (() { final guardedValue = map['rewrites']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetListenerRuleTransformHostHeaderRewriteConfigRewrite>(guardedValue, (value) => GetListenerRuleTransformHostHeaderRewriteConfigRewrite.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
