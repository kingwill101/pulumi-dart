// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_rule_transform_host_header_rewrite_config.dart';
import 'listener_rule_transform_url_rewrite_config.dart';

class ListenerRuleTransform {
  /// Configuration block for host header rewrite. Required if `type` is `host-header-rewrite`. See Host Header Rewrite Config Blocks below.
  final pulumi.Input<ListenerRuleTransformHostHeaderRewriteConfig?>? hostHeaderRewriteConfig;
  /// Type of transform. Valid values are `host-header-rewrite` and `url-rewrite`.
  final pulumi.Input<String> type;
  /// Configuration block for URL rewrite. Required if `type` is `url-rewrite`. See URL Rewrite Config Blocks below.
  final pulumi.Input<ListenerRuleTransformUrlRewriteConfig?>? urlRewriteConfig;

  /// Creates a new [ListenerRuleTransform].
  /// [hostHeaderRewriteConfig] Configuration block for host header rewrite. Required if `type` is `host-header-rewrite`. See Host Header Rewrite Config Blocks below.
  /// [type] Type of transform. Valid values are `host-header-rewrite` and `url-rewrite`.
  /// [urlRewriteConfig] Configuration block for URL rewrite. Required if `type` is `url-rewrite`. See URL Rewrite Config Blocks below.
  const ListenerRuleTransform({
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
      hostHeaderRewriteConfig: (() { final guardedValue = map['hostHeaderRewriteConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ListenerRuleTransformHostHeaderRewriteConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      urlRewriteConfig: (() { final guardedValue = map['urlRewriteConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ListenerRuleTransformUrlRewriteConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
