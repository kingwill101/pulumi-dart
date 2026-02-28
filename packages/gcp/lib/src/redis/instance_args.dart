// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_maintenance_policy.dart';
import 'instance_persistence_config.dart';

/// {@template pulumi_redis_instance_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_redis_instance_instance_args_doc}
class InstanceArgs {
  /// Only applicable to STANDARD_HA tier which protects the instance
  /// against zonal failures by provisioning it across two zones.
  /// If provided, it must be a different zone from the one provided in
  /// [locationId].
  final pulumi.Input<String>? alternativeLocationId;

  /// Optional. Indicates whether OSS Redis AUTH is enabled for the
  /// instance. If set to "true" AUTH is enabled on the instance.
  /// Default value is "false" meaning AUTH is disabled.
  final pulumi.Input<bool>? authEnabled;

  /// The full name of the Google Compute Engine network to which the
  /// instance is connected. If left unspecified, the default network
  /// will be used.
  final pulumi.Input<String>? authorizedNetwork;

  /// The connection mode of the Redis instance.
  /// Default value is `DIRECT_PEERING`.
  /// Possible values are: `DIRECT_PEERING`, `PRIVATE_SERVICE_ACCESS`.
  final pulumi.Input<String>? connectMode;

  /// Optional. The KMS key reference that you want to use to encrypt the data at rest for this Redis
  /// instance. If this is provided, CMEK is enabled.
  final pulumi.Input<String>? customerManagedKey;
  final pulumi.Input<bool>? deletionProtection;

  /// An arbitrary and optional user-provided name for the instance.
  final pulumi.Input<String>? displayName;

  /// Resource labels to represent user provided metadata.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The zone where the instance will be provisioned. If not provided,
  /// the service will choose a zone for the instance. For STANDARD_HA tier,
  /// instances will be created across two zones for protection against
  /// zonal failures. If [alternativeLocationId] is also provided, it must
  /// be different from [locationId].
  final pulumi.Input<String>? locationId;

  /// Maintenance policy for an instance.
  /// Structure is documented below.
  final pulumi.Input<InstanceMaintenancePolicy>? maintenancePolicy;

  /// The self service update maintenance version.
  final pulumi.Input<String>? maintenanceVersion;

  /// Redis memory size in GiB.
  final pulumi.Input<int> memorySizeGb;

  /// The ID of the instance or a fully qualified identifier for the instance.
  final pulumi.Input<String>? name;

  /// Persistence configuration for an instance.
  /// Structure is documented below.
  final pulumi.Input<InstancePersistenceConfig>? persistenceConfig;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Optional. Read replica mode. Can only be specified when trying to create the instance.
  /// If not set, Memorystore Redis backend will default to READ_REPLICAS_DISABLED.
  /// - READ_REPLICAS_DISABLED: If disabled, read endpoint will not be provided and the
  /// instance cannot scale up or down the number of replicas.
  /// - READ_REPLICAS_ENABLED: If enabled, read endpoint will be provided and the instance
  /// can scale up and down the number of replicas.
  /// Possible values are: `READ_REPLICAS_DISABLED`, `READ_REPLICAS_ENABLED`.
  final pulumi.Input<String>? readReplicasMode;

  /// Redis configuration parameters, according to http://redis.io/topics/config.
  /// Please check Memorystore documentation for the list of supported parameters:
  /// https://cloud.google.com/memorystore/docs/redis/reference/rest/v1/projects.locations.instances#Instance.FIELDS.redis_configs
  final pulumi.Input<Map<String, String>>? redisConfigs;

  /// The version of Redis software. If not provided, latest supported
  /// version will be used. Please check the API documentation linked
  /// at the top for the latest valid values.
  final pulumi.Input<String>? redisVersion;

  /// The name of the Redis region of the instance.
  final pulumi.Input<String>? region;

