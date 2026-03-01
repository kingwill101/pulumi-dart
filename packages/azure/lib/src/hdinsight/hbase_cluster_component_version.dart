// ignore_for_file: unused_element, unnecessary_cast


class HBaseClusterComponentVersion {
  /// The version of HBase which should be used for this HDInsight HBase Cluster. Changing this forces a new resource to be created.
  final String hbase;

  /// Creates a new [HBaseClusterComponentVersion].
  /// [hbase] The version of HBase which should be used for this HDInsight HBase Cluster. Changing this forces a new resource to be created.
  HBaseClusterComponentVersion({
    required this.hbase,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hbase': hbase,
    };
  }

  factory HBaseClusterComponentVersion.fromMap(Map<String, dynamic> map) {
    return HBaseClusterComponentVersion(
      hbase: map['hbase'] as String,
    );
  }
}

