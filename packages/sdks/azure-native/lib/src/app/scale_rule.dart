// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_scale_rule.dart';
import 'http_scale_rule.dart';
import 'queue_scale_rule.dart';
import 'tcp_scale_rule.dart';

/// Container App container scaling rule.
class ScaleRule {
  /// Azure Queue based scaling.
  final pulumi.Input<QueueScaleRule?>? azureQueue;
  /// Custom scale rule.
  final pulumi.Input<CustomScaleRule?>? custom;
  /// HTTP requests based scaling.
  final pulumi.Input<HttpScaleRule?>? http;
  /// Scale Rule Name
  final pulumi.Input<String?>? name;
  /// Tcp requests based scaling.
  final pulumi.Input<TcpScaleRule?>? tcp;

  /// Creates a new [ScaleRule].
  /// [azureQueue] Azure Queue based scaling.
  /// [custom] Custom scale rule.
  /// [http] HTTP requests based scaling.
  /// [name] Scale Rule Name
  /// [tcp] Tcp requests based scaling.
  const ScaleRule({
    this.azureQueue,
    this.custom,
    this.http,
    this.name,
    this.tcp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureQueue': ?pulumi.Input.mapOptionalInputValue<QueueScaleRule, Map<String, dynamic>>(azureQueue, (value) => value.toMap()),
      'custom': ?pulumi.Input.mapOptionalInputValue<CustomScaleRule, Map<String, dynamic>>(custom, (value) => value.toMap()),
      'http': ?pulumi.Input.mapOptionalInputValue<HttpScaleRule, Map<String, dynamic>>(http, (value) => value.toMap()),
      'name': ?name,
      'tcp': ?pulumi.Input.mapOptionalInputValue<TcpScaleRule, Map<String, dynamic>>(tcp, (value) => value.toMap()),
    };
  }

  factory ScaleRule.fromMap(Map<String, dynamic> map) {
    return ScaleRule(
      azureQueue: (() { final guardedValue = map['azureQueue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(QueueScaleRule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      custom: (() { final guardedValue = map['custom']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomScaleRule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      http: (() { final guardedValue = map['http']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HttpScaleRule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tcp: (() { final guardedValue = map['tcp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TcpScaleRule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
