// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceDataNodeConfiguration {
  /// Number of data nodes in the Elasticsearch cluster
  final pulumi.Input<int>? amount;

  /// Elasticsearch data node disk size
  final pulumi.Input<int>? disk;

  /// Whether the Elasticsearch data node disk is encrypted
  final pulumi.Input<bool>? diskEncryption;

  /// Elasticsearch cluster data node disk type
  final pulumi.Input<String>? diskType;

  /// Elasticsearch cluster data node Essd disk level
  final pulumi.Input<String>? performanceLevel;

  /// Elasticsearch data node specification
  final pulumi.Input<String> spec;

  /// Creates a new [InstanceDataNodeConfiguration].
  /// [amount] Number of data nodes in the Elasticsearch cluster
  /// [disk] Elasticsearch data node disk size
  /// [diskEncryption] Whether the Elasticsearch data node disk is encrypted
  /// [diskType] Elasticsearch cluster data node disk type
  /// [performanceLevel] Elasticsearch cluster data node Essd disk level
  /// [spec] Elasticsearch data node specification
  InstanceDataNodeConfiguration({
    this.amount,
    this.disk,
    this.diskEncryption,
    this.diskType,
    this.performanceLevel,
    required this.spec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amount': ?amount,
      'disk': ?disk,
      'diskEncryption': ?diskEncryption,
      'diskType': ?diskType,
      'performanceLevel': ?performanceLevel,
      'spec': spec,
    };
  }

  factory InstanceDataNodeConfiguration.fromMap(Map<String, dynamic> map) {
    return InstanceDataNodeConfiguration(
      amount: (() {
        final guardedValue = map['amount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      disk: (() {
        final guardedValue = map['disk'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      diskEncryption: (() {
        final guardedValue = map['diskEncryption'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      diskType: (() {
        final guardedValue = map['diskType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      performanceLevel: (() {
        final guardedValue = map['performanceLevel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      spec: pulumi.Input.fromValue(map['spec'] as String),
    );
  }
}
