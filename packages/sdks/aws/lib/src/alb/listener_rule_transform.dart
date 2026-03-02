// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_rule_transform_host_header_rewrite_config.dart';
import 'listener_rule_transform_url_rewrite_config.dart';

class ListenerRuleTransform {
  /// Configuration block for host header rewrite. Required if `type` is `host-header-rewrite`. See Host Header Rewrite Config Blocks below.
  final pulumi.Input<ListenerRuleTransformHostHeaderRewriteConfig>? hostHeaderRewriteConfig;
  /// Type of transform. Valid values are `host-header-rewrite` and `url-rewrite`.
  final pulumi.Input<String> type;
  /// Configuration block for URL rewrite. Required if `type` is `url-rewrite`. See URL Rewrite Config Blocks below.
  final pulumi.Input<ListenerRuleTransformUrlRewriteConfig>? urlRewriteConfig;

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
      'hostHeaderRewriteConfig': ?pulumi.Input.mapOptionalInputValue<ListenerRuleTransformHostHeaderRewriteConfig, Map<String, dynamic>>(hostHeaderRewriteConfig, (value) => value.toMap()),
      'type': type,
      'urlRewriteConfig': ?pulumi.Input.mapOptionalInputValue<ListenerRuleTransformUrlRewriteConfig, Map<String, dynamic>>(urlRewriteConfig, (value) => value.toMap()),
    };
  }

  factory ListenerRuleTransform.fromMap(Map<String, dynamic> map) {
    return ListenerRuleTransform(
      hostHeaderRewriteConfig: map['hostHeaderRewriteConfig'] == null ? null : (ListenerRuleTransformHostHeaderRewriteConfig.fromMap((map['hostHeaderRewriteConfig'] as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
      urlRewriteConfig: map['urlRewriteConfig'] == null ? null : (ListenerRuleTransformUrlRewriteConfig.fromMap((map['urlRewriteConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

