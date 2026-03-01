// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rds_get_orderable_db_instance_get_orderable_db_instance_args_doc}
/// Arguments for getOrderableDbInstance.
/// {@endtemplate}
/// {@macro pulumi_rds_get_orderable_db_instance_get_orderable_db_instance_args_doc}
class GetOrderableDbInstanceArgs {
  /// Availability zone group.
  final pulumi.Input<String>? availabilityZoneGroup;
  /// DB engine. Engine values include `aurora`, `aurora-mysql`, `aurora-postgresql`, `docdb`, `mariadb`, `mysql`, `neptune`, `oracle-ee`, `oracle-se`, `oracle-se1`, `oracle-se2`, `postgres`, `sqlserver-ee`, `sqlserver-ex`, `sqlserver-se`, and `sqlserver-web`.
  final pulumi.Input<String> engine;
  /// When set to `true`, the data source attempts to return the most recent version matching the other criteria you provide. You must use `engine_latest_version` with `preferred_instance_classes` and/or `preferred_engine_versions`. Using `engine_latest_version` will avoid `multiple RDS DB Instance Classes` errors. If you use `engine_latest_version` with `preferred_instance_classes`, the data source returns the latest version for the _first_ matching instance class (instance class priority). **Note:** The data source uses a best-effort approach at selecting the latest version but due to the complexity of version identifiers across engines, using `engine_latest_version` may _not_ return the latest version in every situation.
  final pulumi.Input<bool>? engineLatestVersion;
  /// Version of the DB engine. If none is provided, the data source tries to use the AWS-defined default version that matches any other criteria.
  final pulumi.Input<String>? engineVersion;
  /// DB instance class. Examples of classes are `db.m3.2xlarge`, `db.t2.small`, and `db.m3.medium`.
  final pulumi.Input<String>? instanceClass;
  /// License model. Examples of license models are `general-public-license`, `bring-your-own-license`, and `amazon-license`.
  final pulumi.Input<String>? licenseModel;
  /// Ordered list of preferred RDS DB instance engine versions. When `engine_latest_version` is not set, the data source will return the first match in this list that matches any other criteria. If the data source finds no preferred matches or multiple matches without `engine_latest_version`, it returns an error. **CAUTION:** We don't recommend using `preferred_engine_versions` without `preferred_instance_classes` since the data source returns an arbitrary `instance_class` based on the first one AWS returns that matches the engine version and any other criteria.
  final pulumi.Input<List<String>>? preferredEngineVersions;
  /// Ordered list of preferred RDS DB instance classes. The data source will return the first match in this list that matches any other criteria. If the data source finds no preferred matches or multiple matches without `engine_latest_version`, it returns an error. If you use `preferred_instance_classes` without `preferred_engine_versions` or `engine_latest_version`, the data source returns an arbitrary `engine_version` based on the first one AWS returns matching the instance class and any other criteria.
  final pulumi.Input<List<String>>? preferredInstanceClasses;
  /// Whether a DB instance can have a read replica.
  final pulumi.Input<bool>? readReplicaCapable;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Storage types. Examples of storage types are `standard`, `io1`, `gp2`, and `aurora`.
  final pulumi.Input<String>? storageType;
  /// Use to limit results to engine modes such as `provisioned`.
  final pulumi.Input<List<String>>? supportedEngineModes;
  /// Use to limit results to network types `IPV4` or `DUAL`.
  final pulumi.Input<List<String>>? supportedNetworkTypes;
  /// Whether to limit results to instances that support clusters.
  final pulumi.Input<bool>? supportsClusters;
  /// Enable this to ensure a DB instance supports Enhanced Monitoring at intervals from 1 to 60 seconds.
  final pulumi.Input<bool>? supportsEnhancedMonitoring;
  /// Enable this to ensure a DB instance supports Aurora global databases with a specific combination of other DB engine attributes.
  final pulumi.Input<bool>? supportsGlobalDatabases;
  /// Enable this to ensure a DB instance supports IAM database authentication.
  final pulumi.Input<bool>? supportsIamDatabaseAuthentication;
  /// Enable this to ensure a DB instance supports provisioned IOPS.
  final pulumi.Input<bool>? supportsIops;
  /// Enable this to ensure a DB instance supports Kerberos Authentication.
  final pulumi.Input<bool>? supportsKerberosAuthentication;
  /// Whether to limit results to instances that are multi-AZ capable.
  final pulumi.Input<bool>? supportsMultiAz;
  /// Enable this to ensure a DB instance supports Performance Insights.
  final pulumi.Input<bool>? supportsPerformanceInsights;
  /// Enable this to ensure Amazon RDS can automatically scale storage for DB instances that use the specified DB instance class.
  final pulumi.Input<bool>? supportsStorageAutoscaling;
  /// Enable this to ensure a DB instance supports encrypted storage.
  final pulumi.Input<bool>? supportsStorageEncryption;
  /// Boolean that indicates whether to show only VPC or non-VPC offerings.
  final pulumi.Input<bool>? vpc;

