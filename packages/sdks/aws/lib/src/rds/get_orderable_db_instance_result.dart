// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getOrderableDbInstance.
class GetOrderableDbInstanceResult {
  final String availabilityZoneGroup;
  /// Availability zones where the instance is available.
  final List<String> availabilityZones;
  final String engine;
  final bool? engineLatestVersion;
  final String engineVersion;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String instanceClass;
  final String licenseModel;
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
  /// Whether a DB instance supports RDS on Outposts.
  final bool outpostCapable;
  final List<String>? preferredEngineVersions;
  final List<String>? preferredInstanceClasses;
  final bool readReplicaCapable;
  final String region;
  final String storageType;
  final List<String> supportedEngineModes;
  final List<String> supportedNetworkTypes;
  final bool supportsClusters;
  final bool supportsEnhancedMonitoring;
  final bool supportsGlobalDatabases;
  final bool supportsIamDatabaseAuthentication;
  final bool supportsIops;
  final bool supportsKerberosAuthentication;
  final bool supportsMultiAz;
  final bool supportsPerformanceInsights;
  final bool supportsStorageAutoscaling;
  final bool supportsStorageEncryption;
  final bool vpc;

  /// Creates a new [GetOrderableDbInstanceResult].
  /// [availabilityZoneGroup] Required.
  /// [availabilityZones] Availability zones where the instance is available.
  /// [engine] Required.
  /// [engineLatestVersion] Optional.
  /// [engineVersion] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceClass] Required.
  /// [licenseModel] Required.
  /// [maxIopsPerDbInstance] Maximum total provisioned IOPS for a DB instance.
  /// [maxIopsPerGib] Maximum provisioned IOPS per GiB for a DB instance.
  /// [maxStorageSize] Maximum storage size for a DB instance.
  /// [minIopsPerDbInstance] Minimum total provisioned IOPS for a DB instance.
  /// [minIopsPerGib] Minimum provisioned IOPS per GiB for a DB instance.
  /// [minStorageSize] Minimum storage size for a DB instance.
  /// [multiAzCapable] Whether a DB instance is Multi-AZ capable.
  /// [outpostCapable] Whether a DB instance supports RDS on Outposts.
  /// [preferredEngineVersions] Optional.
  /// [preferredInstanceClasses] Optional.
  /// [readReplicaCapable] Required.
  /// [region] Required.
  /// [storageType] Required.
  /// [supportedEngineModes] Required.
  /// [supportedNetworkTypes] Required.
  /// [supportsClusters] Required.
  /// [supportsEnhancedMonitoring] Required.
  /// [supportsGlobalDatabases] Required.
  /// [supportsIamDatabaseAuthentication] Required.
  /// [supportsIops] Required.
  /// [supportsKerberosAuthentication] Required.
  /// [supportsMultiAz] Required.
  /// [supportsPerformanceInsights] Required.
  /// [supportsStorageAutoscaling] Required.
  /// [supportsStorageEncryption] Required.
  /// [vpc] Required.
  const GetOrderableDbInstanceResult({
    required this.availabilityZoneGroup,
    required this.availabilityZones,
    required this.engine,
    this.engineLatestVersion,
    required this.engineVersion,
    required this.id,
    required this.instanceClass,
    required this.licenseModel,
    required this.maxIopsPerDbInstance,
    required this.maxIopsPerGib,
    required this.maxStorageSize,
    required this.minIopsPerDbInstance,
    required this.minIopsPerGib,
    required this.minStorageSize,
    required this.multiAzCapable,
    required this.outpostCapable,
    this.preferredEngineVersions,
    this.preferredInstanceClasses,
    required this.readReplicaCapable,
    required this.region,
    required this.storageType,
    required this.supportedEngineModes,
    required this.supportedNetworkTypes,
    required this.supportsClusters,
    required this.supportsEnhancedMonitoring,
    required this.supportsGlobalDatabases,
    required this.supportsIamDatabaseAuthentication,
    required this.supportsIops,
    required this.supportsKerberosAuthentication,
    required this.supportsMultiAz,
    required this.supportsPerformanceInsights,
    required this.supportsStorageAutoscaling,
    required this.supportsStorageEncryption,
    required this.vpc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZoneGroup': availabilityZoneGroup,
      'availabilityZones': availabilityZones,
      'engine': engine,
      'engineLatestVersion': ?engineLatestVersion,
      'engineVersion': engineVersion,
      'id': id,
      'instanceClass': instanceClass,
      'licenseModel': licenseModel,
      'maxIopsPerDbInstance': maxIopsPerDbInstance,
      'maxIopsPerGib': maxIopsPerGib,
      'maxStorageSize': maxStorageSize,
      'minIopsPerDbInstance': minIopsPerDbInstance,
      'minIopsPerGib': minIopsPerGib,
      'minStorageSize': minStorageSize,
      'multiAzCapable': multiAzCapable,
      'outpostCapable': outpostCapable,
      'preferredEngineVersions': ?preferredEngineVersions,
      'preferredInstanceClasses': ?preferredInstanceClasses,
      'readReplicaCapable': readReplicaCapable,
      'region': region,
      'storageType': storageType,
      'supportedEngineModes': supportedEngineModes,
      'supportedNetworkTypes': supportedNetworkTypes,
      'supportsClusters': supportsClusters,
      'supportsEnhancedMonitoring': supportsEnhancedMonitoring,
      'supportsGlobalDatabases': supportsGlobalDatabases,
      'supportsIamDatabaseAuthentication': supportsIamDatabaseAuthentication,
      'supportsIops': supportsIops,
      'supportsKerberosAuthentication': supportsKerberosAuthentication,
      'supportsMultiAz': supportsMultiAz,
      'supportsPerformanceInsights': supportsPerformanceInsights,
      'supportsStorageAutoscaling': supportsStorageAutoscaling,
      'supportsStorageEncryption': supportsStorageEncryption,
      'vpc': vpc,
    };
  }

