// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ClusterInstance resources.
class ClusterInstanceState {
  /// The hostname of the instance. See also `endpoint` and `port`.
  final pulumi.Input<String>? address;
  /// Specifies whether any instance modifications
  /// are applied immediately, or during the next maintenance window. Default is`false`.
  final pulumi.Input<bool>? applyImmediately;
  /// Amazon Resource Name (ARN) of neptune instance
  final pulumi.Input<String>? arn;
  /// Indicates that minor engine upgrades will be applied automatically to the instance during the maintenance window. Default is `true`.
  final pulumi.Input<bool>? autoMinorVersionUpgrade;
  /// The EC2 Availability Zone that the neptune instance is created in.
  final pulumi.Input<String>? availabilityZone;
  /// The identifier of the `aws.neptune.Cluster` in which to launch this instance.
  final pulumi.Input<String>? clusterIdentifier;
  /// The region-unique, immutable identifier for the neptune instance.
  final pulumi.Input<String>? dbiResourceId;
  /// The connection endpoint in `address:port` format.
  final pulumi.Input<String>? endpoint;
  /// The name of the database engine to be used for the neptune instance. Defaults to `neptune`. Valid Values: `neptune`.
  final pulumi.Input<String>? engine;
  /// The neptune engine version. Currently configuring this argumnet has no effect.
  final pulumi.Input<String>? engineVersion;
  /// The identifier for the neptune instance, if omitted, this provider will assign a random, unique identifier.
  final pulumi.Input<String>? identifier;
  /// Creates a unique identifier beginning with the specified prefix. Conflicts with `identifier`.
  final pulumi.Input<String>? identifierPrefix;
  /// The instance class to use.
  final pulumi.Input<String>? instanceClass;
  /// The ARN for the KMS encryption key if one is set to the neptune cluster.
  final pulumi.Input<String>? kmsKeyArn;
  /// The name of the neptune parameter group to associate with this instance.
  final pulumi.Input<String>? neptuneParameterGroupName;
  /// A subnet group to associate with this neptune instance. **NOTE:** This must match the `neptune_subnet_group_name` of the attached `aws.neptune.Cluster`.
  final pulumi.Input<String>? neptuneSubnetGroupName;
  /// The port on which the DB accepts connections. Defaults to `8182`.
  final pulumi.Input<int>? port;
  /// The daily time range during which automated backups are created if automated backups are enabled. Eg: "04:00-09:00"
  final pulumi.Input<String>? preferredBackupWindow;
  /// The window to perform maintenance in.
  /// Syntax: "ddd:hh24:mi-ddd:hh24:mi". Eg: "Mon:00:00-Mon:03:00".
  final pulumi.Input<String>? preferredMaintenanceWindow;
  /// Default 0. Failover Priority setting on instance level. The reader who has lower tier has higher priority to get promoter to writer.
  final pulumi.Input<int>? promotionTier;
  /// Bool to control if instance is publicly accessible. Default is `false`.
  final pulumi.Input<bool>? publiclyAccessible;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Determines whether a final DB snapshot is created before the DB instance is deleted.
  final pulumi.Input<bool>? skipFinalSnapshot;
  /// Specifies whether the neptune cluster is encrypted.
  final pulumi.Input<bool>? storageEncrypted;
  /// Storage type associated with the cluster `standard/iopt1`.
  final pulumi.Input<String>? storageType;
  /// A map of tags to assign to the instance. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Boolean indicating if this instance is writable. `False` indicates this instance is a read replica.
  final pulumi.Input<bool>? writer;

