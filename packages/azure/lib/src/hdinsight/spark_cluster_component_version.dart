// ignore_for_file: unused_element, unnecessary_cast


class SparkClusterComponentVersion {
  /// The version of Spark which should be used for this HDInsight Spark Cluster. Changing this forces a new resource to be created.
  final String spark;

  /// Creates a new [SparkClusterComponentVersion].
  /// [spark] The version of Spark which should be used for this HDInsight Spark Cluster. Changing this forces a new resource to be created.
  SparkClusterComponentVersion({
    required this.spark,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'spark': spark,
    };
  }

  factory SparkClusterComponentVersion.fromMap(Map<String, dynamic> map) {
    return SparkClusterComponentVersion(
      spark: map['spark'] as String,
    );
  }
}