  factory GetOrderableDbInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetOrderableDbInstanceResult(
      availabilityZoneGroup: map['availabilityZoneGroup'] as String,
      availabilityZones: (map['availabilityZones'] as List).cast<String>(),
      engine: map['engine'] as String,
      engineLatestVersion: (() { final guardedValue = map['engineLatestVersion']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      engineVersion: map['engineVersion'] as String,
      id: map['id'] as String,
      instanceClass: map['instanceClass'] as String,
      licenseModel: map['licenseModel'] as String,
      maxIopsPerDbInstance: map['maxIopsPerDbInstance'] as int,
      maxIopsPerGib: map['maxIopsPerGib'] as double,
      maxStorageSize: map['maxStorageSize'] as int,
      minIopsPerDbInstance: map['minIopsPerDbInstance'] as int,
      minIopsPerGib: map['minIopsPerGib'] as double,
      minStorageSize: map['minStorageSize'] as int,
      multiAzCapable: map['multiAzCapable'] as bool,
      outpostCapable: map['outpostCapable'] as bool,
      preferredEngineVersions: (() { final guardedValue = map['preferredEngineVersions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      preferredInstanceClasses: (() { final guardedValue = map['preferredInstanceClasses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      readReplicaCapable: map['readReplicaCapable'] as bool,
      region: map['region'] as String,
      storageType: map['storageType'] as String,
      supportedEngineModes: (map['supportedEngineModes'] as List).cast<String>(),
      supportedNetworkTypes: (map['supportedNetworkTypes'] as List).cast<String>(),
      supportsClusters: map['supportsClusters'] as bool,
      supportsEnhancedMonitoring: map['supportsEnhancedMonitoring'] as bool,
      supportsGlobalDatabases: map['supportsGlobalDatabases'] as bool,
      supportsIamDatabaseAuthentication: map['supportsIamDatabaseAuthentication'] as bool,
      supportsIops: map['supportsIops'] as bool,
      supportsKerberosAuthentication: map['supportsKerberosAuthentication'] as bool,
      supportsMultiAz: map['supportsMultiAz'] as bool,
      supportsPerformanceInsights: map['supportsPerformanceInsights'] as bool,
      supportsStorageAutoscaling: map['supportsStorageAutoscaling'] as bool,
      supportsStorageEncryption: map['supportsStorageEncryption'] as bool,
      vpc: map['vpc'] as bool,
    );
  }
}
