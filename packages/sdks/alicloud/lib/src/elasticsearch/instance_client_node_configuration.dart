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
      amount: map['amount'] == null ? null : (map['amount']! as int).input(),
      disk: map['disk'] == null ? null : (map['disk']! as int).input(),
      diskType: map['diskType'] == null ? null : (map['diskType']! as String).input(),
      spec: map['spec'] == null ? null : (map['spec']! as String).input(),
    );
  }
}

