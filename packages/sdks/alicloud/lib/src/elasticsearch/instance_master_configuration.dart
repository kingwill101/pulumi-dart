// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceMasterConfiguration {
  /// Elasticsearch proprietary master node number of disks
  final pulumi.Input<int>? amount;
  /// Elasticsearch proprietary master node disk size
  final pulumi.Input<int>? disk;
  /// Elasticsearch proprietary master node disk type
  final pulumi.Input<String>? diskType;
  /// Elasticsearch proprietary master node specifications
  final pulumi.Input<String>? spec;

  /// Creates a new [InstanceMasterConfiguration].
  /// [amount] Elasticsearch proprietary master node number of disks
  /// [disk] Elasticsearch proprietary master node disk size
  /// [diskType] Elasticsearch proprietary master node disk type
  /// [spec] Elasticsearch proprietary master node specifications
  InstanceMasterConfiguration({
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

  factory InstanceMasterConfiguration.fromMap(Map<String, dynamic> map) {
    return InstanceMasterConfiguration(
      amount: map['amount'] == null ? null : (map['amount'] as int).input(),
      disk: map['disk'] == null ? null : (map['disk'] as int).input(),
      diskType: map['diskType'] == null ? null : (map['diskType'] as String).input(),
      spec: map['spec'] == null ? null : (map['spec'] as String).input(),
    );
  }
}

