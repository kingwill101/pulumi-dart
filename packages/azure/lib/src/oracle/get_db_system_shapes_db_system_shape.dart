// ignore_for_file: unused_element, unnecessary_cast


class GetDbSystemShapesDbSystemShape {
  /// Indicates if the shape supports database and storage server types.
  final bool areServerTypesSupported;
  /// The maximum number of CPU cores that can be enabled on the DB system for this shape.
  final int availableCoreCount;
  /// The maximum number of CPU cores per database node that can be enabled for this shape. Only applicable to the flex Exadata shape, ExaCC Elastic shapes and VM Flex shapes.
  final int availableCoreCountPerNode;
  /// The maximum data storage that can be enabled for this shape.
  final int availableDataStorageInTbs;
  /// The maximum data storage available per storage server for this shape. Only applicable to ExaCC Elastic shapes.
  final int availableDataStoragePerServerInTbs;
  /// The maximum DB Node storage available per database node for this shape. Only applicable to ExaCC Elastic shapes.
  final int availableDbNodePerNodeInGbs;
  /// The maximum DB Node storage that can be enabled for this shape.
  final int availableDbNodeStorageInGbs;
  /// The maximum memory that can be enabled for this shape.
  final int availableMemoryInGbs;
  /// The maximum memory available per database node for this shape. Only applicable to ExaCC Elastic shapes.
  final int availableMemoryPerNodeInGbs;
  /// The compute model of the Exadata Infrastructure.
  final String computeModel;
  /// The discrete number by which the CPU core count for this shape can be increased or decreased.
  final int coreCountIncrement;
  /// The display name of the shape used for the DB system.
  final String displayName;
  /// The maximum number of compute servers available for this shape.
  final int maximumNodeCount;
  /// The maximum number of Exadata storage servers available for the Exadata infrastructure.
  final int maximumStorageCount;
  /// The minimum number of CPU cores that can be enabled on the DB system for this shape.
  final int minimumCoreCount;
  /// The minimum number of CPU cores that can be enabled per node for this shape.
  final int minimumCoreCountPerNode;
  /// The minimum data storage that need be allocated for this shape.
  final int minimumDataStorageInTbs;
  /// The minimum DB Node storage that need be allocated per node for this shape.
  final int minimumDbNodeStoragePerNodeInGbs;
  /// The minimum memory that need be allocated per node for this shape.
  final int minimumMemoryPerNodeInGbs;
  /// The minimum number of compute servers available for this shape.
  final int minimumNodeCount;
  /// The minimum number of Exadata storage servers available for the Exadata infrastructure.
  final int minimumStorageCount;
  /// The runtime minimum number of compute servers available for this shape.
  final int runtimeMinimumCoreCount;
  /// The family of the shape used for the DB system.
  final String shapeFamily;

