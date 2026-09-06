// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration of the partition key to be used for partitioning data into multiple partitions
class ContainerPartitionKeyResponse {
  /// Indicates the kind of algorithm used for partitioning
  final pulumi.Input<String?>? kind;
  /// List of paths using which data within the container can be partitioned
  final pulumi.Input<List<String>?>? paths;

  /// Creates a new [ContainerPartitionKeyResponse].
  /// [kind] Indicates the kind of algorithm used for partitioning
  /// [paths] List of paths using which data within the container can be partitioned
  ContainerPartitionKeyResponse({
    pulumi.Input<String?>? kind,
    this.paths,
  }) : kind = kind ?? pulumi.Input.fromValue('Hash');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': ?kind,
      'paths': ?paths,
    };
  }

  factory ContainerPartitionKeyResponse.fromMap(Map<String, dynamic> map) {
    return ContainerPartitionKeyResponse(
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      paths: (() { final guardedValue = map['paths']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
