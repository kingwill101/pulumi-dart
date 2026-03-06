// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_scale_rule_response.dart';
import 'http_scale_rule_response.dart';
import 'queue_scale_rule_response.dart';
import 'tcp_scale_rule_response.dart';

/// Container App container scaling rule.
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
  const ScaleRuleResponse({
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
      azureQueue: (() { final guardedValue = map['azureQueue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(QueueScaleRuleResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      custom: (() { final guardedValue = map['custom']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomScaleRuleResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      http: (() { final guardedValue = map['http']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HttpScaleRuleResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tcp: (() { final guardedValue = map['tcp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TcpScaleRuleResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

