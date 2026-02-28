// ignore_for_file: unused_element, unnecessary_cast

import 'listener_rule_transform_host_header_rewrite_config.dart';
import 'listener_rule_transform_url_rewrite_config.dart';

class ListenerRuleTransform {
  /// Configuration block for host header rewrite. Required if `type` is `host-header-rewrite`. See Host Header Rewrite Config Blocks below.
  final ListenerRuleTransformHostHeaderRewriteConfig? hostHeaderRewriteConfig;
  /// Type of transform. Valid values are `host-header-rewrite` and `url-rewrite`.
  final String type;
  /// Configuration block for URL rewrite. Required if `type` is `url-rewrite`. See URL Rewrite Config Blocks below.
  final ListenerRuleTransformUrlRewriteConfig? urlRewriteConfig;

  /// Creates a new [ListenerRuleTransform].
  /// [hostHeaderRewriteConfig] Configuration block for host header rewrite. Required if `type` is `host-header-rewrite`. See Host Header Rewrite Config Blocks below.
  /// [type] Type of transform. Valid values are `host-header-rewrite` and `url-rewrite`.
  /// [urlRewriteConfig] Configuration block for URL rewrite. Required if `type` is `url-rewrite`. See URL Rewrite Config Blocks below.
  ListenerRuleTransform({
    this.hostHeaderRewriteConfig,
    required this.type,
    this.urlRewriteConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostHeaderRewriteConfig': ?hostHeaderRewriteConfig == null ? null : hostHeaderRewriteConfig!.toMap(),
      'type': type,
      'urlRewriteConfig': ?urlRewriteConfig == null ? null : urlRewriteConfig!.toMap(),
    };
  }

  factory ListenerRuleTransform.fromMap(Map<String, dynamic> map) {
    return ListenerRuleTransform(
      hostHeaderRewriteConfig: map['hostHeaderRewriteConfig'] == null ? null : ListenerRuleTransformHostHeaderRewriteConfig.fromMap((map['hostHeaderRewriteConfig'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      urlRewriteConfig: map['urlRewriteConfig'] == null ? null : ListenerRuleTransformUrlRewriteConfig.fromMap((map['urlRewriteConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

