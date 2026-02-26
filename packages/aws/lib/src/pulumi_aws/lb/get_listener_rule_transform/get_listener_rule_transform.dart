// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_listener_rule_transform_host_header_rewrite_config/get_listener_rule_transform_host_header_rewrite_config.dart';
import '../get_listener_rule_transform_url_rewrite_config/get_listener_rule_transform_url_rewrite_config.dart';

class GetListenerRuleTransform {
  /// Block for host header rewrite. Detailed below.
  final List<GetListenerRuleTransformHostHeaderRewriteConfig>?
      hostHeaderRewriteConfigs;

  /// Type of transform.
  final String type;

  /// Block for URL rewrite. Detailed below.
  final List<GetListenerRuleTransformUrlRewriteConfig>? urlRewriteConfigs;

  GetListenerRuleTransform({
    this.hostHeaderRewriteConfigs,
    required this.type,
    this.urlRewriteConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final hostHeaderRewriteConfigsValue = hostHeaderRewriteConfigs;
    if (hostHeaderRewriteConfigsValue != null) {
      map['hostHeaderRewriteConfigs'] = Input.encodeList<
              GetListenerRuleTransformHostHeaderRewriteConfig,
              Map<String, dynamic>>(
          hostHeaderRewriteConfigsValue, (value) => value.toMap());
    }
    map['type'] = type;
    final urlRewriteConfigsValue = urlRewriteConfigs;
    if (urlRewriteConfigsValue != null) {
      map['urlRewriteConfigs'] = Input.encodeList<
              GetListenerRuleTransformUrlRewriteConfig, Map<String, dynamic>>(
          urlRewriteConfigsValue, (value) => value.toMap());
    }
    return map;
  }

  factory GetListenerRuleTransform.fromMap(Map<String, dynamic> map) {
    return GetListenerRuleTransform(
      hostHeaderRewriteConfigs: map['hostHeaderRewriteConfigs'] == null
          ? null
          : Input.decodeList<GetListenerRuleTransformHostHeaderRewriteConfig>(
              map['hostHeaderRewriteConfigs'],
              (value) =>
                  GetListenerRuleTransformHostHeaderRewriteConfig.fromMap(
                      (value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
      urlRewriteConfigs: map['urlRewriteConfigs'] == null
          ? null
          : Input.decodeList<GetListenerRuleTransformUrlRewriteConfig>(
              map['urlRewriteConfigs'],
              (value) => GetListenerRuleTransformUrlRewriteConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
