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
  IngressRule({
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
      appId: (map['appId'] as String).input(),
      appName: (map['appName'] as String).input(),
      backendProtocol: map['backendProtocol'] == null ? null : (map['backendProtocol']! as String).input(),
      containerPort: (map['containerPort'] as int).input(),
      domain: (map['domain'] as String).input(),
      path: (map['path'] as String).input(),
      rewritePath: map['rewritePath'] == null ? null : (map['rewritePath']! as String).input(),
    );
  }
}

