// ignore_for_file: unused_element, unnecessary_cast


/// Represents a scaling mechanism for adding or removing instances of stateless service partition.
class PartitionInstanceCountScaleMechanismResponse {
  /// Enumerates the ways that a service can be partitioned.
  /// Expected value is 'ScalePartitionInstanceCount'.
  final String kind;
  /// Maximum number of instances of the partition.
  final int maxInstanceCount;
  /// Minimum number of instances of the partition.
  final int minInstanceCount;
  /// The number of instances to add or remove during a scaling operation.
  final int scaleIncrement;

  /// Creates a new [PartitionInstanceCountScaleMechanismResponse].
  /// [kind] Enumerates the ways that a service can be partitioned.
  /// [maxInstanceCount] Maximum number of instances of the partition.
  /// [minInstanceCount] Minimum number of instances of the partition.
  /// [scaleIncrement] The number of instances to add or remove during a scaling operation.
  PartitionInstanceCountScaleMechanismResponse({
    required this.kind,
    required this.maxInstanceCount,
    required this.minInstanceCount,
    required this.scaleIncrement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': kind,
      'maxInstanceCount': maxInstanceCount,
      'minInstanceCount': minInstanceCount,
      'scaleIncrement': scaleIncrement,
    };
  }

  factory PartitionInstanceCountScaleMechanismResponse.fromMap(Map<String, dynamic> map) {
    return PartitionInstanceCountScaleMechanismResponse(
      kind: map['kind'] as String,
      maxInstanceCount: map['maxInstanceCount'] as int,
      minInstanceCount: map['minInstanceCount'] as int,
      scaleIncrement: map['scaleIncrement'] as int,
    );
  }
}

