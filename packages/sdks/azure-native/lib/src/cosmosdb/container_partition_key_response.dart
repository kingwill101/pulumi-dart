// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration of the partition key to be used for partitioning data into multiple partitions
class ContainerPartitionKeyResponse {
  /// Indicates the kind of algorithm used for partitioning. For MultiHash, multiple partition keys (upto three maximum) are supported for container create
  final pulumi.Input<String>? kind;

  /// List of paths using which data within the container can be partitioned
  final pulumi.Input<List<String>>? paths;

  /// Indicates if the container is using a system generated partition key
  final pulumi.Input<bool> systemKey;

  /// Indicates the version of the partition key definition
  final pulumi.Input<int>? version;

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
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      paths: (() {
        final guardedValue = map['paths'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      systemKey: pulumi.Input.fromValue(map['systemKey'] as bool),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
