// ignore_for_file: unused_element, unnecessary_cast

import 'interactive_query_cluster_metastores_ambari.dart';
import 'interactive_query_cluster_metastores_hive.dart';
import 'interactive_query_cluster_metastores_oozie.dart';

class InteractiveQueryClusterMetastores {
  /// An `ambari` block as defined below.
  final InteractiveQueryClusterMetastoresAmbari? ambari;
  /// A `hive` block as defined below.
  final InteractiveQueryClusterMetastoresHive? hive;
  /// An `oozie` block as defined below.
  final InteractiveQueryClusterMetastoresOozie? oozie;

  /// Creates a new [InteractiveQueryClusterMetastores].
  /// [ambari] An `ambari` block as defined below.
  /// [hive] A `hive` block as defined below.
  /// [oozie] An `oozie` block as defined below.
  InteractiveQueryClusterMetastores({
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

  factory InteractiveQueryClusterMetastores.fromMap(Map<String, dynamic> map) {
    return InteractiveQueryClusterMetastores(
      ambari: map['ambari'] == null ? null : InteractiveQueryClusterMetastoresAmbari.fromMap((map['ambari'] as Map).cast<String, dynamic>()),
      hive: map['hive'] == null ? null : InteractiveQueryClusterMetastoresHive.fromMap((map['hive'] as Map).cast<String, dynamic>()),
      oozie: map['oozie'] == null ? null : InteractiveQueryClusterMetastoresOozie.fromMap((map['oozie'] as Map).cast<String, dynamic>()),
    );
  }
}

