// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getOrderableDbInstance.
class GetOrderableDbInstanceArgs3 {
  /// Availability zone group.
  final Input<String>? availabilityZoneGroup;

  /// DB engine. Engine values include `aurora`, `aurora-mysql`, `aurora-postgresql`, `docdb`, `mariadb`, `mysql`, `neptune`, `oracle-ee`, `oracle-se`, `oracle-se1`, `oracle-se2`, `postgres`, `sqlserver-ee`, `sqlserver-ex`, `sqlserver-se`, and `sqlserver-web`.
  final Input<String> engine;

  /// When set to `true`, the data source attempts to return the most recent version matching the other criteria you provide. You must use `engine_latest_version` with `preferred_instance_classes` and/or `preferred_engine_versions`. Using `engine_latest_version` will avoid `multiple RDS DB Instance Classes` errors. If you use `engine_latest_version` with `preferred_instance_classes`, the data source returns the latest version for the _first_ matching instance class (instance class priority). **Note:** The data source uses a best-effort approach at selecting the latest version but due to the complexity of version identifiers across engines, using `engine_latest_version` may _not_ return the latest version in every situation.
  final Input<bool>? engineLatestVersion;

  /// Version of the DB engine. If none is provided, the data source tries to use the AWS-defined default version that matches any other criteria.
  final Input<String>? engineVersion;

  /// DB instance class. Examples of classes are `db.m3.2xlarge`, `db.t2.small`, and `db.m3.medium`.
  final Input<String>? instanceClass;

  /// License model. Examples of license models are `general-public-license`, `bring-your-own-license`, and `amazon-license`.
  final Input<String>? licenseModel;

  /// Ordered list of preferred RDS DB instance engine versions. When `engine_latest_version` is not set, the data source will return the first match in this list that matches any other criteria. If the data source finds no preferred matches or multiple matches without `engine_latest_version`, it returns an error. **CAUTION:** We don't recommend using `preferred_engine_versions` without `preferred_instance_classes` since the data source returns an arbitrary `instance_class` based on the first one AWS returns that matches the engine version and any other criteria.
  final Input<List<String>>? preferredEngineVersions;

  /// Ordered list of preferred RDS DB instance classes. The data source will return the first match in this list that matches any other criteria. If the data source finds no preferred matches or multiple matches without `engine_latest_version`, it returns an error. If you use `preferred_instance_classes` without `preferred_engine_versions` or `engine_latest_version`, the data source returns an arbitrary `engine_version` based on the first one AWS returns matching the instance class and any other criteria.
  final Input<List<String>>? preferredInstanceClasses;

  /// Whether a DB instance can have a read replica.
  final Input<bool>? readReplicaCapable;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Storage types. Examples of storage types are `standard`, `io1`, `gp2`, and `aurora`.
  final Input<String>? storageType;

  /// Use to limit results to engine modes such as `provisioned`.
  final Input<List<String>>? supportedEngineModes;

  /// Use to limit results to network types `IPV4` or `DUAL`.
  final Input<List<String>>? supportedNetworkTypes;

  /// Whether to limit results to instances that support clusters.
  final Input<bool>? supportsClusters;

  /// Enable this to ensure a DB instance supports Enhanced Monitoring at intervals from 1 to 60 seconds.
  final Input<bool>? supportsEnhancedMonitoring;

  /// Enable this to ensure a DB instance supports Aurora global databases with a specific combination of other DB engine attributes.
  final Input<bool>? supportsGlobalDatabases;

  /// Enable this to ensure a DB instance supports IAM database authentication.
  final Input<bool>? supportsIamDatabaseAuthentication;

  /// Enable this to ensure a DB instance supports provisioned IOPS.
  final Input<bool>? supportsIops;

  /// Enable this to ensure a DB instance supports Kerberos Authentication.
  final Input<bool>? supportsKerberosAuthentication;

  /// Whether to limit results to instances that are multi-AZ capable.
  final Input<bool>? supportsMultiAz;

  /// Enable this to ensure a DB instance supports Performance Insights.
  final Input<bool>? supportsPerformanceInsights;

  /// Enable this to ensure Amazon RDS can automatically scale storage for DB instances that use the specified DB instance class.
  final Input<bool>? supportsStorageAutoscaling;

  /// Enable this to ensure a DB instance supports encrypted storage.
  final Input<bool>? supportsStorageEncryption;

  /// Boolean that indicates whether to show only VPC or non-VPC offerings.
  final Input<bool>? vpc;

