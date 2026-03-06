// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IngressRule {
  /// Target application ID.
  final pulumi.Input<String> appId;
  /// Target application name.
  final pulumi.Input<String> appName;
  /// The backend protocol.
  final pulumi.Input<String>? backendProtocol;
  /// Application backend port.
  final pulumi.Input<int> containerPort;
  /// Application domain name.
  final pulumi.Input<String> domain;
  /// URL path.
  final pulumi.Input<String> path;
  /// The rewrite path.
  final pulumi.Input<String>? rewritePath;

  /// Creates a new [IngressRule].
  /// [appId] Target application ID.
  /// [appName] Target application name.
  /// [backendProtocol] The backend protocol.
  /// [containerPort] Application backend port.
  /// [domain] Application domain name.
  /// [path] URL path.
  /// [rewritePath] The rewrite path.
  const IngressRule({
    required this.appId,
    required this.appName,
    this.backendProtocol,
    required this.containerPort,
    required this.domain,
    required this.path,
    this.rewritePath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'appName': appName,
      'backendProtocol': ?backendProtocol,
      'containerPort': containerPort,
      'domain': domain,
      'path': path,
      'rewritePath': ?rewritePath,
    };
  }

  factory IngressRule.fromMap(Map<String, dynamic> map) {
    return IngressRule(
      appId: pulumi.Input.fromValue(map['appId'] as String),
      appName: pulumi.Input.fromValue(map['appName'] as String),
      backendProtocol: (() { final guardedValue = map['backendProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerPort: pulumi.Input.fromValue(map['containerPort'] as int),
      domain: pulumi.Input.fromValue(map['domain'] as String),
      path: pulumi.Input.fromValue(map['path'] as String),
      rewritePath: (() { final guardedValue = map['rewritePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

