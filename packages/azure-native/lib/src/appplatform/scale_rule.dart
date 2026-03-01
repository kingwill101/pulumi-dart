// ignore_for_file: unused_element, unnecessary_cast

import 'custom_scale_rule.dart';
import 'http_scale_rule.dart';
import 'queue_scale_rule.dart';
import 'tcp_scale_rule.dart';

/// Azure Spring Apps App Instance scaling rule.
class ScaleRule {
  /// Azure Queue based scaling.
  final QueueScaleRule? azureQueue;
  /// Custom scale rule.
  final CustomScaleRule? custom;
  /// HTTP requests based scaling.
  final HttpScaleRule? http;
  /// Scale Rule Name
  final String? name;
  /// Tcp requests based scaling.
  final TcpScaleRule? tcp;

  /// Creates a new [ScaleRule].
  /// [azureQueue] Azure Queue based scaling.
  /// [custom] Custom scale rule.
  /// [http] HTTP requests based scaling.
  /// [name] Scale Rule Name
  /// [tcp] Tcp requests based scaling.
  ScaleRule({
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

  factory ScaleRule.fromMap(Map<String, dynamic> map) {
    return ScaleRule(
      azureQueue: map['azureQueue'] == null ? null : QueueScaleRule.fromMap((map['azureQueue'] as Map).cast<String, dynamic>()),
      custom: map['custom'] == null ? null : CustomScaleRule.fromMap((map['custom'] as Map).cast<String, dynamic>()),
      http: map['http'] == null ? null : HttpScaleRule.fromMap((map['http'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      tcp: map['tcp'] == null ? null : TcpScaleRule.fromMap((map['tcp'] as Map).cast<String, dynamic>()),
    );
  }
}

