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
      connectCu: (() { final guardedValue = map['connectCu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      connectReplica: (() { final guardedValue = map['connectReplica']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      controlCenterCu: (() { final guardedValue = map['controlCenterCu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      controlCenterReplica: (() { final guardedValue = map['controlCenterReplica']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      controlCenterStorage: (() { final guardedValue = map['controlCenterStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      kafkaCu: (() { final guardedValue = map['kafkaCu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      kafkaReplica: (() { final guardedValue = map['kafkaReplica']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      kafkaRestProxyCu: (() { final guardedValue = map['kafkaRestProxyCu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      kafkaRestProxyReplica: (() { final guardedValue = map['kafkaRestProxyReplica']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      kafkaStorage: (() { final guardedValue = map['kafkaStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ksqlCu: (() { final guardedValue = map['ksqlCu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ksqlReplica: (() { final guardedValue = map['ksqlReplica']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ksqlStorage: (() { final guardedValue = map['ksqlStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      schemaRegistryCu: (() { final guardedValue = map['schemaRegistryCu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      schemaRegistryReplica: (() { final guardedValue = map['schemaRegistryReplica']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      zookeeperCu: (() { final guardedValue = map['zookeeperCu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      zookeeperReplica: (() { final guardedValue = map['zookeeperReplica']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      zookeeperStorage: (() { final guardedValue = map['zookeeperStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

