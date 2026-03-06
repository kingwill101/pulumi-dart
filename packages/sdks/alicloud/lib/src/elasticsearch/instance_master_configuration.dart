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
  const InstanceMasterConfiguration({
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
      amount: (() { final guardedValue = map['amount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      disk: (() { final guardedValue = map['disk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      diskType: (() { final guardedValue = map['diskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spec: (() { final guardedValue = map['spec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