  /// Optional. The number of replica nodes. The valid range for the Standard Tier with
  /// read replicas enabled is [1-5] and defaults to 2. If read replicas are not enabled
  /// for a Standard Tier instance, the only valid value is 1 and the default is 1.
  /// The valid value for basic tier is 0 and the default is also 0.
  final pulumi.Input<int>? replicaCount;

  /// The CIDR range of internal addresses that are reserved for this
  /// instance. If not provided, the service will choose an unused /29
  /// block, for example, 10.0.0.0/29 or 192.168.0.0/29. Ranges must be
  /// unique and non-overlapping with existing subnets in an authorized
  /// network.
  final pulumi.Input<String>? reservedIpRange;

  /// Optional. Additional IP range for node placement. Required when enabling read replicas on
  /// an existing instance. For DIRECT_PEERING mode value must be a CIDR range of size /28, or
  /// "auto". For PRIVATE_SERVICE_ACCESS mode value must be the name of an allocated address
  /// range associated with the private service access connection, or "auto".
  final pulumi.Input<String>? secondaryIpRange;

  /// The service tier of the instance. Must be one of these values:
  /// - BASIC: standalone instance
  /// - STANDARD_HA: highly available primary/replica instances
  /// Default value is `BASIC`.
  /// Possible values are: `BASIC`, `STANDARD_HA`.
  final pulumi.Input<String>? tier;

  /// The TLS mode of the Redis instance, If not provided, TLS is disabled for the instance.
  /// - SERVER_AUTHENTICATION: Client to Server traffic encryption enabled with server authentication
  /// Default value is `DISABLED`.
  /// Possible values are: `SERVER_AUTHENTICATION`, `DISABLED`.
  final pulumi.Input<String>? transitEncryptionMode;

