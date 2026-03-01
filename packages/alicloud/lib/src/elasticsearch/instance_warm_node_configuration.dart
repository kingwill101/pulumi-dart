// ignore_for_file: unused_element, unnecessary_cast


class InstanceWarmNodeConfiguration {
  /// Elasticsearch cluster cold data node disk number
  final int? amount;
  /// Elasticsearch cluster cold data node disk size
  final int? disk;
  /// Elasticsearch cluster cold data node Disk encryption
  final bool? diskEncryption;
  /// Elasticsearch cluster cold data node disk type
  final String? diskType;
  /// Elasticsearch cluster cold data node Disk Specification
  final String? spec;

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
      amount: map['amount'] == null ? null : map['amount'] as int,
      disk: map['disk'] == null ? null : map['disk'] as int,
      diskEncryption: map['diskEncryption'] == null ? null : map['diskEncryption'] as bool,
      diskType: map['diskType'] == null ? null : map['diskType'] as String,
      spec: map['spec'] == null ? null : map['spec'] as String,
    );
  }
}