  /// Creates a new [GetOrderableDbInstanceArgs].
  /// [availabilityZoneGroup] Availability zone group.
  /// [engine] DB engine. Engine values include `aurora`, `aurora-mysql`, `aurora-postgresql`, `docdb`, `mariadb`, `mysql`, `neptune`, `oracle-ee`, `oracle-se`, `oracle-se1`, `oracle-se2`, `postgres`, `sqlserver-ee`, `sqlserver-ex`, `sqlserver-se`, and `sqlserver-web`.
  /// [engineLatestVersion] When set to `true`, the data source attempts to return the most recent version matching the other criteria you provide. You must use `engine_latest_version` with `preferred_instance_classes` and/or `preferred_engine_versions`. Using `engine_latest_version` will avoid `multiple RDS DB Instance Classes` errors. If you use `engine_latest_version` with `preferred_instance_classes`, the data source returns the latest version for the _first_ matching instance class (instance class priority). **Note:** The data source uses a best-effort approach at selecting the latest version but due to the complexity of version identifiers across engines, using `engine_latest_version` may _not_ return the latest version in every situation.
  /// [engineVersion] Version of the DB engine. If none is provided, the data source tries to use the AWS-defined default version that matches any other criteria.
  /// [instanceClass] DB instance class. Examples of classes are `db.m3.2xlarge`, `db.t2.small`, and `db.m3.medium`.
  /// [licenseModel] License model. Examples of license models are `general-public-license`, `bring-your-own-license`, and `amazon-license`.
  /// [preferredEngineVersions] Ordered list of preferred RDS DB instance engine versions. When `engine_latest_version` is not set, the data source will return the first match in this list that matches any other criteria. If the data source finds no preferred matches or multiple matches without `engine_latest_version`, it returns an error. **CAUTION:** We don't recommend using `preferred_engine_versions` without `preferred_instance_classes` since the data source returns an arbitrary `instance_class` based on the first one AWS returns that matches the engine version and any other criteria.
  /// [preferredInstanceClasses] Ordered list of preferred RDS DB instance classes. The data source will return the first match in this list that matches any other criteria. If the data source finds no preferred matches or multiple matches without `engine_latest_version`, it returns an error. If you use `preferred_instance_classes` without `preferred_engine_versions` or `engine_latest_version`, the data source returns an arbitrary `engine_version` based on the first one AWS returns matching the instance class and any other criteria.
  /// [readReplicaCapable] Whether a DB instance can have a read replica.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [storageType] Storage types. Examples of storage types are `standard`, `io1`, `gp2`, and `aurora`.
  /// [supportedEngineModes] Use to limit results to engine modes such as `provisioned`.
  /// [supportedNetworkTypes] Use to limit results to network types `IPV4` or `DUAL`.
  /// [supportsClusters] Whether to limit results to instances that support clusters.
  /// [supportsEnhancedMonitoring] Enable this to ensure a DB instance supports Enhanced Monitoring at intervals from 1 to 60 seconds.
  /// [supportsGlobalDatabases] Enable this to ensure a DB instance supports Aurora global databases with a specific combination of other DB engine attributes.
  /// [supportsIamDatabaseAuthentication] Enable this to ensure a DB instance supports IAM database authentication.
  /// [supportsIops] Enable this to ensure a DB instance supports provisioned IOPS.
  /// [supportsKerberosAuthentication] Enable this to ensure a DB instance supports Kerberos Authentication.
  /// [supportsMultiAz] Whether to limit results to instances that are multi-AZ capable.
  /// [supportsPerformanceInsights] Enable this to ensure a DB instance supports Performance Insights.
  /// [supportsStorageAutoscaling] Enable this to ensure Amazon RDS can automatically scale storage for DB instances that use the specified DB instance class.
  /// [supportsStorageEncryption] Enable this to ensure a DB instance supports encrypted storage.
  /// [vpc] Boolean that indicates whether to show only VPC or non-VPC offerings.
  GetOrderableDbInstanceArgs({
    pulumi.Output<String>? availabilityZoneGroup,
    required pulumi.Output<String> engine,
    pulumi.Output<bool>? engineLatestVersion,
    pulumi.Output<String>? engineVersion,
    pulumi.Output<String>? instanceClass,
    pulumi.Output<String>? licenseModel,
    pulumi.Output<List<String>>? preferredEngineVersions,
    pulumi.Output<List<String>>? preferredInstanceClasses,
    pulumi.Output<bool>? readReplicaCapable,
    pulumi.Output<String>? region,
    pulumi.Output<String>? storageType,
    pulumi.Output<List<String>>? supportedEngineModes,
    pulumi.Output<List<String>>? supportedNetworkTypes,
    pulumi.Output<bool>? supportsClusters,
    pulumi.Output<bool>? supportsEnhancedMonitoring,
    pulumi.Output<bool>? supportsGlobalDatabases,
    pulumi.Output<bool>? supportsIamDatabaseAuthentication,
    pulumi.Output<bool>? supportsIops,
    pulumi.Output<bool>? supportsKerberosAuthentication,
    pulumi.Output<bool>? supportsMultiAz,
    pulumi.Output<bool>? supportsPerformanceInsights,
    pulumi.Output<bool>? supportsStorageAutoscaling,
    pulumi.Output<bool>? supportsStorageEncryption,
    pulumi.Output<bool>? vpc,
  }) :
      availabilityZoneGroup = pulumi.Input.asOptionalInput<String>(availabilityZoneGroup),
      engine = pulumi.Input.asInput<String>(engine),
      engineLatestVersion = pulumi.Input.asOptionalInput<bool>(engineLatestVersion),
      engineVersion = pulumi.Input.asOptionalInput<String>(engineVersion),
      instanceClass = pulumi.Input.asOptionalInput<String>(instanceClass),
      licenseModel = pulumi.Input.asOptionalInput<String>(licenseModel),
      preferredEngineVersions = pulumi.Input.asOptionalInput<List<String>>(preferredEngineVersions),
      preferredInstanceClasses = pulumi.Input.asOptionalInput<List<String>>(preferredInstanceClasses),
      readReplicaCapable = pulumi.Input.asOptionalInput<bool>(readReplicaCapable),
      region = pulumi.Input.asOptionalInput<String>(region),
      storageType = pulumi.Input.asOptionalInput<String>(storageType),
      supportedEngineModes = pulumi.Input.asOptionalInput<List<String>>(supportedEngineModes),
      supportedNetworkTypes = pulumi.Input.asOptionalInput<List<String>>(supportedNetworkTypes),
      supportsClusters = pulumi.Input.asOptionalInput<bool>(supportsClusters),
      supportsEnhancedMonitoring = pulumi.Input.asOptionalInput<bool>(supportsEnhancedMonitoring),
      supportsGlobalDatabases = pulumi.Input.asOptionalInput<bool>(supportsGlobalDatabases),
      supportsIamDatabaseAuthentication = pulumi.Input.asOptionalInput<bool>(supportsIamDatabaseAuthentication),
      supportsIops = pulumi.Input.asOptionalInput<bool>(supportsIops),
      supportsKerberosAuthentication = pulumi.Input.asOptionalInput<bool>(supportsKerberosAuthentication),
      supportsMultiAz = pulumi.Input.asOptionalInput<bool>(supportsMultiAz),
      supportsPerformanceInsights = pulumi.Input.asOptionalInput<bool>(supportsPerformanceInsights),
      supportsStorageAutoscaling = pulumi.Input.asOptionalInput<bool>(supportsStorageAutoscaling),
      supportsStorageEncryption = pulumi.Input.asOptionalInput<bool>(supportsStorageEncryption),
      vpc = pulumi.Input.asOptionalInput<bool>(vpc);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZoneGroup': ?availabilityZoneGroup,
      'engine': engine,
      'engineLatestVersion': ?engineLatestVersion,
      'engineVersion': ?engineVersion,
      'instanceClass': ?instanceClass,
      'licenseModel': ?licenseModel,
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