  /// Creates a new [InstanceArgs].
  /// [alternativeLocationId] Only applicable to STANDARD_HA tier which protects the instance
  /// [authEnabled] Optional. Indicates whether OSS Redis AUTH is enabled for the
  /// [authorizedNetwork] The full name of the Google Compute Engine network to which the
  /// [connectMode] The connection mode of the Redis instance.
  /// [customerManagedKey] Optional. The KMS key reference that you want to use to encrypt the data at rest for this Redis
  /// [deletionProtection] Optional.
  /// [displayName] An arbitrary and optional user-provided name for the instance.
  /// [labels] Resource labels to represent user provided metadata.
  /// [locationId] The zone where the instance will be provisioned. If not provided,
  /// [maintenancePolicy] Maintenance policy for an instance.
  /// [maintenanceVersion] The self service update maintenance version.
  /// [memorySizeGb] Redis memory size in GiB.
  /// [name] The ID of the instance or a fully qualified identifier for the instance.
  /// [persistenceConfig] Persistence configuration for an instance.
  /// [project] The ID of the project in which the resource belongs.
  /// [readReplicasMode] Optional. Read replica mode. Can only be specified when trying to create the instance.
  /// [redisConfigs] Redis configuration parameters, according to http://redis.io/topics/config.
  /// [redisVersion] The version of Redis software. If not provided, latest supported
  /// [region] The name of the Redis region of the instance.
  /// [replicaCount] Optional. The number of replica nodes. The valid range for the Standard Tier with
  /// [reservedIpRange] The CIDR range of internal addresses that are reserved for this
  /// [secondaryIpRange] Optional. Additional IP range for node placement. Required when enabling read replicas on
  /// [tier] The service tier of the instance. Must be one of these values:
  /// [transitEncryptionMode] The TLS mode of the Redis instance, If not provided, TLS is disabled for the instance.
  InstanceArgs({
    String? alternativeLocationId,
    bool? authEnabled,
    String? authorizedNetwork,
    String? connectMode,
    String? customerManagedKey,
    bool? deletionProtection,
    String? displayName,
    Map<String, String>? labels,
    String? locationId,
    InstanceMaintenancePolicy? maintenancePolicy,
    String? maintenanceVersion,
    required int memorySizeGb,
    String? name,
    InstancePersistenceConfig? persistenceConfig,
    String? project,
    String? readReplicasMode,
    Map<String, String>? redisConfigs,
    String? redisVersion,
    String? region,
    int? replicaCount,
    String? reservedIpRange,
    String? secondaryIpRange,
    String? tier,
    String? transitEncryptionMode,
  })  : alternativeLocationId =
            pulumi.Input.asOptionalInput<String>(alternativeLocationId),
        authEnabled = pulumi.Input.asOptionalInput<bool>(authEnabled),
        authorizedNetwork =
            pulumi.Input.asOptionalInput<String>(authorizedNetwork),
        connectMode = pulumi.Input.asOptionalInput<String>(connectMode),
        customerManagedKey =
            pulumi.Input.asOptionalInput<String>(customerManagedKey),
        deletionProtection =
            pulumi.Input.asOptionalInput<bool>(deletionProtection),
        displayName = pulumi.Input.asOptionalInput<String>(displayName),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        locationId = pulumi.Input.asOptionalInput<String>(locationId),
        maintenancePolicy =
            pulumi.Input.asOptionalInput<InstanceMaintenancePolicy>(
                maintenancePolicy),
        maintenanceVersion =
            pulumi.Input.asOptionalInput<String>(maintenanceVersion),
        memorySizeGb = pulumi.Input.asInput<int>(memorySizeGb),
        name = pulumi.Input.asOptionalInput<String>(name),
        persistenceConfig =
            pulumi.Input.asOptionalInput<InstancePersistenceConfig>(
                persistenceConfig),
        project = pulumi.Input.asOptionalInput<String>(project),
        readReplicasMode =
            pulumi.Input.asOptionalInput<String>(readReplicasMode),
        redisConfigs =
            pulumi.Input.asOptionalInput<Map<String, String>>(redisConfigs),
        redisVersion = pulumi.Input.asOptionalInput<String>(redisVersion),
        region = pulumi.Input.asOptionalInput<String>(region),
        replicaCount = pulumi.Input.asOptionalInput<int>(replicaCount),
        reservedIpRange = pulumi.Input.asOptionalInput<String>(reservedIpRange),
        secondaryIpRange =
            pulumi.Input.asOptionalInput<String>(secondaryIpRange),
        tier = pulumi.Input.asOptionalInput<String>(tier),
        transitEncryptionMode =
            pulumi.Input.asOptionalInput<String>(transitEncryptionMode);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final alternativeLocationIdValue = alternativeLocationId;
    if (alternativeLocationIdValue != null) {
      map['alternativeLocationId'] = alternativeLocationIdValue;
    }
    final authEnabledValue = authEnabled;
    if (authEnabledValue != null) {
      map['authEnabled'] = authEnabledValue;
    }
    final authorizedNetworkValue = authorizedNetwork;
    if (authorizedNetworkValue != null) {
      map['authorizedNetwork'] = authorizedNetworkValue;
    }
    final connectModeValue = connectMode;
    if (connectModeValue != null) {
      map['connectMode'] = connectModeValue;
    }
    final customerManagedKeyValue = customerManagedKey;
    if (customerManagedKeyValue != null) {
      map['customerManagedKey'] = customerManagedKeyValue;
    }
    final deletionProtectionValue = deletionProtection;
    if (deletionProtectionValue != null) {
      map['deletionProtection'] = deletionProtectionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationIdValue = locationId;
    if (locationIdValue != null) {
      map['locationId'] = locationIdValue;
    }
    final maintenancePolicyValue = maintenancePolicy;
    if (maintenancePolicyValue != null) {
      map['maintenancePolicy'] = pulumi.Input.mapOptionalInputValue<
              InstanceMaintenancePolicy, Map<String, dynamic>>(
          maintenancePolicyValue, (value) => value.toMap());
    }
    final maintenanceVersionValue = maintenanceVersion;
    if (maintenanceVersionValue != null) {
      map['maintenanceVersion'] = maintenanceVersionValue;
    }
    map['memorySizeGb'] = memorySizeGb;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final persistenceConfigValue = persistenceConfig;
    if (persistenceConfigValue != null) {
      map['persistenceConfig'] = pulumi.Input.mapOptionalInputValue<
              InstancePersistenceConfig, Map<String, dynamic>>(
          persistenceConfigValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final readReplicasModeValue = readReplicasMode;
    if (readReplicasModeValue != null) {
      map['readReplicasMode'] = readReplicasModeValue;
    }
    final redisConfigsValue = redisConfigs;
    if (redisConfigsValue != null) {
      map['redisConfigs'] = redisConfigsValue;
    }
    final redisVersionValue = redisVersion;
    if (redisVersionValue != null) {
      map['redisVersion'] = redisVersionValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final replicaCountValue = replicaCount;
    if (replicaCountValue != null) {
      map['replicaCount'] = replicaCountValue;
    }
    final reservedIpRangeValue = reservedIpRange;
    if (reservedIpRangeValue != null) {
      map['reservedIpRange'] = reservedIpRangeValue;
    }
    final secondaryIpRangeValue = secondaryIpRange;
    if (secondaryIpRangeValue != null) {
      map['secondaryIpRange'] = secondaryIpRangeValue;
    }
    final tierValue = tier;
    if (tierValue != null) {
      map['tier'] = tierValue;
    }
    final transitEncryptionModeValue = transitEncryptionMode;
    if (transitEncryptionModeValue != null) {
      map['transitEncryptionMode'] = transitEncryptionModeValue;
    }
    return map;
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      alternativeLocationId: map['alternativeLocationId'] == null
          ? null
          : map['alternativeLocationId'] as String,
      authEnabled:
          map['authEnabled'] == null ? null : map['authEnabled'] as bool,
      authorizedNetwork: map['authorizedNetwork'] == null
          ? null
          : map['authorizedNetwork'] as String,
      connectMode:
          map['connectMode'] == null ? null : map['connectMode'] as String,
      customerManagedKey: map['customerManagedKey'] == null
          ? null
          : map['customerManagedKey'] as String,
      deletionProtection: map['deletionProtection'] == null
          ? null
          : map['deletionProtection'] as bool,
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      locationId:
          map['locationId'] == null ? null : map['locationId'] as String,
      maintenancePolicy: map['maintenancePolicy'] == null
          ? null
          : InstanceMaintenancePolicy.fromMap(
              (map['maintenancePolicy'] as Map).cast<String, dynamic>()),
      maintenanceVersion: map['maintenanceVersion'] == null
          ? null
          : map['maintenanceVersion'] as String,
      memorySizeGb: map['memorySizeGb'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      persistenceConfig: map['persistenceConfig'] == null
          ? null
          : InstancePersistenceConfig.fromMap(
              (map['persistenceConfig'] as Map).cast<String, dynamic>()),
      project: map['project'] == null ? null : map['project'] as String,
      readReplicasMode: map['readReplicasMode'] == null
          ? null
          : map['readReplicasMode'] as String,
      redisConfigs: map['redisConfigs'] == null
          ? null
          : (map['redisConfigs'] as Map).cast<String, String>(),
      redisVersion:
          map['redisVersion'] == null ? null : map['redisVersion'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      replicaCount:
          map['replicaCount'] == null ? null : map['replicaCount'] as int,
      reservedIpRange: map['reservedIpRange'] == null
          ? null
          : map['reservedIpRange'] as String,
      secondaryIpRange: map['secondaryIpRange'] == null
          ? null
          : map['secondaryIpRange'] as String,
      tier: map['tier'] == null ? null : map['tier'] as String,
      transitEncryptionMode: map['transitEncryptionMode'] == null
          ? null
          : map['transitEncryptionMode'] as String,
    );
  }
}
