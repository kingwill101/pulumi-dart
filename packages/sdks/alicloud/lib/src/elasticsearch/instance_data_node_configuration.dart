// ignore_for_file: unused_element, unnecessary_cast


class InstanceDataNodeConfiguration {
  /// Number of data nodes in the Elasticsearch cluster
  final int? amount;
  /// Elasticsearch data node disk size
  final int? disk;
  /// Whether the Elasticsearch data node disk is encrypted
  final bool? diskEncryption;
  /// Elasticsearch cluster data node disk type
  final String? diskType;
  /// Elasticsearch cluster data node Essd disk level
  final String? performanceLevel;
  /// Elasticsearch data node specification
  final String spec;

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
      amount: map['amount'] == null ? null : map['amount'] as int,
      disk: map['disk'] == null ? null : map['disk'] as int,
      diskEncryption: map['diskEncryption'] == null ? null : map['diskEncryption'] as bool,
      diskType: map['diskType'] == null ? null : map['diskType'] as String,
      performanceLevel: map['performanceLevel'] == null ? null : map['performanceLevel'] as String,
      spec: map['spec'] as String,
    );
  }
}

