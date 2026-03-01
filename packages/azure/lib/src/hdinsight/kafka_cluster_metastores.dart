// ignore_for_file: unused_element, unnecessary_cast

import 'kafka_cluster_metastores_ambari.dart';
import 'kafka_cluster_metastores_hive.dart';
import 'kafka_cluster_metastores_oozie.dart';

class KafkaClusterMetastores {
  /// An `ambari` block as defined below.
  final KafkaClusterMetastoresAmbari? ambari;
  /// A `hive` block as defined below.
  final KafkaClusterMetastoresHive? hive;
  /// An `oozie` block as defined below.
  final KafkaClusterMetastoresOozie? oozie;

  /// Creates a new [KafkaClusterMetastores].
  /// [ambari] An `ambari` block as defined below.
  /// [hive] A `hive` block as defined below.
  /// [oozie] An `oozie` block as defined below.
  KafkaClusterMetastores({
    this.ambari,
    this.hive,
    this.oozie,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ambari': ?ambari == null ? null : ambari!.toMap(),
      'hive': ?hive == null ? null : hive!.toMap(),
      'oozie': ?oozie == null ? null : oozie!.toMap(),
    };
  }

  factory KafkaClusterMetastores.fromMap(Map<String, dynamic> map) {
    return KafkaClusterMetastores(
      ambari: map['ambari'] == null ? null : KafkaClusterMetastoresAmbari.fromMap((map['ambari'] as Map).cast<String, dynamic>()),
      hive: map['hive'] == null ? null : KafkaClusterMetastoresHive.fromMap((map['hive'] as Map).cast<String, dynamic>()),
      oozie: map['oozie'] == null ? null : KafkaClusterMetastoresOozie.fromMap((map['oozie'] as Map).cast<String, dynamic>()),
    );
  }
}