  factory GetOrderableDbInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetOrderableDbInstanceArgs(
      availabilityZoneGroup: map['availabilityZoneGroup'] == null ? null : pulumi.Output.create<String>(map['availabilityZoneGroup'] as String),
      engine: pulumi.Output.create<String>(map['engine'] as String),
      engineLatestVersion: map['engineLatestVersion'] == null ? null : pulumi.Output.create<bool>(map['engineLatestVersion'] as bool),
      engineVersion: map['engineVersion'] == null ? null : pulumi.Output.create<String>(map['engineVersion'] as String),
      instanceClass: map['instanceClass'] == null ? null : pulumi.Output.create<String>(map['instanceClass'] as String),
      licenseModel: map['licenseModel'] == null ? null : pulumi.Output.create<String>(map['licenseModel'] as String),
      preferredEngineVersions: map['preferredEngineVersions'] == null ? null : pulumi.Output.create<List<String>>((map['preferredEngineVersions'] as List).cast<String>()),
      preferredInstanceClasses: map['preferredInstanceClasses'] == null ? null : pulumi.Output.create<List<String>>((map['preferredInstanceClasses'] as List).cast<String>()),
      readReplicaCapable: map['readReplicaCapable'] == null ? null : pulumi.Output.create<bool>(map['readReplicaCapable'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      storageType: map['storageType'] == null ? null : pulumi.Output.create<String>(map['storageType'] as String),
      supportedEngineModes: map['supportedEngineModes'] == null ? null : pulumi.Output.create<List<String>>((map['supportedEngineModes'] as List).cast<String>()),
      supportedNetworkTypes: map['supportedNetworkTypes'] == null ? null : pulumi.Output.create<List<String>>((map['supportedNetworkTypes'] as List).cast<String>()),
      supportsClusters: map['supportsClusters'] == null ? null : pulumi.Output.create<bool>(map['supportsClusters'] as bool),
      supportsEnhancedMonitoring: map['supportsEnhancedMonitoring'] == null ? null : pulumi.Output.create<bool>(map['supportsEnhancedMonitoring'] as bool),
      supportsGlobalDatabases: map['supportsGlobalDatabases'] == null ? null : pulumi.Output.create<bool>(map['supportsGlobalDatabases'] as bool),
      supportsIamDatabaseAuthentication: map['supportsIamDatabaseAuthentication'] == null ? null : pulumi.Output.create<bool>(map['supportsIamDatabaseAuthentication'] as bool),
      supportsIops: map['supportsIops'] == null ? null : pulumi.Output.create<bool>(map['supportsIops'] as bool),
      supportsKerberosAuthentication: map['supportsKerberosAuthentication'] == null ? null : pulumi.Output.create<bool>(map['supportsKerberosAuthentication'] as bool),
      supportsMultiAz: map['supportsMultiAz'] == null ? null : pulumi.Output.create<bool>(map['supportsMultiAz'] as bool),
      supportsPerformanceInsights: map['supportsPerformanceInsights'] == null ? null : pulumi.Output.create<bool>(map['supportsPerformanceInsights'] as bool),
      supportsStorageAutoscaling: map['supportsStorageAutoscaling'] == null ? null : pulumi.Output.create<bool>(map['supportsStorageAutoscaling'] as bool),
      supportsStorageEncryption: map['supportsStorageEncryption'] == null ? null : pulumi.Output.create<bool>(map['supportsStorageEncryption'] as bool),
      vpc: map['vpc'] == null ? null : pulumi.Output.create<bool>(map['vpc'] as bool),
    );
  }
}

