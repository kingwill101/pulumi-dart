// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceClientNodeConfiguration {
  /// Number of disks in the Elasticsearch cluster coordination node
  final pulumi.Input<int>? amount;
  /// Elasticsearch cluster coordinates node disk size
  final pulumi.Input<int>? disk;
  /// Elasticsearch cluster coordination node disk type
  final pulumi.Input<String>? diskType;
  /// Elasticsearch cluster coordination node specification
  final pulumi.Input<String>? spec;

  /// Creates a new [InstanceClientNodeConfiguration].
  /// [amount] Number of disks in the Elasticsearch cluster coordination node
  /// [disk] Elasticsearch cluster coordinates node disk size
  /// [diskType] Elasticsearch cluster coordination node disk type
  /// [spec] Elasticsearch cluster coordination node specification
  InstanceClientNodeConfiguration({
    this.amount,
    this.disk,
    this.diskType,
    this.spec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amount': ?amount,
      'disk': ?disk,
      'diskType': ?diskType,
      'spec': ?spec,
    };
  }

  factory InstanceClientNodeConfiguration.fromMap(Map<String, dynamic> map) {
    return InstanceClientNodeConfiguration(
      amount: (() { final guardedValue = map['amount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      disk: (() { final guardedValue = map['disk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      diskType: (() { final guardedValue = map['diskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spec: (() { final guardedValue = map['spec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

