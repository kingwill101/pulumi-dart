// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IngressDefaultRule {
  /// Target application ID.
  final pulumi.Input<String>? appId;
  /// Target application name.
  final pulumi.Input<String>? appName;
  /// Application backend port.
  final pulumi.Input<int>? containerPort;

  /// Creates a new [IngressDefaultRule].
  /// [appId] Target application ID.
  /// [appName] Target application name.
  /// [containerPort] Application backend port.
  IngressDefaultRule({
    this.appId,
    this.appName,
    this.containerPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': ?appId,
      'appName': ?appName,
      'containerPort': ?containerPort,
    };
  }

  factory IngressDefaultRule.fromMap(Map<String, dynamic> map) {
    return IngressDefaultRule(
      appId: map['appId'] == null ? null : (map['appId'] as String).input(),
      appName: map['appName'] == null ? null : (map['appName'] as String).input(),
      containerPort: map['containerPort'] == null ? null : (map['containerPort'] as int).input(),
    );
  }
}