  /// Creates a new [ClusterInstanceState].
  /// [address] The hostname of the instance. See also `endpoint` and `port`.
  /// [applyImmediately] Specifies whether any instance modifications
  /// [arn] Amazon Resource Name (ARN) of neptune instance
  /// [autoMinorVersionUpgrade] Indicates that minor engine upgrades will be applied automatically to the instance during the maintenance window. Default is `true`.
  /// [availabilityZone] The EC2 Availability Zone that the neptune instance is created in.
  /// [clusterIdentifier] The identifier of the `aws.neptune.Cluster` in which to launch this instance.
  /// [dbiResourceId] The region-unique, immutable identifier for the neptune instance.
  /// [endpoint] The connection endpoint in `address:port` format.
  /// [engine] The name of the database engine to be used for the neptune instance. Defaults to `neptune`. Valid Values: `neptune`.
  /// [engineVersion] The neptune engine version. Currently configuring this argumnet has no effect.
  /// [identifier] The identifier for the neptune instance, if omitted, this provider will assign a random, unique identifier.
  /// [identifierPrefix] Creates a unique identifier beginning with the specified prefix. Conflicts with `identifier`.
  /// [instanceClass] The instance class to use.
  /// [kmsKeyArn] The ARN for the KMS encryption key if one is set to the neptune cluster.
  /// [neptuneParameterGroupName] The name of the neptune parameter group to associate with this instance.
  /// [neptuneSubnetGroupName] A subnet group to associate with this neptune instance. **NOTE:** This must match the `neptune_subnet_group_name` of the attached `aws.neptune.Cluster`.
  /// [port] The port on which the DB accepts connections. Defaults to `8182`.
  /// [preferredBackupWindow] The daily time range during which automated backups are created if automated backups are enabled. Eg: "04:00-09:00"
  /// [preferredMaintenanceWindow] The window to perform maintenance in.
  /// [promotionTier] Default 0. Failover Priority setting on instance level. The reader who has lower tier has higher priority to get promoter to writer.
  /// [publiclyAccessible] Bool to control if instance is publicly accessible. Default is `false`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [skipFinalSnapshot] Determines whether a final DB snapshot is created before the DB instance is deleted.
  /// [storageEncrypted] Specifies whether the neptune cluster is encrypted.
  /// [storageType] Storage type associated with the cluster `standard/iopt1`.
  /// [tags] A map of tags to assign to the instance. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [writer] Boolean indicating if this instance is writable. `False` indicates this instance is a read replica.
  ClusterInstanceState({
    pulumi.Output<String>? address,
    pulumi.Output<bool>? applyImmediately,
    pulumi.Output<String>? arn,
    pulumi.Output<bool>? autoMinorVersionUpgrade,
    pulumi.Output<String>? availabilityZone,
    pulumi.Output<String>? clusterIdentifier,
    pulumi.Output<String>? dbiResourceId,
    pulumi.Output<String>? endpoint,
    pulumi.Output<String>? engine,
    pulumi.Output<String>? engineVersion,
    pulumi.Output<String>? identifier,
    pulumi.Output<String>? identifierPrefix,
    pulumi.Output<String>? instanceClass,
    pulumi.Output<String>? kmsKeyArn,
    pulumi.Output<String>? neptuneParameterGroupName,
    pulumi.Output<String>? neptuneSubnetGroupName,
    pulumi.Output<int>? port,
    pulumi.Output<String>? preferredBackupWindow,
    pulumi.Output<String>? preferredMaintenanceWindow,
    pulumi.Output<int>? promotionTier,
    pulumi.Output<bool>? publiclyAccessible,
    pulumi.Output<String>? region,
    pulumi.Output<bool>? skipFinalSnapshot,
    pulumi.Output<bool>? storageEncrypted,
    pulumi.Output<String>? storageType,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<bool>? writer,
  }) :
      address = pulumi.Input.asOptionalInput<String>(address),
      applyImmediately = pulumi.Input.asOptionalInput<bool>(applyImmediately),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      autoMinorVersionUpgrade = pulumi.Input.asOptionalInput<bool>(autoMinorVersionUpgrade),
      availabilityZone = pulumi.Input.asOptionalInput<String>(availabilityZone),
      clusterIdentifier = pulumi.Input.asOptionalInput<String>(clusterIdentifier),
      dbiResourceId = pulumi.Input.asOptionalInput<String>(dbiResourceId),
      endpoint = pulumi.Input.asOptionalInput<String>(endpoint),
      engine = pulumi.Input.asOptionalInput<String>(engine),
      engineVersion = pulumi.Input.asOptionalInput<String>(engineVersion),
      identifier = pulumi.Input.asOptionalInput<String>(identifier),
      identifierPrefix = pulumi.Input.asOptionalInput<String>(identifierPrefix),
      instanceClass = pulumi.Input.asOptionalInput<String>(instanceClass),
      kmsKeyArn = pulumi.Input.asOptionalInput<String>(kmsKeyArn),
      neptuneParameterGroupName = pulumi.Input.asOptionalInput<String>(neptuneParameterGroupName),
      neptuneSubnetGroupName = pulumi.Input.asOptionalInput<String>(neptuneSubnetGroupName),
      port = pulumi.Input.asOptionalInput<int>(port),
      preferredBackupWindow = pulumi.Input.asOptionalInput<String>(preferredBackupWindow),
      preferredMaintenanceWindow = pulumi.Input.asOptionalInput<String>(preferredMaintenanceWindow),
      promotionTier = pulumi.Input.asOptionalInput<int>(promotionTier),
      publiclyAccessible = pulumi.Input.asOptionalInput<bool>(publiclyAccessible),
      region = pulumi.Input.asOptionalInput<String>(region),
      skipFinalSnapshot = pulumi.Input.asOptionalInput<bool>(skipFinalSnapshot),
      storageEncrypted = pulumi.Input.asOptionalInput<bool>(storageEncrypted),
      storageType = pulumi.Input.asOptionalInput<String>(storageType),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      writer = pulumi.Input.asOptionalInput<bool>(writer);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'applyImmediately': ?applyImmediately,
      'arn': ?arn,
      'autoMinorVersionUpgrade': ?autoMinorVersionUpgrade,
      'availabilityZone': ?availabilityZone,
      'clusterIdentifier': ?clusterIdentifier,
      'dbiResourceId': ?dbiResourceId,
      'endpoint': ?endpoint,
      'engine': ?engine,
      'engineVersion': ?engineVersion,
      'identifier': ?identifier,
      'identifierPrefix': ?identifierPrefix,
      'instanceClass': ?instanceClass,
      'kmsKeyArn': ?kmsKeyArn,
      'neptuneParameterGroupName': ?neptuneParameterGroupName,
      'neptuneSubnetGroupName': ?neptuneSubnetGroupName,
      'port': ?port,
      'preferredBackupWindow': ?preferredBackupWindow,
      'preferredMaintenanceWindow': ?preferredMaintenanceWindow,
      'promotionTier': ?promotionTier,
      'publiclyAccessible': ?publiclyAccessible,
      'region': ?region,
      'skipFinalSnapshot': ?skipFinalSnapshot,
      'storageEncrypted': ?storageEncrypted,
      'storageType': ?storageType,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'writer': ?writer,
    };
  }

  factory ClusterInstanceState.fromMap(Map<String, dynamic> map) {
    return ClusterInstanceState(
      address: map['address'] == null ? null : pulumi.Output.create<String>(map['address'] as String),
      applyImmediately: map['applyImmediately'] == null ? null : pulumi.Output.create<bool>(map['applyImmediately'] as bool),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      autoMinorVersionUpgrade: map['autoMinorVersionUpgrade'] == null ? null : pulumi.Output.create<bool>(map['autoMinorVersionUpgrade'] as bool),
      availabilityZone: map['availabilityZone'] == null ? null : pulumi.Output.create<String>(map['availabilityZone'] as String),
      clusterIdentifier: map['clusterIdentifier'] == null ? null : pulumi.Output.create<String>(map['clusterIdentifier'] as String),
      dbiResourceId: map['dbiResourceId'] == null ? null : pulumi.Output.create<String>(map['dbiResourceId'] as String),
      endpoint: map['endpoint'] == null ? null : pulumi.Output.create<String>(map['endpoint'] as String),
      engine: map['engine'] == null ? null : pulumi.Output.create<String>(map['engine'] as String),
      engineVersion: map['engineVersion'] == null ? null : pulumi.Output.create<String>(map['engineVersion'] as String),
      identifier: map['identifier'] == null ? null : pulumi.Output.create<String>(map['identifier'] as String),
      identifierPrefix: map['identifierPrefix'] == null ? null : pulumi.Output.create<String>(map['identifierPrefix'] as String),
      instanceClass: map['instanceClass'] == null ? null : pulumi.Output.create<String>(map['instanceClass'] as String),
      kmsKeyArn: map['kmsKeyArn'] == null ? null : pulumi.Output.create<String>(map['kmsKeyArn'] as String),
      neptuneParameterGroupName: map['neptuneParameterGroupName'] == null ? null : pulumi.Output.create<String>(map['neptuneParameterGroupName'] as String),
      neptuneSubnetGroupName: map['neptuneSubnetGroupName'] == null ? null : pulumi.Output.create<String>(map['neptuneSubnetGroupName'] as String),
      port: map['port'] == null ? null : pulumi.Output.create<int>(map['port'] as int),
      preferredBackupWindow: map['preferredBackupWindow'] == null ? null : pulumi.Output.create<String>(map['preferredBackupWindow'] as String),
      preferredMaintenanceWindow: map['preferredMaintenanceWindow'] == null ? null : pulumi.Output.create<String>(map['preferredMaintenanceWindow'] as String),
      promotionTier: map['promotionTier'] == null ? null : pulumi.Output.create<int>(map['promotionTier'] as int),
      publiclyAccessible: map['publiclyAccessible'] == null ? null : pulumi.Output.create<bool>(map['publiclyAccessible'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      skipFinalSnapshot: map['skipFinalSnapshot'] == null ? null : pulumi.Output.create<bool>(map['skipFinalSnapshot'] as bool),
      storageEncrypted: map['storageEncrypted'] == null ? null : pulumi.Output.create<bool>(map['storageEncrypted'] as bool),
      storageType: map['storageType'] == null ? null : pulumi.Output.create<String>(map['storageType'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      writer: map['writer'] == null ? null : pulumi.Output.create<bool>(map['writer'] as bool),
    );
  }
}

