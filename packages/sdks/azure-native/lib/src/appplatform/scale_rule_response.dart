// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_scale_rule_response.dart';
import 'http_scale_rule_response.dart';
import 'queue_scale_rule_response.dart';
import 'tcp_scale_rule_response.dart';

/// Azure Spring Apps App Instance scaling rule.
class ScaleRuleResponse {
  /// Azure Queue based scaling.
  final pulumi.Input<QueueScaleRuleResponse>? azureQueue;
  /// Custom scale rule.
  final pulumi.Input<CustomScaleRuleResponse>? custom;
  /// HTTP requests based scaling.
  final pulumi.Input<HttpScaleRuleResponse>? http;
  /// Scale Rule Name
  final pulumi.Input<String>? name;
  /// Tcp requests based scaling.
  final pulumi.Input<TcpScaleRuleResponse>? tcp;

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
      'azureQueue': ?pulumi.Input.mapOptionalInputValue<QueueScaleRuleResponse, Map<String, dynamic>>(azureQueue, (value) => value.toMap()),
      'custom': ?pulumi.Input.mapOptionalInputValue<CustomScaleRuleResponse, Map<String, dynamic>>(custom, (value) => value.toMap()),
      'http': ?pulumi.Input.mapOptionalInputValue<HttpScaleRuleResponse, Map<String, dynamic>>(http, (value) => value.toMap()),
      'name': ?name,
      'tcp': ?pulumi.Input.mapOptionalInputValue<TcpScaleRuleResponse, Map<String, dynamic>>(tcp, (value) => value.toMap()),
    };
  }

  factory ScaleRuleResponse.fromMap(Map<String, dynamic> map) {
    return ScaleRuleResponse(
      azureQueue: map['azureQueue'] == null ? null : (QueueScaleRuleResponse.fromMap((map['azureQueue'] as Map).cast<String, dynamic>())).input(),
      custom: map['custom'] == null ? null : (CustomScaleRuleResponse.fromMap((map['custom'] as Map).cast<String, dynamic>())).input(),
      http: map['http'] == null ? null : (HttpScaleRuleResponse.fromMap((map['http'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      tcp: map['tcp'] == null ? null : (TcpScaleRuleResponse.fromMap((map['tcp'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

