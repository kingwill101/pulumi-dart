// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDbSystemShapesDbSystemShape {
  /// The maximum number of CPU cores that can be enabled for the shape.
  final pulumi.Input<int> availableCoreCount;
  /// The maximum number of CPU cores per DB node that can be enabled for the shape.
  final pulumi.Input<int> availableCoreCountPerNode;
  /// The maximum amount of data storage, in terabytes (TB), that can be enabled for the shape.
  final pulumi.Input<int> availableDataStorageInTbs;
  /// The maximum amount of data storage, in terabytes (TB), that's available per storage server for the shape.
  final pulumi.Input<int> availableDataStoragePerServerInTbs;
  /// The maximum amount of DB node storage, in gigabytes (GB), that's available per DB node for the shape.
  final pulumi.Input<int> availableDbNodePerNodeInGbs;
  /// The maximum amount of DB node storage, in gigabytes (GB), that can be enabled for the shape.
  final pulumi.Input<int> availableDbNodeStorageInGbs;
  /// The maximum amount of memory, in gigabytes (GB), that can be enabled for the shape.
  final pulumi.Input<int> availableMemoryInGbs;
  /// The maximum amount of memory, in gigabytes (GB), that's available per DB node for the shape.
  final pulumi.Input<int> availableMemoryPerNodeInGbs;
  /// The discrete number by which the CPU core count for the shape can be increased or decreased.
  final pulumi.Input<int> coreCountIncrement;
  /// The maximum number of Exadata storage servers available for the shape.
  final pulumi.Input<int> maxStorageCount;
  /// The maximum number of compute servers available for the shape.
  final pulumi.Input<int> maximumNodeCount;
  /// The minimum number of CPU cores that can be enabled per node for the shape.
  final pulumi.Input<int> minCoreCountPerNode;
  /// The minimum amount of data storage, in terabytes (TB), that must be allocated for the shape.
  final pulumi.Input<int> minDataStorageInTbs;
  /// The minimum amount of DB node storage, in gigabytes (GB), that must be allocated per DB node for the shape.
  final pulumi.Input<int> minDbNodeStoragePerNodeInGbs;
  /// The minimum amount of memory, in gigabytes (GB), that must be allocated per DB node for the shape.
  final pulumi.Input<int> minMemoryPerNodeInGbs;
  /// The minimum number of Exadata storage servers available for the shape.
  final pulumi.Input<int> minStorageCount;
  /// The minimum number of CPU cores that can be enabled for the shape.
  final pulumi.Input<int> minimumCoreCount;
  /// The minimum number of compute servers available for the shape.
  final pulumi.Input<int> minimumNodeCount;
  /// The name of the shape.
  final pulumi.Input<String> name;
  /// The runtime minimum number of CPU cores that can be enabled for the shape.
  final pulumi.Input<int> runtimeMinimumCoreCount;
  /// The family of the shape.
  final pulumi.Input<String> shapeFamily;
  /// The shape type, determined by the CPU hardware.
  final pulumi.Input<String> shapeType;

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
      availableCoreCount: (map['availableCoreCount'] as int).input(),
      availableCoreCountPerNode: (map['availableCoreCountPerNode'] as int).input(),
      availableDataStorageInTbs: (map['availableDataStorageInTbs'] as int).input(),
      availableDataStoragePerServerInTbs: (map['availableDataStoragePerServerInTbs'] as int).input(),
      availableDbNodePerNodeInGbs: (map['availableDbNodePerNodeInGbs'] as int).input(),
      availableDbNodeStorageInGbs: (map['availableDbNodeStorageInGbs'] as int).input(),
      availableMemoryInGbs: (map['availableMemoryInGbs'] as int).input(),
      availableMemoryPerNodeInGbs: (map['availableMemoryPerNodeInGbs'] as int).input(),
      coreCountIncrement: (map['coreCountIncrement'] as int).input(),
      maxStorageCount: (map['maxStorageCount'] as int).input(),
      maximumNodeCount: (map['maximumNodeCount'] as int).input(),
      minCoreCountPerNode: (map['minCoreCountPerNode'] as int).input(),
      minDataStorageInTbs: (map['minDataStorageInTbs'] as int).input(),
      minDbNodeStoragePerNodeInGbs: (map['minDbNodeStoragePerNodeInGbs'] as int).input(),
      minMemoryPerNodeInGbs: (map['minMemoryPerNodeInGbs'] as int).input(),
      minStorageCount: (map['minStorageCount'] as int).input(),
      minimumCoreCount: (map['minimumCoreCount'] as int).input(),
      minimumNodeCount: (map['minimumNodeCount'] as int).input(),
      name: (map['name'] as String).input(),
      runtimeMinimumCoreCount: (map['runtimeMinimumCoreCount'] as int).input(),
      shapeFamily: (map['shapeFamily'] as String).input(),
      shapeType: (map['shapeType'] as String).input(),
    );
  }
}

