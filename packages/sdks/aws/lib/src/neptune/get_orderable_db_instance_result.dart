// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getOrderableDbInstance.
class GetOrderableDbInstanceResult {
  /// Availability zones where the instance is available.
  final List<String>? availabilityZones;
  final String? engine;
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
  final List<String>? preferredInstanceClasses;
  /// Whether a DB instance can have a read replica.
  final bool? readReplicaCapable;
  final String? region;
  /// Storage type for a DB instance.
  final String? storageType;
  /// Whether a DB instance supports Enhanced Monitoring at intervals from 1 to 60 seconds.
  final bool? supportsEnhancedMonitoring;
  /// Whether a DB instance supports IAM database authentication.
  final bool? supportsIamDatabaseAuthentication;
  /// Whether a DB instance supports provisioned IOPS.
  final bool? supportsIops;
  /// Whether a DB instance supports Performance Insights.
  final bool? supportsPerformanceInsights;
  /// Whether a DB instance supports encrypted storage.
  final bool? supportsStorageEncryption;
  final bool? vpc;

  /// Creates a new [GetOrderableDbInstanceResult].
  /// [availabilityZones] Availability zones where the instance is available.
  /// [engine] Optional.
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
  /// [preferredInstanceClasses] Optional.
  /// [readReplicaCapable] Whether a DB instance can have a read replica.
  /// [region] Optional.
  /// [storageType] Storage type for a DB instance.
  /// [supportsEnhancedMonitoring] Whether a DB instance supports Enhanced Monitoring at intervals from 1 to 60 seconds.
  /// [supportsIamDatabaseAuthentication] Whether a DB instance supports IAM database authentication.
  /// [supportsIops] Whether a DB instance supports provisioned IOPS.
  /// [supportsPerformanceInsights] Whether a DB instance supports Performance Insights.
  /// [supportsStorageEncryption] Whether a DB instance supports encrypted storage.
  /// [vpc] Optional.
  const GetOrderableDbInstanceResult({
    this.availabilityZones,
    this.engine,
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
    this.preferredInstanceClasses,
    this.readReplicaCapable,
    this.region,
    this.storageType,
    this.supportsEnhancedMonitoring,
    this.supportsIamDatabaseAuthentication,
    this.supportsIops,
    this.supportsPerformanceInsights,
    this.supportsStorageEncryption,
    this.vpc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZones': ?availabilityZones,
      'engine': ?engine,
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
      'preferredInstanceClasses': ?preferredInstanceClasses,
      'readReplicaCapable': ?readReplicaCapable,
      'region': ?region,
      'storageType': ?storageType,
      'supportsEnhancedMonitoring': ?supportsEnhancedMonitoring,
      'supportsIamDatabaseAuthentication': ?supportsIamDatabaseAuthentication,
      'supportsIops': ?supportsIops,
      'supportsPerformanceInsights': ?supportsPerformanceInsights,
      'supportsStorageEncryption': ?supportsStorageEncryption,
      'vpc': ?vpc,
    };
  }

  factory GetOrderableDbInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetOrderableDbInstanceResult(
      availabilityZones: (() { final guardedValue = map['availabilityZones']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      engine: (() { final guardedValue = map['engine']; if (guardedValue == null) return null; return guardedValue as String; })(),
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
      preferredInstanceClasses: (() { final guardedValue = map['preferredInstanceClasses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      readReplicaCapable: (() { final guardedValue = map['readReplicaCapable']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageType: (() { final guardedValue = map['storageType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      supportsEnhancedMonitoring: (() { final guardedValue = map['supportsEnhancedMonitoring']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      supportsIamDatabaseAuthentication: (() { final guardedValue = map['supportsIamDatabaseAuthentication']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      supportsIops: (() { final guardedValue = map['supportsIops']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      supportsPerformanceInsights: (() { final guardedValue = map['supportsPerformanceInsights']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      supportsStorageEncryption: (() { final guardedValue = map['supportsStorageEncryption']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      vpc: (() { final guardedValue = map['vpc']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}
