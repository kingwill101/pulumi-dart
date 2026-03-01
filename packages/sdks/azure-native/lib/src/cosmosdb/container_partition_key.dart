// ignore_for_file: unused_element, unnecessary_cast


/// The configuration of the partition key to be used for partitioning data into multiple partitions
class ContainerPartitionKey {
  /// Indicates the kind of algorithm used for partitioning. For MultiHash, multiple partition keys (upto three maximum) are supported for container create
  final String? kind;
  /// List of paths using which data within the container can be partitioned
  final List<String>? paths;
  /// Indicates the version of the partition key definition
  final int? version;

  /// Creates a new [ContainerPartitionKey].
  /// [kind] Indicates the kind of algorithm used for partitioning. For MultiHash, multiple partition keys (upto three maximum) are supported for container create
  /// [paths] List of paths using which data within the container can be partitioned
  /// [version] Indicates the version of the partition key definition
  ContainerPartitionKey({
    this.kind,
    this.paths,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': ?kind,
      'paths': ?paths,
      'version': ?version,
    };
  }

  factory ContainerPartitionKey.fromMap(Map<String, dynamic> map) {
    return ContainerPartitionKey(
      kind: map['kind'] == null ? null : map['kind'] as String,
      paths: map['paths'] == null ? null : (map['paths'] as List).cast<String>(),
      version: map['version'] == null ? null : map['version'] as int,
    );
  }
}

