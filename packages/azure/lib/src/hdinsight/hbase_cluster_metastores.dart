// ignore_for_file: unused_element, unnecessary_cast

import 'hbase_cluster_metastores_ambari.dart';
import 'hbase_cluster_metastores_hive.dart';
import 'hbase_cluster_metastores_oozie.dart';

class HBaseClusterMetastores {
  /// An `ambari` block as defined below.
  final HBaseClusterMetastoresAmbari? ambari;
  /// A `hive` block as defined below.
  final HBaseClusterMetastoresHive? hive;
  /// An `oozie` block as defined below.
  final HBaseClusterMetastoresOozie? oozie;

  /// Creates a new [HBaseClusterMetastores].
  /// [ambari] An `ambari` block as defined below.
  /// [hive] A `hive` block as defined below.
  /// [oozie] An `oozie` block as defined below.
  HBaseClusterMetastores({
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

  factory HBaseClusterMetastores.fromMap(Map<String, dynamic> map) {
    return HBaseClusterMetastores(
      ambari: map['ambari'] == null ? null : HBaseClusterMetastoresAmbari.fromMap((map['ambari'] as Map).cast<String, dynamic>()),
      hive: map['hive'] == null ? null : HBaseClusterMetastoresHive.fromMap((map['hive'] as Map).cast<String, dynamic>()),
      oozie: map['oozie'] == null ? null : HBaseClusterMetastoresOozie.fromMap((map['oozie'] as Map).cast<String, dynamic>()),
    );
  }
}

