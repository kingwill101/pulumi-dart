// ignore_for_file: unused_element, unnecessary_cast

import '../listener_rule_transform_host_header_rewrite_config/listener_rule_transform_host_header_rewrite_config2.dart';
import '../listener_rule_transform_url_rewrite_config/listener_rule_transform_url_rewrite_config2.dart';

class ListenerRuleTransform2 {
  /// Configuration block for host header rewrite. Required if <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span> is `host-header-rewrite`. See Host Header Rewrite Config Blocks below.
  final ListenerRuleTransformHostHeaderRewriteConfig2? hostHeaderRewriteConfig;

  /// Type of transform. Valid values are `host-header-rewrite` and `url-rewrite`.
  final String type;

  /// Configuration block for URL rewrite. Required if <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span> is `url-rewrite`. See URL Rewrite Config Blocks below.
  final ListenerRuleTransformUrlRewriteConfig2? urlRewriteConfig;

  ListenerRuleTransform2({
    this.hostHeaderRewriteConfig,
    required this.type,
    this.urlRewriteConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final hostHeaderRewriteConfigValue = hostHeaderRewriteConfig;
    if (hostHeaderRewriteConfigValue != null) {
      map['hostHeaderRewriteConfig'] = hostHeaderRewriteConfigValue.toMap();
    }
    map['type'] = type;
    final urlRewriteConfigValue = urlRewriteConfig;
    if (urlRewriteConfigValue != null) {
      map['urlRewriteConfig'] = urlRewriteConfigValue.toMap();
    }
    return map;
  }

  factory ListenerRuleTransform2.fromMap(Map<String, dynamic> map) {
    return ListenerRuleTransform2(
      hostHeaderRewriteConfig: map['hostHeaderRewriteConfig'] == null
          ? null
          : ListenerRuleTransformHostHeaderRewriteConfig2.fromMap(
              (map['hostHeaderRewriteConfig'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      urlRewriteConfig: map['urlRewriteConfig'] == null
          ? null
          : ListenerRuleTransformUrlRewriteConfig2.fromMap(
              (map['urlRewriteConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
