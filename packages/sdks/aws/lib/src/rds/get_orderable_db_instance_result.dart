// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getOrderableDbInstance.
class GetOrderableDbInstanceResult {
  final String? availabilityZoneGroup;
  /// Availability zones where the instance is available.
  final List<String>? availabilityZones;
  final String? engine;
  final bool? engineLatestVersion;
  final String? engineVersion;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? instanceClass;
  final String? licenseModel;
  /// Maximum total provisioned IOPS for a DB instance.
  final int? maxIopsPerDbInstance;
  /// Maximum provisioned IOPS per GiB for a DB instance.
  final double? maxIopsPerGib;
  /// Maximum storage size for a DB instance.
  final int? maxStorageSize;
  /// Minimum total provisioned IOPS for a DB instance.
  final int? minIopsPerDbInstance;
  /// Minimum provisioned IOPS per GiB for a DB instance.
  final double? minIopsPerGib;
  /// Minimum storage size for a DB instance.
  final int? minStorageSize;
  /// Whether a DB instance is Multi-AZ capable.
  final bool? multiAzCapable;
  /// Whether a DB instance supports RDS on Outposts.
  final bool? outpostCapable;
  final List<String>? preferredEngineVersions;
  final List<String>? preferredInstanceClasses;
  final bool? readReplicaCapable;
  final String? region;
  final String? storageType;
  final List<String>? supportedEngineModes;
  final List<String>? supportedNetworkTypes;
  final bool? supportsClusters;
  final bool? supportsEnhancedMonitoring;
  final bool? supportsGlobalDatabases;
  final bool? supportsIamDatabaseAuthentication;
  final bool? supportsIops;
  final bool? supportsKerberosAuthentication;
  final bool? supportsMultiAz;
  final bool? supportsPerformanceInsights;
  final bool? supportsStorageAutoscaling;
  final bool? supportsStorageEncryption;
  final bool? vpc;

  /// Creates a new [GetOrderableDbInstanceResult].
  /// [availabilityZoneGroup] Optional.
  /// [availabilityZones] Availability zones where the instance is available.
  /// [engine] Optional.
  /// [engineLatestVersion] Optional.
  /// [engineVersion] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceClass] Optional.
  /// [licenseModel] Optional.
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
  /// [readReplicaCapable] Optional.
  /// [region] Optional.
  /// [storageType] Optional.
  /// [supportedEngineModes] Optional.
  /// [supportedNetworkTypes] Optional.
  /// [supportsClusters] Optional.
  /// [supportsEnhancedMonitoring] Optional.
  /// [supportsGlobalDatabases] Optional.
  /// [supportsIamDatabaseAuthentication] Optional.
  /// [supportsIops] Optional.
  /// [supportsKerberosAuthentication] Optional.
  /// [supportsMultiAz] Optional.
  /// [supportsPerformanceInsights] Optional.
  /// [supportsStorageAutoscaling] Optional.
  /// [supportsStorageEncryption] Optional.
  /// [vpc] Optional.
  const GetOrderableDbInstanceResult({
    this.availabilityZoneGroup,
    this.availabilityZones,
    this.engine,
    this.engineLatestVersion,
    this.engineVersion,
    this.id,
    this.instanceClass,
    this.licenseModel,
    this.maxIopsPerDbInstance,
    this.maxIopsPerGib,
    this.maxStorageSize,
    this.minIopsPerDbInstance,
    this.minIopsPerGib,
    this.minStorageSize,
    this.multiAzCapable,
    this.outpostCapable,
    this.preferredEngineVersions,
    this.preferredInstanceClasses,
    this.readReplicaCapable,
    this.region,
    this.storageType,
    this.supportedEngineModes,
    this.supportedNetworkTypes,
    this.supportsClusters,
    this.supportsEnhancedMonitoring,
    this.supportsGlobalDatabases,
    this.supportsIamDatabaseAuthentication,
    this.supportsIops,
    this.supportsKerberosAuthentication,
    this.supportsMultiAz,
    this.supportsPerformanceInsights,
    this.supportsStorageAutoscaling,
    this.supportsStorageEncryption,
    this.vpc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZoneGroup': ?availabilityZoneGroup,
      'availabilityZones': ?availabilityZones,
      'engine': ?engine,
      'engineLatestVersion': ?engineLatestVersion,
      'engineVersion': ?engineVersion,
      'id': ?id,
      'instanceClass': ?instanceClass,
      'licenseModel': ?licenseModel,
      'maxIopsPerDbInstance': ?maxIopsPerDbInstance,
      'maxIopsPerGib': ?maxIopsPerGib,
      'maxStorageSize': ?maxStorageSize,
      'minIopsPerDbInstance': ?minIopsPerDbInstance,
      'minIopsPerGib': ?minIopsPerGib,
      'minStorageSize': ?minStorageSize,
      'multiAzCapable': ?multiAzCapable,
      'outpostCapable': ?outpostCapable,
      'preferredEngineVersions': ?preferredEngineVersions,
      'preferredInstanceClasses': ?preferredInstanceClasses,
      'readReplicaCapable': ?readReplicaCapable,
      'region': ?region,
      'storageType': ?storageType,
      'supportedEngineModes': ?supportedEngineModes,
      'supportedNetworkTypes': ?supportedNetworkTypes,
      'supportsClusters': ?supportsClusters,
      'supportsEnhancedMonitoring': ?supportsEnhancedMonitoring,
      'supportsGlobalDatabases': ?supportsGlobalDatabases,
      'supportsIamDatabaseAuthentication': ?supportsIamDatabaseAuthentication,
      'supportsIops': ?supportsIops,
      'supportsKerberosAuthentication': ?supportsKerberosAuthentication,
      'supportsMultiAz': ?supportsMultiAz,
      'supportsPerformanceInsights': ?supportsPerformanceInsights,
      'supportsStorageAutoscaling': ?supportsStorageAutoscaling,
      'supportsStorageEncryption': ?supportsStorageEncryption,
      'vpc': ?vpc,
    };
  }

