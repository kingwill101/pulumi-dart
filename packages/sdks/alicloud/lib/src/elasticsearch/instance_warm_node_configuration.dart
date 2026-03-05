// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceWarmNodeConfiguration {
  /// Elasticsearch cluster cold data node disk number
  final pulumi.Input<int>? amount;
  /// Elasticsearch cluster cold data node disk size
  final pulumi.Input<int>? disk;
  /// Elasticsearch cluster cold data node Disk encryption
  final pulumi.Input<bool>? diskEncryption;
  /// Elasticsearch cluster cold data node disk type
  final pulumi.Input<String>? diskType;
  /// Elasticsearch cluster cold data node Disk Specification
  final pulumi.Input<String>? spec;

  /// Creates a new [InstanceWarmNodeConfiguration].
  /// [amount] Elasticsearch cluster cold data node disk number
  /// [disk] Elasticsearch cluster cold data node disk size
  /// [diskEncryption] Elasticsearch cluster cold data node Disk encryption
  /// [diskType] Elasticsearch cluster cold data node disk type
  /// [spec] Elasticsearch cluster cold data node Disk Specification
  InstanceWarmNodeConfiguration({
    this.amount,
    this.disk,
    this.diskEncryption,
    this.diskType,
    this.spec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amount': ?amount,
      'disk': ?disk,
      'diskEncryption': ?diskEncryption,
      'diskType': ?diskType,
      'spec': ?spec,
    };
  }

  factory InstanceWarmNodeConfiguration.fromMap(Map<String, dynamic> map) {
    return InstanceWarmNodeConfiguration(
      amount: (() { final guardedValue = map['amount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      disk: (() { final guardedValue = map['disk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      diskEncryption: (() { final guardedValue = map['diskEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      diskType: (() { final guardedValue = map['diskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spec: (() { final guardedValue = map['spec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

