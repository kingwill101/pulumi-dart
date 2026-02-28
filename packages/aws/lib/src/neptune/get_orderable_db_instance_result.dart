// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getOrderableDbInstance.
class GetOrderableDbInstanceResult {
  /// Availability zones where the instance is available.
  final List<String> availabilityZones;
  final String? engine;
  final String engineVersion;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String instanceClass;
  final String? licenseModel;
  /// Maximum total provisioned IOPS for a DB instance.
  final int maxIopsPerDbInstance;
  /// Maximum provisioned IOPS per GiB for a DB instance.
  final double maxIopsPerGib;
  /// Maximum storage size for a DB instance.
  final int maxStorageSize;
  /// Minimum total provisioned IOPS for a DB instance.
  final int minIopsPerDbInstance;
  /// Minimum provisioned IOPS per GiB for a DB instance.
  final double minIopsPerGib;
  /// Minimum storage size for a DB instance.
  final int minStorageSize;
  /// Whether a DB instance is Multi-AZ capable.
  final bool multiAzCapable;
  final List<String>? preferredInstanceClasses;
  /// Whether a DB instance can have a read replica.
  final bool readReplicaCapable;
  final String region;
  /// Storage type for a DB instance.
  final String storageType;
  /// Whether a DB instance supports Enhanced Monitoring at intervals from 1 to 60 seconds.
  final bool supportsEnhancedMonitoring;
  /// Whether a DB instance supports IAM database authentication.
  final bool supportsIamDatabaseAuthentication;
  /// Whether a DB instance supports provisioned IOPS.
  final bool supportsIops;
  /// Whether a DB instance supports Performance Insights.
  final bool supportsPerformanceInsights;
  /// Whether a DB instance supports encrypted storage.
  final bool supportsStorageEncryption;
  final bool vpc;

  /// Creates a new [GetOrderableDbInstanceResult].
  /// [availabilityZones] Availability zones where the instance is available.
  /// [engine] Optional.
  /// [engineVersion] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceClass] Required.
  /// [licenseModel] Optional.
  /// [maxIopsPerDbInstance] Maximum total provisioned IOPS for a DB instance.
  /// [maxIopsPerGib] Maximum provisioned IOPS per GiB for a DB instance.
  /// [maxStorageSize] Maximum storage size for a DB instance.
  /// [minIopsPerDbInstance] Minimum total provisioned IOPS for a DB instance.
  /// [minIopsPerGib] Minimum provisioned IOPS per GiB for a DB instance.
  /// [minStorageSize] Minimum storage size for a DB instance.
  /// [multiAzCapable] Whether a DB instance is Multi-AZ capable.
  /// [preferredInstanceClasses] Optional.
  /// [readReplicaCapable] Whether a DB instance can have a read replica.
  /// [region] Required.
  /// [storageType] Storage type for a DB instance.
  /// [supportsEnhancedMonitoring] Whether a DB instance supports Enhanced Monitoring at intervals from 1 to 60 seconds.
  /// [supportsIamDatabaseAuthentication] Whether a DB instance supports IAM database authentication.
  /// [supportsIops] Whether a DB instance supports provisioned IOPS.
  /// [supportsPerformanceInsights] Whether a DB instance supports Performance Insights.
  /// [supportsStorageEncryption] Whether a DB instance supports encrypted storage.
  /// [vpc] Required.
  GetOrderableDbInstanceResult({
    required this.availabilityZones,
    this.engine,
    required this.engineVersion,
    required this.id,
    required this.instanceClass,
    this.licenseModel,
    required this.maxIopsPerDbInstance,
    required this.maxIopsPerGib,
    required this.maxStorageSize,
    required this.minIopsPerDbInstance,
    required this.minIopsPerGib,
    required this.minStorageSize,
    required this.multiAzCapable,
    this.preferredInstanceClasses,
    required this.readReplicaCapable,
    required this.region,
    required this.storageType,
    required this.supportsEnhancedMonitoring,
    required this.supportsIamDatabaseAuthentication,
    required this.supportsIops,
    required this.supportsPerformanceInsights,
    required this.supportsStorageEncryption,
    required this.vpc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZones': availabilityZones,
      'engine': ?engine,
      'engineVersion': engineVersion,
      'id': id,
      'instanceClass': instanceClass,
      'licenseModel': ?licenseModel,
      'maxIopsPerDbInstance': maxIopsPerDbInstance,
      'maxIopsPerGib': maxIopsPerGib,
      'maxStorageSize': maxStorageSize,
      'minIopsPerDbInstance': minIopsPerDbInstance,
      'minIopsPerGib': minIopsPerGib,
      'minStorageSize': minStorageSize,
      'multiAzCapable': multiAzCapable,
      'preferredInstanceClasses': ?preferredInstanceClasses,
      'readReplicaCapable': readReplicaCapable,
      'region': region,
      'storageType': storageType,
      'supportsEnhancedMonitoring': supportsEnhancedMonitoring,
      'supportsIamDatabaseAuthentication': supportsIamDatabaseAuthentication,
      'supportsIops': supportsIops,
      'supportsPerformanceInsights': supportsPerformanceInsights,
      'supportsStorageEncryption': supportsStorageEncryption,
      'vpc': vpc,
    };
  }

  factory GetOrderableDbInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetOrderableDbInstanceResult(
      availabilityZones: (map['availabilityZones'] as List).cast<String>(),
      engine: map['engine'] == null ? null : map['engine'] as String,
      engineVersion: map['engineVersion'] as String,
      id: map['id'] as String,
      instanceClass: map['instanceClass'] as String,
      licenseModel: map['licenseModel'] == null ? null : map['licenseModel'] as String,
      maxIopsPerDbInstance: map['maxIopsPerDbInstance'] as int,
      maxIopsPerGib: map['maxIopsPerGib'] as double,
      maxStorageSize: map['maxStorageSize'] as int,
      minIopsPerDbInstance: map['minIopsPerDbInstance'] as int,
      minIopsPerGib: map['minIopsPerGib'] as double,
      minStorageSize: map['minStorageSize'] as int,
      multiAzCapable: map['multiAzCapable'] as bool,
      preferredInstanceClasses: map['preferredInstanceClasses'] == null ? null : (map['preferredInstanceClasses'] as List).cast<String>(),
      readReplicaCapable: map['readReplicaCapable'] as bool,
      region: map['region'] as String,
      storageType: map['storageType'] as String,
      supportsEnhancedMonitoring: map['supportsEnhancedMonitoring'] as bool,
      supportsIamDatabaseAuthentication: map['supportsIamDatabaseAuthentication'] as bool,
      supportsIops: map['supportsIops'] as bool,
      supportsPerformanceInsights: map['supportsPerformanceInsights'] as bool,
      supportsStorageEncryption: map['supportsStorageEncryption'] as bool,
      vpc: map['vpc'] as bool,
    );
  }
}