  /// Creates a new [GetDbSystemShapesDbSystemShape].
  /// [areServerTypesSupported] Indicates if the shape supports database and storage server types.
  /// [availableCoreCount] The maximum number of CPU cores that can be enabled on the DB system for this shape.
  /// [availableCoreCountPerNode] The maximum number of CPU cores per database node that can be enabled for this shape. Only applicable to the flex Exadata shape, ExaCC Elastic shapes and VM Flex shapes.
  /// [availableDataStorageInTbs] The maximum data storage that can be enabled for this shape.
  /// [availableDataStoragePerServerInTbs] The maximum data storage available per storage server for this shape. Only applicable to ExaCC Elastic shapes.
  /// [availableDbNodePerNodeInGbs] The maximum DB Node storage available per database node for this shape. Only applicable to ExaCC Elastic shapes.
  /// [availableDbNodeStorageInGbs] The maximum DB Node storage that can be enabled for this shape.
  /// [availableMemoryInGbs] The maximum memory that can be enabled for this shape.
  /// [availableMemoryPerNodeInGbs] The maximum memory available per database node for this shape. Only applicable to ExaCC Elastic shapes.
  /// [computeModel] The compute model of the Exadata Infrastructure.
  /// [coreCountIncrement] The discrete number by which the CPU core count for this shape can be increased or decreased.
  /// [displayName] The display name of the shape used for the DB system.
  /// [maximumNodeCount] The maximum number of compute servers available for this shape.
  /// [maximumStorageCount] The maximum number of Exadata storage servers available for the Exadata infrastructure.
  /// [minimumCoreCount] The minimum number of CPU cores that can be enabled on the DB system for this shape.
  /// [minimumCoreCountPerNode] The minimum number of CPU cores that can be enabled per node for this shape.
  /// [minimumDataStorageInTbs] The minimum data storage that need be allocated for this shape.
  /// [minimumDbNodeStoragePerNodeInGbs] The minimum DB Node storage that need be allocated per node for this shape.
  /// [minimumMemoryPerNodeInGbs] The minimum memory that need be allocated per node for this shape.
  /// [minimumNodeCount] The minimum number of compute servers available for this shape.
  /// [minimumStorageCount] The minimum number of Exadata storage servers available for the Exadata infrastructure.
  /// [runtimeMinimumCoreCount] The runtime minimum number of compute servers available for this shape.
  /// [shapeFamily] The family of the shape used for the DB system.
  GetDbSystemShapesDbSystemShape({
    required this.areServerTypesSupported,
    required this.availableCoreCount,
    required this.availableCoreCountPerNode,
    required this.availableDataStorageInTbs,
    required this.availableDataStoragePerServerInTbs,
    required this.availableDbNodePerNodeInGbs,
    required this.availableDbNodeStorageInGbs,
    required this.availableMemoryInGbs,
    required this.availableMemoryPerNodeInGbs,
    required this.computeModel,
    required this.coreCountIncrement,
    required this.displayName,
    required this.maximumNodeCount,
    required this.maximumStorageCount,
    required this.minimumCoreCount,
    required this.minimumCoreCountPerNode,
    required this.minimumDataStorageInTbs,
    required this.minimumDbNodeStoragePerNodeInGbs,
    required this.minimumMemoryPerNodeInGbs,
    required this.minimumNodeCount,
    required this.minimumStorageCount,
    required this.runtimeMinimumCoreCount,
    required this.shapeFamily,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'areServerTypesSupported': areServerTypesSupported,
      'availableCoreCount': availableCoreCount,
      'availableCoreCountPerNode': availableCoreCountPerNode,
      'availableDataStorageInTbs': availableDataStorageInTbs,
      'availableDataStoragePerServerInTbs': availableDataStoragePerServerInTbs,
      'availableDbNodePerNodeInGbs': availableDbNodePerNodeInGbs,
      'availableDbNodeStorageInGbs': availableDbNodeStorageInGbs,
      'availableMemoryInGbs': availableMemoryInGbs,
      'availableMemoryPerNodeInGbs': availableMemoryPerNodeInGbs,
      'computeModel': computeModel,
      'coreCountIncrement': coreCountIncrement,
      'displayName': displayName,
      'maximumNodeCount': maximumNodeCount,
      'maximumStorageCount': maximumStorageCount,
      'minimumCoreCount': minimumCoreCount,
      'minimumCoreCountPerNode': minimumCoreCountPerNode,
      'minimumDataStorageInTbs': minimumDataStorageInTbs,
      'minimumDbNodeStoragePerNodeInGbs': minimumDbNodeStoragePerNodeInGbs,
      'minimumMemoryPerNodeInGbs': minimumMemoryPerNodeInGbs,
      'minimumNodeCount': minimumNodeCount,
      'minimumStorageCount': minimumStorageCount,
      'runtimeMinimumCoreCount': runtimeMinimumCoreCount,
      'shapeFamily': shapeFamily,
    };
  }

  factory GetDbSystemShapesDbSystemShape.fromMap(Map<String, dynamic> map) {
    return GetDbSystemShapesDbSystemShape(
      areServerTypesSupported: map['areServerTypesSupported'] as bool,
      availableCoreCount: map['availableCoreCount'] as int,
      availableCoreCountPerNode: map['availableCoreCountPerNode'] as int,
      availableDataStorageInTbs: map['availableDataStorageInTbs'] as int,
      availableDataStoragePerServerInTbs: map['availableDataStoragePerServerInTbs'] as int,
      availableDbNodePerNodeInGbs: map['availableDbNodePerNodeInGbs'] as int,
      availableDbNodeStorageInGbs: map['availableDbNodeStorageInGbs'] as int,
      availableMemoryInGbs: map['availableMemoryInGbs'] as int,
      availableMemoryPerNodeInGbs: map['availableMemoryPerNodeInGbs'] as int,
      computeModel: map['computeModel'] as String,
      coreCountIncrement: map['coreCountIncrement'] as int,
      displayName: map['displayName'] as String,
      maximumNodeCount: map['maximumNodeCount'] as int,
      maximumStorageCount: map['maximumStorageCount'] as int,
      minimumCoreCount: map['minimumCoreCount'] as int,
      minimumCoreCountPerNode: map['minimumCoreCountPerNode'] as int,
      minimumDataStorageInTbs: map['minimumDataStorageInTbs'] as int,
      minimumDbNodeStoragePerNodeInGbs: map['minimumDbNodeStoragePerNodeInGbs'] as int,
      minimumMemoryPerNodeInGbs: map['minimumMemoryPerNodeInGbs'] as int,
      minimumNodeCount: map['minimumNodeCount'] as int,
      minimumStorageCount: map['minimumStorageCount'] as int,
      runtimeMinimumCoreCount: map['runtimeMinimumCoreCount'] as int,
      shapeFamily: map['shapeFamily'] as String,
    );
  }
}

