// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_listener_rule_transform_url_rewrite_config_rewrite.dart';

class GetListenerRuleTransformUrlRewriteConfig {
  /// Block for URL rewrite configuration. Detailed below.
  final pulumi.Input<List<GetListenerRuleTransformUrlRewriteConfigRewrite>>? rewrites;

  /// Creates a new [GetListenerRuleTransformUrlRewriteConfig].
  /// [rewrites] Block for URL rewrite configuration. Detailed below.
  GetListenerRuleTransformUrlRewriteConfig({
    this.rewrites,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rewrites': ?pulumi.Input.mapOptionalInputValue<List<GetListenerRuleTransformUrlRewriteConfigRewrite>, List<Map<String, dynamic>>>(rewrites, (value) => pulumi.Input.encodeList<GetListenerRuleTransformUrlRewriteConfigRewrite, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetListenerRuleTransformUrlRewriteConfig.fromMap(Map<String, dynamic> map) {
    return GetListenerRuleTransformUrlRewriteConfig(
      rewrites: (() { final guardedValue = map['rewrites']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetListenerRuleTransformUrlRewriteConfigRewrite>(guardedValue, (value) => GetListenerRuleTransformUrlRewriteConfigRewrite.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

