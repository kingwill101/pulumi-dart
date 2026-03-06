// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getClassDetails.
class GetClassDetailsResult {
  /// The RDS edition of the instance. Valid values:
  /// * **Basic**: Basic Edition.
  /// * **HighAvailability**: High-availability Edition.
  /// * **AlwaysOn**: Cluster Edition.
  /// * **Finance**: Enterprise Edition.
  final String category;
  final String classCode;
  /// The specification family.
  final String classGroup;
  final String commodityCode;
  /// The number of CPU cores corresponding to the instance specification. Unit: pieces.
  final String cpu;
  /// The storage type of the instance. Valid values:
  /// * **local_ssd**: specifies to use local SSDs.
  /// * **cloud_ssd**: specifies to use standard SSDs.
  /// * **cloud_essd**: specifies to use enhanced SSDs (ESSDs).
  /// * **cloud_essd2**: specifies to use enhanced SSDs (ESSDs).
  /// * **cloud_essd3**: specifies to use enhanced SSDs (ESSDs).
  final String dbInstanceStorageType;
  final String engine;
  final String engineVersion;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The architecture of the instance type.
  final String instructionSetArch;
  /// The maximum number of connections.
  final String maxConnections;
  /// The maximum IO bandwidth corresponding to the instance specification. Unit: Mbps.
  final String maxIombps;
  /// The maximum IOPS of the instance.
  final String maxIops;
  /// The memory capacity that is supported by the instance type. Unit: GB.
  final String memoryClass;
  /// The fee that you must pay for the instance type. Unit: cent (RMB).
  final String referencePrice;

  /// Creates a new [GetClassDetailsResult].
  /// [category] The RDS edition of the instance. Valid values:
  /// [classCode] Required.
  /// [classGroup] The specification family.
  /// [commodityCode] Required.
  /// [cpu] The number of CPU cores corresponding to the instance specification. Unit: pieces.
  /// [dbInstanceStorageType] The storage type of the instance. Valid values:
  /// [engine] Required.
  /// [engineVersion] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instructionSetArch] The architecture of the instance type.
  /// [maxConnections] The maximum number of connections.
  /// [maxIombps] The maximum IO bandwidth corresponding to the instance specification. Unit: Mbps.
  /// [maxIops] The maximum IOPS of the instance.
  /// [memoryClass] The memory capacity that is supported by the instance type. Unit: GB.
  /// [referencePrice] The fee that you must pay for the instance type. Unit: cent (RMB).
  const GetClassDetailsResult({
    required this.category,
    required this.classCode,
    required this.classGroup,
    required this.commodityCode,
    required this.cpu,
    required this.dbInstanceStorageType,
    required this.engine,
    required this.engineVersion,
    required this.id,
    required this.instructionSetArch,
    required this.maxConnections,
    required this.maxIombps,
    required this.maxIops,
    required this.memoryClass,
    required this.referencePrice,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': category,
      'classCode': classCode,
      'classGroup': classGroup,
      'commodityCode': commodityCode,
      'cpu': cpu,
      'dbInstanceStorageType': dbInstanceStorageType,
      'engine': engine,
      'engineVersion': engineVersion,
      'id': id,
      'instructionSetArch': instructionSetArch,
      'maxConnections': maxConnections,
      'maxIombps': maxIombps,
      'maxIops': maxIops,
      'memoryClass': memoryClass,
      'referencePrice': referencePrice,
    };
  }

  factory GetClassDetailsResult.fromMap(Map<String, dynamic> map) {
    return GetClassDetailsResult(
      category: map['category'] as String,
      classCode: map['classCode'] as String,
      classGroup: map['classGroup'] as String,
      commodityCode: map['commodityCode'] as String,
      cpu: map['cpu'] as String,
      dbInstanceStorageType: map['dbInstanceStorageType'] as String,
      engine: map['engine'] as String,
      engineVersion: map['engineVersion'] as String,
      id: map['id'] as String,
      instructionSetArch: map['instructionSetArch'] as String,
      maxConnections: map['maxConnections'] as String,
      maxIombps: map['maxIombps'] as String,
      maxIops: map['maxIops'] as String,
      memoryClass: map['memoryClass'] as String,
      referencePrice: map['referencePrice'] as String,
    );
  }
}

