// ignore_for_file: unused_element, unnecessary_cast


/// The configuration of the partition key to be used for partitioning data into multiple partitions
class ContainerPartitionKeyResponse {
  /// Indicates the kind of algorithm used for partitioning. For MultiHash, multiple partition keys (upto three maximum) are supported for container create
  final String? kind;
  /// List of paths using which data within the container can be partitioned
  final List<String>? paths;
  /// Indicates if the container is using a system generated partition key
  final bool systemKey;
  /// Indicates the version of the partition key definition
  final int? version;

  /// Creates a new [ContainerPartitionKeyResponse].
  /// [kind] Indicates the kind of algorithm used for partitioning. For MultiHash, multiple partition keys (upto three maximum) are supported for container create
  /// [paths] List of paths using which data within the container can be partitioned
  /// [systemKey] Indicates if the container is using a system generated partition key
  /// [version] Indicates the version of the partition key definition
  ContainerPartitionKeyResponse({
    this.kind,
    this.paths,
    required this.systemKey,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': ?kind,
      'paths': ?paths,
      'systemKey': systemKey,
      'version': ?version,
    };
  }

  factory ContainerPartitionKeyResponse.fromMap(Map<String, dynamic> map) {
    return ContainerPartitionKeyResponse(
      kind: map['kind'] == null ? null : map['kind'] as String,
      paths: map['paths'] == null ? null : (map['paths'] as List).cast<String>(),
      systemKey: map['systemKey'] as bool,
      version: map['version'] == null ? null : map['version'] as int,
    );
  }
}