  GetOrderableDbInstanceArgs3({
    this.availabilityZoneGroup,
    required this.engine,
    this.engineLatestVersion,
    this.engineVersion,
    this.instanceClass,
    this.licenseModel,
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
    final map = <String, dynamic>{};
    final availabilityZoneGroupValue = availabilityZoneGroup;
    if (availabilityZoneGroupValue != null) {
      map['availabilityZoneGroup'] = availabilityZoneGroupValue;
    }
    map['engine'] = engine;
    final engineLatestVersionValue = engineLatestVersion;
    if (engineLatestVersionValue != null) {
      map['engineLatestVersion'] = engineLatestVersionValue;
    }
    final engineVersionValue = engineVersion;
    if (engineVersionValue != null) {
      map['engineVersion'] = engineVersionValue;
    }
    final instanceClassValue = instanceClass;
    if (instanceClassValue != null) {
      map['instanceClass'] = instanceClassValue;
    }
    final licenseModelValue = licenseModel;
    if (licenseModelValue != null) {
      map['licenseModel'] = licenseModelValue;
    }
    final preferredEngineVersionsValue = preferredEngineVersions;
    if (preferredEngineVersionsValue != null) {
      map['preferredEngineVersions'] = preferredEngineVersionsValue;
    }
    final preferredInstanceClassesValue = preferredInstanceClasses;
    if (preferredInstanceClassesValue != null) {
      map['preferredInstanceClasses'] = preferredInstanceClassesValue;
    }
    final readReplicaCapableValue = readReplicaCapable;
    if (readReplicaCapableValue != null) {
      map['readReplicaCapable'] = readReplicaCapableValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final storageTypeValue = storageType;
    if (storageTypeValue != null) {
      map['storageType'] = storageTypeValue;
    }
    final supportedEngineModesValue = supportedEngineModes;
    if (supportedEngineModesValue != null) {
      map['supportedEngineModes'] = supportedEngineModesValue;
    }
    final supportedNetworkTypesValue = supportedNetworkTypes;
    if (supportedNetworkTypesValue != null) {
      map['supportedNetworkTypes'] = supportedNetworkTypesValue;
    }
    final supportsClustersValue = supportsClusters;
    if (supportsClustersValue != null) {
      map['supportsClusters'] = supportsClustersValue;
    }
    final supportsEnhancedMonitoringValue = supportsEnhancedMonitoring;
    if (supportsEnhancedMonitoringValue != null) {
      map['supportsEnhancedMonitoring'] = supportsEnhancedMonitoringValue;
    }
    final supportsGlobalDatabasesValue = supportsGlobalDatabases;
    if (supportsGlobalDatabasesValue != null) {
      map['supportsGlobalDatabases'] = supportsGlobalDatabasesValue;
    }
    final supportsIamDatabaseAuthenticationValue =
        supportsIamDatabaseAuthentication;
    if (supportsIamDatabaseAuthenticationValue != null) {
      map['supportsIamDatabaseAuthentication'] =
          supportsIamDatabaseAuthenticationValue;
    }
    final supportsIopsValue = supportsIops;
    if (supportsIopsValue != null) {
      map['supportsIops'] = supportsIopsValue;
    }
    final supportsKerberosAuthenticationValue = supportsKerberosAuthentication;
    if (supportsKerberosAuthenticationValue != null) {
      map['supportsKerberosAuthentication'] =
          supportsKerberosAuthenticationValue;
    }
    final supportsMultiAzValue = supportsMultiAz;
    if (supportsMultiAzValue != null) {
      map['supportsMultiAz'] = supportsMultiAzValue;
    }
    final supportsPerformanceInsightsValue = supportsPerformanceInsights;
    if (supportsPerformanceInsightsValue != null) {
      map['supportsPerformanceInsights'] = supportsPerformanceInsightsValue;
    }
    final supportsStorageAutoscalingValue = supportsStorageAutoscaling;
    if (supportsStorageAutoscalingValue != null) {
      map['supportsStorageAutoscaling'] = supportsStorageAutoscalingValue;
    }
    final supportsStorageEncryptionValue = supportsStorageEncryption;
    if (supportsStorageEncryptionValue != null) {
      map['supportsStorageEncryption'] = supportsStorageEncryptionValue;
    }
    final vpcValue = vpc;
    if (vpcValue != null) {
      map['vpc'] = vpcValue;
    }
    return map;
  }

  factory GetOrderableDbInstanceArgs3.fromMap(Map<String, dynamic> map) {
    return GetOrderableDbInstanceArgs3(
      availabilityZoneGroup:
          Input.asOptionalInput<String>(map['availabilityZoneGroup']),
      engine: Input.asInput<String>(map['engine']),
      engineLatestVersion:
          Input.asOptionalInput<bool>(map['engineLatestVersion']),
      engineVersion: Input.asOptionalInput<String>(map['engineVersion']),
      instanceClass: Input.asOptionalInput<String>(map['instanceClass']),
      licenseModel: Input.asOptionalInput<String>(map['licenseModel']),
      preferredEngineVersions:
          Input.asOptionalInput<List<String>>(map['preferredEngineVersions']),
      preferredInstanceClasses:
          Input.asOptionalInput<List<String>>(map['preferredInstanceClasses']),
      readReplicaCapable:
          Input.asOptionalInput<bool>(map['readReplicaCapable']),
      region: Input.asOptionalInput<String>(map['region']),
      storageType: Input.asOptionalInput<String>(map['storageType']),
      supportedEngineModes:
          Input.asOptionalInput<List<String>>(map['supportedEngineModes']),
      supportedNetworkTypes:
          Input.asOptionalInput<List<String>>(map['supportedNetworkTypes']),
      supportsClusters: Input.asOptionalInput<bool>(map['supportsClusters']),
      supportsEnhancedMonitoring:
          Input.asOptionalInput<bool>(map['supportsEnhancedMonitoring']),
      supportsGlobalDatabases:
          Input.asOptionalInput<bool>(map['supportsGlobalDatabases']),
      supportsIamDatabaseAuthentication:
          Input.asOptionalInput<bool>(map['supportsIamDatabaseAuthentication']),
      supportsIops: Input.asOptionalInput<bool>(map['supportsIops']),
      supportsKerberosAuthentication:
          Input.asOptionalInput<bool>(map['supportsKerberosAuthentication']),
      supportsMultiAz: Input.asOptionalInput<bool>(map['supportsMultiAz']),
      supportsPerformanceInsights:
          Input.asOptionalInput<bool>(map['supportsPerformanceInsights']),
      supportsStorageAutoscaling:
          Input.asOptionalInput<bool>(map['supportsStorageAutoscaling']),
      supportsStorageEncryption:
          Input.asOptionalInput<bool>(map['supportsStorageEncryption']),
      vpc: Input.asOptionalInput<bool>(map['vpc']),
    );
  }
}