  factory GetOrderableDbInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetOrderableDbInstanceResult(
      availabilityZoneGroup: (() { final guardedValue = map['availabilityZoneGroup']; if (guardedValue == null) return null; return guardedValue as String; })(),
      availabilityZones: (() { final guardedValue = map['availabilityZones']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      engine: (() { final guardedValue = map['engine']; if (guardedValue == null) return null; return guardedValue as String; })(),
      engineLatestVersion: (() { final guardedValue = map['engineLatestVersion']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      engineVersion: (() { final guardedValue = map['engineVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceClass: (() { final guardedValue = map['instanceClass']; if (guardedValue == null) return null; return guardedValue as String; })(),
      licenseModel: (() { final guardedValue = map['licenseModel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxIopsPerDbInstance: (() { final guardedValue = map['maxIopsPerDbInstance']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      maxIopsPerGib: (() { final guardedValue = map['maxIopsPerGib']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      maxStorageSize: (() { final guardedValue = map['maxStorageSize']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      minIopsPerDbInstance: (() { final guardedValue = map['minIopsPerDbInstance']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      minIopsPerGib: (() { final guardedValue = map['minIopsPerGib']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      minStorageSize: (() { final guardedValue = map['minStorageSize']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      multiAzCapable: (() { final guardedValue = map['multiAzCapable']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      outpostCapable: (() { final guardedValue = map['outpostCapable']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      preferredEngineVersions: (() { final guardedValue = map['preferredEngineVersions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      preferredInstanceClasses: (() { final guardedValue = map['preferredInstanceClasses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      readReplicaCapable: (() { final guardedValue = map['readReplicaCapable']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageType: (() { final guardedValue = map['storageType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      supportedEngineModes: (() { final guardedValue = map['supportedEngineModes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      supportedNetworkTypes: (() { final guardedValue = map['supportedNetworkTypes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      supportsClusters: (() { final guardedValue = map['supportsClusters']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      supportsEnhancedMonitoring: (() { final guardedValue = map['supportsEnhancedMonitoring']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      supportsGlobalDatabases: (() { final guardedValue = map['supportsGlobalDatabases']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      supportsIamDatabaseAuthentication: (() { final guardedValue = map['supportsIamDatabaseAuthentication']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      supportsIops: (() { final guardedValue = map['supportsIops']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      supportsKerberosAuthentication: (() { final guardedValue = map['supportsKerberosAuthentication']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      supportsMultiAz: (() { final guardedValue = map['supportsMultiAz']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      supportsPerformanceInsights: (() { final guardedValue = map['supportsPerformanceInsights']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      supportsStorageAutoscaling: (() { final guardedValue = map['supportsStorageAutoscaling']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      supportsStorageEncryption: (() { final guardedValue = map['supportsStorageEncryption']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      vpc: (() { final guardedValue = map['vpc']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}
