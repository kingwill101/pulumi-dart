// ignore_for_file: unused_element, unnecessary_cast

class GetDbSystemShapesDbSystemShape {
  /// The maximum number of CPU cores that can be enabled for the shape.
  final int availableCoreCount;

  /// The maximum number of CPU cores per DB node that can be enabled for the shape.
  final int availableCoreCountPerNode;

  /// The maximum amount of data storage, in terabytes (TB), that can be enabled for the shape.
  final int availableDataStorageInTbs;

  /// The maximum amount of data storage, in terabytes (TB), that's available per storage server for the shape.
  final int availableDataStoragePerServerInTbs;

  /// The maximum amount of DB node storage, in gigabytes (GB), that's available per DB node for the shape.
  final int availableDbNodePerNodeInGbs;

  /// The maximum amount of DB node storage, in gigabytes (GB), that can be enabled for the shape.
  final int availableDbNodeStorageInGbs;

  /// The maximum amount of memory, in gigabytes (GB), that can be enabled for the shape.
  final int availableMemoryInGbs;

  /// The maximum amount of memory, in gigabytes (GB), that's available per DB node for the shape.
  final int availableMemoryPerNodeInGbs;

  /// The discrete number by which the CPU core count for the shape can be increased or decreased.
  final int coreCountIncrement;

  /// The maximum number of Exadata storage servers available for the shape.
  final int maxStorageCount;

  /// The maximum number of compute servers available for the shape.
  final int maximumNodeCount;

  /// The minimum number of CPU cores that can be enabled per node for the shape.
  final int minCoreCountPerNode;

  /// The minimum amount of data storage, in terabytes (TB), that must be allocated for the shape.
  final int minDataStorageInTbs;

  /// The minimum amount of DB node storage, in gigabytes (GB), that must be allocated per DB node for the shape.
  final int minDbNodeStoragePerNodeInGbs;

  /// The minimum amount of memory, in gigabytes (GB), that must be allocated per DB node for the shape.
  final int minMemoryPerNodeInGbs;

  /// The minimum number of Exadata storage servers available for the shape.
  final int minStorageCount;

  /// The minimum number of CPU cores that can be enabled for the shape.
  final int minimumCoreCount;

  /// The minimum number of compute servers available for the shape.
  final int minimumNodeCount;

  /// The name of the shape.
  final String name;

  /// The runtime minimum number of CPU cores that can be enabled for the shape.
  final int runtimeMinimumCoreCount;

  /// The family of the shape.
  final String shapeFamily;

  /// The shape type, determined by the CPU hardware.
  final String shapeType;

  /// Creates a new [GetDbSystemShapesDbSystemShape].
  /// [availableCoreCount] The maximum number of CPU cores that can be enabled for the shape.
  /// [availableCoreCountPerNode] The maximum number of CPU cores per DB node that can be enabled for the shape.
  /// [availableDataStorageInTbs] The maximum amount of data storage, in terabytes (TB), that can be enabled for the shape.
  /// [availableDataStoragePerServerInTbs] The maximum amount of data storage, in terabytes (TB), that's available per storage server for the shape.
  /// [availableDbNodePerNodeInGbs] The maximum amount of DB node storage, in gigabytes (GB), that's available per DB node for the shape.
  /// [availableDbNodeStorageInGbs] The maximum amount of DB node storage, in gigabytes (GB), that can be enabled for the shape.
  /// [availableMemoryInGbs] The maximum amount of memory, in gigabytes (GB), that can be enabled for the shape.
  /// [availableMemoryPerNodeInGbs] The maximum amount of memory, in gigabytes (GB), that's available per DB node for the shape.
  /// [coreCountIncrement] The discrete number by which the CPU core count for the shape can be increased or decreased.
  /// [maxStorageCount] The maximum number of Exadata storage servers available for the shape.
  /// [maximumNodeCount] The maximum number of compute servers available for the shape.
  /// [minCoreCountPerNode] The minimum number of CPU cores that can be enabled per node for the shape.
  /// [minDataStorageInTbs] The minimum amount of data storage, in terabytes (TB), that must be allocated for the shape.
  /// [minDbNodeStoragePerNodeInGbs] The minimum amount of DB node storage, in gigabytes (GB), that must be allocated per DB node for the shape.
  /// [minMemoryPerNodeInGbs] The minimum amount of memory, in gigabytes (GB), that must be allocated per DB node for the shape.
  /// [minStorageCount] The minimum number of Exadata storage servers available for the shape.
  /// [minimumCoreCount] The minimum number of CPU cores that can be enabled for the shape.
  /// [minimumNodeCount] The minimum number of compute servers available for the shape.
  /// [name] The name of the shape.
  /// [runtimeMinimumCoreCount] The runtime minimum number of CPU cores that can be enabled for the shape.
  /// [shapeFamily] The family of the shape.
  /// [shapeType] The shape type, determined by the CPU hardware.
  GetDbSystemShapesDbSystemShape({
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
      availableCoreCount: map['availableCoreCount'] as int,
      availableCoreCountPerNode: map['availableCoreCountPerNode'] as int,
      availableDataStorageInTbs: map['availableDataStorageInTbs'] as int,
      availableDataStoragePerServerInTbs:
          map['availableDataStoragePerServerInTbs'] as int,
      availableDbNodePerNodeInGbs: map['availableDbNodePerNodeInGbs'] as int,
      availableDbNodeStorageInGbs: map['availableDbNodeStorageInGbs'] as int,
      availableMemoryInGbs: map['availableMemoryInGbs'] as int,
      availableMemoryPerNodeInGbs: map['availableMemoryPerNodeInGbs'] as int,
      coreCountIncrement: map['coreCountIncrement'] as int,
      maxStorageCount: map['maxStorageCount'] as int,
      maximumNodeCount: map['maximumNodeCount'] as int,
      minCoreCountPerNode: map['minCoreCountPerNode'] as int,
      minDataStorageInTbs: map['minDataStorageInTbs'] as int,
      minDbNodeStoragePerNodeInGbs: map['minDbNodeStoragePerNodeInGbs'] as int,
      minMemoryPerNodeInGbs: map['minMemoryPerNodeInGbs'] as int,
      minStorageCount: map['minStorageCount'] as int,
      minimumCoreCount: map['minimumCoreCount'] as int,
      minimumNodeCount: map['minimumNodeCount'] as int,
      name: map['name'] as String,
      runtimeMinimumCoreCount: map['runtimeMinimumCoreCount'] as int,
      shapeFamily: map['shapeFamily'] as String,
      shapeType: map['shapeType'] as String,
    );
  }
}
