// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_listener_rule_transform_host_header_rewrite_config.dart';
import 'get_listener_rule_transform_url_rewrite_config.dart';

class GetListenerRuleTransform {
  /// Block for host header rewrite. Detailed below.
  final List<GetListenerRuleTransformHostHeaderRewriteConfig>?
  hostHeaderRewriteConfigs;

  /// Type of transform.
  final String type;

  /// Block for URL rewrite. Detailed below.
  final List<GetListenerRuleTransformUrlRewriteConfig>? urlRewriteConfigs;

  /// Creates a new [GetListenerRuleTransform].
  /// [hostHeaderRewriteConfigs] Block for host header rewrite. Detailed below.
  /// [type] Type of transform.
  /// [urlRewriteConfigs] Block for URL rewrite. Detailed below.
  GetListenerRuleTransform({
    this.hostHeaderRewriteConfigs,
    required this.type,
    this.urlRewriteConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostHeaderRewriteConfigs': ?hostHeaderRewriteConfigs == null
          ? null
          : pulumi.Input.encodeList<
              GetListenerRuleTransformHostHeaderRewriteConfig,
              Map<String, dynamic>
            >(hostHeaderRewriteConfigs!, (value) => value.toMap()),
      'type': type,
      'urlRewriteConfigs': ?urlRewriteConfigs == null
          ? null
          : pulumi.Input.encodeList<
              GetListenerRuleTransformUrlRewriteConfig,
              Map<String, dynamic>
            >(urlRewriteConfigs!, (value) => value.toMap()),
    };
  }

  factory GetListenerRuleTransform.fromMap(Map<String, dynamic> map) {
    return GetListenerRuleTransform(
      hostHeaderRewriteConfigs: map['hostHeaderRewriteConfigs'] == null
          ? null
          : pulumi.Input.decodeList<
              GetListenerRuleTransformHostHeaderRewriteConfig
            >(
              map['hostHeaderRewriteConfigs'],
              (value) =>
                  GetListenerRuleTransformHostHeaderRewriteConfig.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      type: map['type'] as String,
      urlRewriteConfigs: map['urlRewriteConfigs'] == null
          ? null
          : pulumi.Input.decodeList<GetListenerRuleTransformUrlRewriteConfig>(
              map['urlRewriteConfigs'],
              (value) => GetListenerRuleTransformUrlRewriteConfig.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
