// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDbSystemShapesDbSystemShape {
  /// Maximum number of CPU cores that can be enabled for the shape.
  final pulumi.Input<int> availableCoreCount;
  /// Maximum number of CPU cores per DB node that can be enabled for the shape.
  final pulumi.Input<int> availableCoreCountPerNode;
  /// Maximum amount of data storage, in terabytes (TB), that can be enabled for the shape.
  final pulumi.Input<int> availableDataStorageInTbs;
  /// Maximum amount of data storage, in terabytes (TB), that's available per storage server for the shape.
  final pulumi.Input<int> availableDataStoragePerServerInTbs;
  /// Maximum amount of DB node storage, in gigabytes (GB), that's available per DB node for the shape.
  final pulumi.Input<int> availableDbNodePerNodeInGbs;
  /// Maximum amount of DB node storage, in gigabytes (GB), that can be enabled for the shape.
  final pulumi.Input<int> availableDbNodeStorageInGbs;
  /// Maximum amount of memory, in gigabytes (GB), that can be enabled for the shape.
  final pulumi.Input<int> availableMemoryInGbs;
  /// Maximum amount of memory, in gigabytes (GB), that's available per DB node for the shape.
  final pulumi.Input<int> availableMemoryPerNodeInGbs;
  /// Discrete number by which the CPU core count for the shape can be increased or decreased.
  final pulumi.Input<int> coreCountIncrement;
  /// Maximum number of Exadata storage servers available for the shape.
  final pulumi.Input<int> maxStorageCount;
  /// Maximum number of compute servers available for the shape.
  final pulumi.Input<int> maximumNodeCount;
  /// Minimum number of CPU cores that can be enabled per node for the shape.
  final pulumi.Input<int> minCoreCountPerNode;
  /// Minimum amount of data storage, in terabytes (TB), that must be allocated for the shape.
  final pulumi.Input<int> minDataStorageInTbs;
  /// Minimum amount of DB node storage, in gigabytes (GB), that must be allocated per DB node for the shape.
  final pulumi.Input<int> minDbNodeStoragePerNodeInGbs;
  /// Minimum amount of memory, in gigabytes (GB), that must be allocated per DB node for the shape.
  final pulumi.Input<int> minMemoryPerNodeInGbs;
  /// Minimum number of Exadata storage servers available for the shape.
  final pulumi.Input<int> minStorageCount;
  /// Minimum number of CPU cores that can be enabled for the shape.
  final pulumi.Input<int> minimumCoreCount;
  /// Minimum number of compute servers available for the shape.
  final pulumi.Input<int> minimumNodeCount;
  /// Name of the shape.
  final pulumi.Input<String> name;
  /// Runtime minimum number of CPU cores that can be enabled for the shape.
  final pulumi.Input<int> runtimeMinimumCoreCount;
  /// Family of the shape.
  final pulumi.Input<String> shapeFamily;
  /// Shape type, determined by the CPU hardware.
  final pulumi.Input<String> shapeType;

  /// Creates a new [GetDbSystemShapesDbSystemShape].
  /// [availableCoreCount] Maximum number of CPU cores that can be enabled for the shape.
  /// [availableCoreCountPerNode] Maximum number of CPU cores per DB node that can be enabled for the shape.
  /// [availableDataStorageInTbs] Maximum amount of data storage, in terabytes (TB), that can be enabled for the shape.
  /// [availableDataStoragePerServerInTbs] Maximum amount of data storage, in terabytes (TB), that's available per storage server for the shape.
  /// [availableDbNodePerNodeInGbs] Maximum amount of DB node storage, in gigabytes (GB), that's available per DB node for the shape.
  /// [availableDbNodeStorageInGbs] Maximum amount of DB node storage, in gigabytes (GB), that can be enabled for the shape.
  /// [availableMemoryInGbs] Maximum amount of memory, in gigabytes (GB), that can be enabled for the shape.
  /// [availableMemoryPerNodeInGbs] Maximum amount of memory, in gigabytes (GB), that's available per DB node for the shape.
  /// [coreCountIncrement] Discrete number by which the CPU core count for the shape can be increased or decreased.
  /// [maxStorageCount] Maximum number of Exadata storage servers available for the shape.
  /// [maximumNodeCount] Maximum number of compute servers available for the shape.
  /// [minCoreCountPerNode] Minimum number of CPU cores that can be enabled per node for the shape.
  /// [minDataStorageInTbs] Minimum amount of data storage, in terabytes (TB), that must be allocated for the shape.
  /// [minDbNodeStoragePerNodeInGbs] Minimum amount of DB node storage, in gigabytes (GB), that must be allocated per DB node for the shape.
  /// [minMemoryPerNodeInGbs] Minimum amount of memory, in gigabytes (GB), that must be allocated per DB node for the shape.
  /// [minStorageCount] Minimum number of Exadata storage servers available for the shape.
  /// [minimumCoreCount] Minimum number of CPU cores that can be enabled for the shape.
  /// [minimumNodeCount] Minimum number of compute servers available for the shape.
  /// [name] Name of the shape.
  /// [runtimeMinimumCoreCount] Runtime minimum number of CPU cores that can be enabled for the shape.
  /// [shapeFamily] Family of the shape.
  /// [shapeType] Shape type, determined by the CPU hardware.
  const GetDbSystemShapesDbSystemShape({
    required this.availableCoreCount,
    required this.availableCoreCountPerNode,
    required this.availableDataStorageInTbs,
    required this.availableDataStoragePerServerInTbs,
    required this.availableDbNodePerNodeInGbs,
    required this.availableDbNodeStorageInGbs,
    required this.availableMemoryInGbs,
    required this.availableMemoryPerNodeInGbs,
    required this.coreCountIncrement,
    required this.maxStorageCount,
    required this.maximumNodeCount,
    required this.minCoreCountPerNode,
    required this.minDataStorageInTbs,
    required this.minDbNodeStoragePerNodeInGbs,
    required this.minMemoryPerNodeInGbs,
    required this.minStorageCount,
    required this.minimumCoreCount,
    required this.minimumNodeCount,
    required this.name,
    required this.runtimeMinimumCoreCount,
    required this.shapeFamily,
    required this.shapeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableCoreCount': availableCoreCount,
      'availableCoreCountPerNode': availableCoreCountPerNode,
      'availableDataStorageInTbs': availableDataStorageInTbs,
      'availableDataStoragePerServerInTbs': availableDataStoragePerServerInTbs,
      'availableDbNodePerNodeInGbs': availableDbNodePerNodeInGbs,
      'availableDbNodeStorageInGbs': availableDbNodeStorageInGbs,
      'availableMemoryInGbs': availableMemoryInGbs,
      'availableMemoryPerNodeInGbs': availableMemoryPerNodeInGbs,
      'coreCountIncrement': coreCountIncrement,
      'maxStorageCount': maxStorageCount,
      'maximumNodeCount': maximumNodeCount,
      'minCoreCountPerNode': minCoreCountPerNode,
      'minDataStorageInTbs': minDataStorageInTbs,
      'minDbNodeStoragePerNodeInGbs': minDbNodeStoragePerNodeInGbs,
      'minMemoryPerNodeInGbs': minMemoryPerNodeInGbs,
      'minStorageCount': minStorageCount,
      'minimumCoreCount': minimumCoreCount,
      'minimumNodeCount': minimumNodeCount,
      'name': name,
      'runtimeMinimumCoreCount': runtimeMinimumCoreCount,
      'shapeFamily': shapeFamily,
      'shapeType': shapeType,
    };
  }

  factory GetDbSystemShapesDbSystemShape.fromMap(Map<String, dynamic> map) {
    return GetDbSystemShapesDbSystemShape(
      availableCoreCount: pulumi.Input.fromValue(map['availableCoreCount'] as int),
      availableCoreCountPerNode: pulumi.Input.fromValue(map['availableCoreCountPerNode'] as int),
      availableDataStorageInTbs: pulumi.Input.fromValue(map['availableDataStorageInTbs'] as int),
      availableDataStoragePerServerInTbs: pulumi.Input.fromValue(map['availableDataStoragePerServerInTbs'] as int),
      availableDbNodePerNodeInGbs: pulumi.Input.fromValue(map['availableDbNodePerNodeInGbs'] as int),
      availableDbNodeStorageInGbs: pulumi.Input.fromValue(map['availableDbNodeStorageInGbs'] as int),
      availableMemoryInGbs: pulumi.Input.fromValue(map['availableMemoryInGbs'] as int),
      availableMemoryPerNodeInGbs: pulumi.Input.fromValue(map['availableMemoryPerNodeInGbs'] as int),
      coreCountIncrement: pulumi.Input.fromValue(map['coreCountIncrement'] as int),
      maxStorageCount: pulumi.Input.fromValue(map['maxStorageCount'] as int),
      maximumNodeCount: pulumi.Input.fromValue(map['maximumNodeCount'] as int),
      minCoreCountPerNode: pulumi.Input.fromValue(map['minCoreCountPerNode'] as int),
      minDataStorageInTbs: pulumi.Input.fromValue(map['minDataStorageInTbs'] as int),
      minDbNodeStoragePerNodeInGbs: pulumi.Input.fromValue(map['minDbNodeStoragePerNodeInGbs'] as int),
      minMemoryPerNodeInGbs: pulumi.Input.fromValue(map['minMemoryPerNodeInGbs'] as int),
      minStorageCount: pulumi.Input.fromValue(map['minStorageCount'] as int),
      minimumCoreCount: pulumi.Input.fromValue(map['minimumCoreCount'] as int),
      minimumNodeCount: pulumi.Input.fromValue(map['minimumNodeCount'] as int),
      name: pulumi.Input.fromValue(map['name'] as String),
      runtimeMinimumCoreCount: pulumi.Input.fromValue(map['runtimeMinimumCoreCount'] as int),
      shapeFamily: pulumi.Input.fromValue(map['shapeFamily'] as String),
      shapeType: pulumi.Input.fromValue(map['shapeType'] as String),
    );
  }
}
