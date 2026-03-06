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

