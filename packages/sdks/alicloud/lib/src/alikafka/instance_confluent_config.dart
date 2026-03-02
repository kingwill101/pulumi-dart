// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceConfluentConfig {
  /// The number of CPU cores of Connect.
  final pulumi.Input<int>? connectCu;
  /// The number of replicas of Connect.
  final pulumi.Input<int>? connectReplica;
  /// The number of CPU cores of Control Center.
  final pulumi.Input<int>? controlCenterCu;
  /// The number of replicas of Control Center.
  final pulumi.Input<int>? controlCenterReplica;
  /// The disk capacity of Control Center.
  final pulumi.Input<int>? controlCenterStorage;
  /// The number of CPU cores of the Kafka broker.
  final pulumi.Input<int>? kafkaCu;
  /// The number of replicas of the Kafka broker.
  final pulumi.Input<int>? kafkaReplica;
  /// The number of CPU cores of Kafka Rest Proxy.
  final pulumi.Input<int>? kafkaRestProxyCu;
  /// The number of replicas of Kafka Rest Proxy.
  final pulumi.Input<int>? kafkaRestProxyReplica;
  /// The disk capacity of the Kafka broker.
  final pulumi.Input<int>? kafkaStorage;
  /// The number of CPU cores of ksqlDB.
  final pulumi.Input<int>? ksqlCu;
  /// The number of replicas of ksqlDB.
  final pulumi.Input<int>? ksqlReplica;
  /// The disk capacity of ksqlDB.
  final pulumi.Input<int>? ksqlStorage;
  /// The number of CPU cores of Schema Registry.
  final pulumi.Input<int>? schemaRegistryCu;
  /// The number of replicas of Schema Registry.
  final pulumi.Input<int>? schemaRegistryReplica;
  /// The number of CPU cores of ZooKeeper.
  final pulumi.Input<int>? zookeeperCu;
  /// The number of replicas of ZooKeeper.
  final pulumi.Input<int>? zookeeperReplica;
  /// The disk capacity of ZooKeeper.
  final pulumi.Input<int>? zookeeperStorage;

  /// Creates a new [InstanceConfluentConfig].
  /// [connectCu] The number of CPU cores of Connect.
  /// [connectReplica] The number of replicas of Connect.
  /// [controlCenterCu] The number of CPU cores of Control Center.
  /// [controlCenterReplica] The number of replicas of Control Center.
  /// [controlCenterStorage] The disk capacity of Control Center.
  /// [kafkaCu] The number of CPU cores of the Kafka broker.
  /// [kafkaReplica] The number of replicas of the Kafka broker.
  /// [kafkaRestProxyCu] The number of CPU cores of Kafka Rest Proxy.
  /// [kafkaRestProxyReplica] The number of replicas of Kafka Rest Proxy.
  /// [kafkaStorage] The disk capacity of the Kafka broker.
  /// [ksqlCu] The number of CPU cores of ksqlDB.
  /// [ksqlReplica] The number of replicas of ksqlDB.
  /// [ksqlStorage] The disk capacity of ksqlDB.
  /// [schemaRegistryCu] The number of CPU cores of Schema Registry.
  /// [schemaRegistryReplica] The number of replicas of Schema Registry.
  /// [zookeeperCu] The number of CPU cores of ZooKeeper.
  /// [zookeeperReplica] The number of replicas of ZooKeeper.
  /// [zookeeperStorage] The disk capacity of ZooKeeper.
  InstanceConfluentConfig({
    this.connectCu,
    this.connectReplica,
    this.controlCenterCu,
    this.controlCenterReplica,
    this.controlCenterStorage,
    this.kafkaCu,
    this.kafkaReplica,
    this.kafkaRestProxyCu,
    this.kafkaRestProxyReplica,
    this.kafkaStorage,
    this.ksqlCu,
    this.ksqlReplica,
    this.ksqlStorage,
    this.schemaRegistryCu,
    this.schemaRegistryReplica,
    this.zookeeperCu,
    this.zookeeperReplica,
    this.zookeeperStorage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectCu': ?connectCu,
      'connectReplica': ?connectReplica,
      'controlCenterCu': ?controlCenterCu,
      'controlCenterReplica': ?controlCenterReplica,
      'controlCenterStorage': ?controlCenterStorage,
      'kafkaCu': ?kafkaCu,
      'kafkaReplica': ?kafkaReplica,
      'kafkaRestProxyCu': ?kafkaRestProxyCu,
      'kafkaRestProxyReplica': ?kafkaRestProxyReplica,
      'kafkaStorage': ?kafkaStorage,
      'ksqlCu': ?ksqlCu,
      'ksqlReplica': ?ksqlReplica,
      'ksqlStorage': ?ksqlStorage,
      'schemaRegistryCu': ?schemaRegistryCu,
      'schemaRegistryReplica': ?schemaRegistryReplica,
      'zookeeperCu': ?zookeeperCu,
      'zookeeperReplica': ?zookeeperReplica,
      'zookeeperStorage': ?zookeeperStorage,
    };
  }

  factory InstanceConfluentConfig.fromMap(Map<String, dynamic> map) {
    return InstanceConfluentConfig(
      connectCu: map['connectCu'] == null ? null : (map['connectCu'] as int).input(),
      connectReplica: map['connectReplica'] == null ? null : (map['connectReplica'] as int).input(),
      controlCenterCu: map['controlCenterCu'] == null ? null : (map['controlCenterCu'] as int).input(),
      controlCenterReplica: map['controlCenterReplica'] == null ? null : (map['controlCenterReplica'] as int).input(),
      controlCenterStorage: map['controlCenterStorage'] == null ? null : (map['controlCenterStorage'] as int).input(),
      kafkaCu: map['kafkaCu'] == null ? null : (map['kafkaCu'] as int).input(),
      kafkaReplica: map['kafkaReplica'] == null ? null : (map['kafkaReplica'] as int).input(),
      kafkaRestProxyCu: map['kafkaRestProxyCu'] == null ? null : (map['kafkaRestProxyCu'] as int).input(),
      kafkaRestProxyReplica: map['kafkaRestProxyReplica'] == null ? null : (map['kafkaRestProxyReplica'] as int).input(),
      kafkaStorage: map['kafkaStorage'] == null ? null : (map['kafkaStorage'] as int).input(),
      ksqlCu: map['ksqlCu'] == null ? null : (map['ksqlCu'] as int).input(),
      ksqlReplica: map['ksqlReplica'] == null ? null : (map['ksqlReplica'] as int).input(),
      ksqlStorage: map['ksqlStorage'] == null ? null : (map['ksqlStorage'] as int).input(),
      schemaRegistryCu: map['schemaRegistryCu'] == null ? null : (map['schemaRegistryCu'] as int).input(),
      schemaRegistryReplica: map['schemaRegistryReplica'] == null ? null : (map['schemaRegistryReplica'] as int).input(),
      zookeeperCu: map['zookeeperCu'] == null ? null : (map['zookeeperCu'] as int).input(),
      zookeeperReplica: map['zookeeperReplica'] == null ? null : (map['zookeeperReplica'] as int).input(),
      zookeeperStorage: map['zookeeperStorage'] == null ? null : (map['zookeeperStorage'] as int).input(),
    );
  }
}

