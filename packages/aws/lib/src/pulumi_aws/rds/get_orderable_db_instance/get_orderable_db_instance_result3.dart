// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getOrderableDbInstance.
class GetOrderableDbInstanceResult3 {
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

  GetOrderableDbInstanceResult3({
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
    final map = <String, dynamic>{};
    map['availabilityZoneGroup'] = availabilityZoneGroup;
    map['availabilityZones'] = availabilityZones;
    map['engine'] = engine;
    final engineLatestVersionValue = engineLatestVersion;
    if (engineLatestVersionValue != null) {
      map['engineLatestVersion'] = engineLatestVersionValue;
    }
    map['engineVersion'] = engineVersion;
    map['id'] = id;
    map['instanceClass'] = instanceClass;
    map['licenseModel'] = licenseModel;
    map['maxIopsPerDbInstance'] = maxIopsPerDbInstance;
    map['maxIopsPerGib'] = maxIopsPerGib;
    map['maxStorageSize'] = maxStorageSize;
    map['minIopsPerDbInstance'] = minIopsPerDbInstance;
    map['minIopsPerGib'] = minIopsPerGib;
    map['minStorageSize'] = minStorageSize;
    map['multiAzCapable'] = multiAzCapable;
    map['outpostCapable'] = outpostCapable;
    final preferredEngineVersionsValue = preferredEngineVersions;
    if (preferredEngineVersionsValue != null) {
      map['preferredEngineVersions'] = preferredEngineVersionsValue;
    }
    final preferredInstanceClassesValue = preferredInstanceClasses;
    if (preferredInstanceClassesValue != null) {
      map['preferredInstanceClasses'] = preferredInstanceClassesValue;
    }
    map['readReplicaCapable'] = readReplicaCapable;
    map['region'] = region;
    map['storageType'] = storageType;
    map['supportedEngineModes'] = supportedEngineModes;
    map['supportedNetworkTypes'] = supportedNetworkTypes;
    map['supportsClusters'] = supportsClusters;
    map['supportsEnhancedMonitoring'] = supportsEnhancedMonitoring;
    map['supportsGlobalDatabases'] = supportsGlobalDatabases;
    map['supportsIamDatabaseAuthentication'] =
        supportsIamDatabaseAuthentication;
    map['supportsIops'] = supportsIops;
    map['supportsKerberosAuthentication'] = supportsKerberosAuthentication;
    map['supportsMultiAz'] = supportsMultiAz;
    map['supportsPerformanceInsights'] = supportsPerformanceInsights;
    map['supportsStorageAutoscaling'] = supportsStorageAutoscaling;
    map['supportsStorageEncryption'] = supportsStorageEncryption;
    map['vpc'] = vpc;
    return map;
  }

  factory GetOrderableDbInstanceResult3.fromMap(Map<String, dynamic> map) {
    return GetOrderableDbInstanceResult3(
      availabilityZoneGroup: map['availabilityZoneGroup'] as String,
      availabilityZones: (map['availabilityZones'] as List).cast<String>(),
      engine: map['engine'] as String,
      engineLatestVersion: map['engineLatestVersion'] == null
          ? null
          : map['engineLatestVersion'] as bool,
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
      preferredEngineVersions: map['preferredEngineVersions'] == null
          ? null
          : (map['preferredEngineVersions'] as List).cast<String>(),
      preferredInstanceClasses: map['preferredInstanceClasses'] == null
          ? null
          : (map['preferredInstanceClasses'] as List).cast<String>(),
      readReplicaCapable: map['readReplicaCapable'] as bool,
      region: map['region'] as String,
      storageType: map['storageType'] as String,
      supportedEngineModes:
          (map['supportedEngineModes'] as List).cast<String>(),
      supportedNetworkTypes:
          (map['supportedNetworkTypes'] as List).cast<String>(),
      supportsClusters: map['supportsClusters'] as bool,
      supportsEnhancedMonitoring: map['supportsEnhancedMonitoring'] as bool,
      supportsGlobalDatabases: map['supportsGlobalDatabases'] as bool,
      supportsIamDatabaseAuthentication:
          map['supportsIamDatabaseAuthentication'] as bool,
      supportsIops: map['supportsIops'] as bool,
      supportsKerberosAuthentication:
          map['supportsKerberosAuthentication'] as bool,
      supportsMultiAz: map['supportsMultiAz'] as bool,
      supportsPerformanceInsights: map['supportsPerformanceInsights'] as bool,
      supportsStorageAutoscaling: map['supportsStorageAutoscaling'] as bool,
      supportsStorageEncryption: map['supportsStorageEncryption'] as bool,
      vpc: map['vpc'] as bool,
    );
  }
}
