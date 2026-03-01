// ignore_for_file: unused_element, unnecessary_cast

import 'custom_scale_rule_response.dart';
import 'http_scale_rule_response.dart';
import 'queue_scale_rule_response.dart';
import 'tcp_scale_rule_response.dart';

/// Container App container scaling rule.
class ScaleRuleResponse {
  /// Azure Queue based scaling.
  final QueueScaleRuleResponse? azureQueue;
  /// Custom scale rule.
  final CustomScaleRuleResponse? custom;
  /// HTTP requests based scaling.
  final HttpScaleRuleResponse? http;
  /// Scale Rule Name
  final String? name;
  /// Tcp requests based scaling.
  final TcpScaleRuleResponse? tcp;

  /// Creates a new [ScaleRuleResponse].
  /// [azureQueue] Azure Queue based scaling.
  /// [custom] Custom scale rule.
  /// [http] HTTP requests based scaling.
  /// [name] Scale Rule Name
  /// [tcp] Tcp requests based scaling.
  ScaleRuleResponse({
    this.azureQueue,
    this.custom,
    this.http,
    this.name,
    this.tcp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureQueue': ?azureQueue == null ? null : azureQueue!.toMap(),
      'custom': ?custom == null ? null : custom!.toMap(),
      'http': ?http == null ? null : http!.toMap(),
      'name': ?name,
      'tcp': ?tcp == null ? null : tcp!.toMap(),
    };
  }

  factory ScaleRuleResponse.fromMap(Map<String, dynamic> map) {
    return ScaleRuleResponse(
      azureQueue: map['azureQueue'] == null ? null : QueueScaleRuleResponse.fromMap((map['azureQueue'] as Map).cast<String, dynamic>()),
      custom: map['custom'] == null ? null : CustomScaleRuleResponse.fromMap((map['custom'] as Map).cast<String, dynamic>()),
      http: map['http'] == null ? null : HttpScaleRuleResponse.fromMap((map['http'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      tcp: map['tcp'] == null ? null : TcpScaleRuleResponse.fromMap((map['tcp'] as Map).cast<String, dynamic>()),
    );
  }
}

