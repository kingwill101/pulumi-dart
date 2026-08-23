// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_listener_rule_transform_host_header_rewrite_config.dart';
import 'get_listener_rule_transform_url_rewrite_config.dart';

class GetListenerRuleTransform {
  /// Block for host header rewrite. Detailed below.
  final pulumi.Input<List<GetListenerRuleTransformHostHeaderRewriteConfig>>? hostHeaderRewriteConfigs;
  /// Type of transform.
  final pulumi.Input<String> type;
  /// Block for URL rewrite. Detailed below.
  final pulumi.Input<List<GetListenerRuleTransformUrlRewriteConfig>>? urlRewriteConfigs;

  /// Creates a new [GetListenerRuleTransform].
  /// [hostHeaderRewriteConfigs] Block for host header rewrite. Detailed below.
  /// [type] Type of transform.
  /// [urlRewriteConfigs] Block for URL rewrite. Detailed below.
  const GetListenerRuleTransform({
    this.hostHeaderRewriteConfigs,
    required this.type,
    this.urlRewriteConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostHeaderRewriteConfigs': ?pulumi.Input.mapOptionalInputValue<List<GetListenerRuleTransformHostHeaderRewriteConfig>, List<Map<String, dynamic>>>(hostHeaderRewriteConfigs, (value) => pulumi.Input.encodeList<GetListenerRuleTransformHostHeaderRewriteConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
      'urlRewriteConfigs': ?pulumi.Input.mapOptionalInputValue<List<GetListenerRuleTransformUrlRewriteConfig>, List<Map<String, dynamic>>>(urlRewriteConfigs, (value) => pulumi.Input.encodeList<GetListenerRuleTransformUrlRewriteConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetListenerRuleTransform.fromMap(Map<String, dynamic> map) {
    return GetListenerRuleTransform(
      hostHeaderRewriteConfigs: (() { final guardedValue = map['hostHeaderRewriteConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetListenerRuleTransformHostHeaderRewriteConfig>(guardedValue, (value) => GetListenerRuleTransformHostHeaderRewriteConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      urlRewriteConfigs: (() { final guardedValue = map['urlRewriteConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetListenerRuleTransformUrlRewriteConfig>(guardedValue, (value) => GetListenerRuleTransformUrlRewriteConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
