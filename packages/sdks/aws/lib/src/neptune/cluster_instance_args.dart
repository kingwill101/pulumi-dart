// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_neptune_cluster_instance_cluster_instance_args_doc}
/// The set of arguments for ClusterInstance.
/// {@endtemplate}
/// {@macro pulumi_neptune_cluster_instance_cluster_instance_args_doc}
class ClusterInstanceArgs {
  /// Specifies whether any instance modifications
  /// are applied immediately, or during the next maintenance window. Default is`false`.
  final pulumi.Input<bool>? applyImmediately;
  /// Indicates that minor engine upgrades will be applied automatically to the instance during the maintenance window. Default is `true`.
  final pulumi.Input<bool>? autoMinorVersionUpgrade;
  /// The EC2 Availability Zone that the neptune instance is created in.
  final pulumi.Input<String>? availabilityZone;
  /// The identifier of the `aws.neptune.Cluster` in which to launch this instance.
  final pulumi.Input<String> clusterIdentifier;
  /// The name of the database engine to be used for the neptune instance. Defaults to `neptune`. Valid Values: `neptune`.
  final pulumi.Input<String>? engine;
  /// The neptune engine version. Currently configuring this argumnet has no effect.
  final pulumi.Input<String>? engineVersion;
  /// The identifier for the neptune instance, if omitted, this provider will assign a random, unique identifier.
  final pulumi.Input<String>? identifier;
  /// Creates a unique identifier beginning with the specified prefix. Conflicts with `identifier`.
  final pulumi.Input<String>? identifierPrefix;
  /// The instance class to use.
  final pulumi.Input<String> instanceClass;
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
  /// A map of tags to assign to the instance. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ClusterInstanceArgs].
  /// [applyImmediately] Specifies whether any instance modifications
  /// [autoMinorVersionUpgrade] Indicates that minor engine upgrades will be applied automatically to the instance during the maintenance window. Default is `true`.
  /// [availabilityZone] The EC2 Availability Zone that the neptune instance is created in.
  /// [clusterIdentifier] The identifier of the `aws.neptune.Cluster` in which to launch this instance.
  /// [engine] The name of the database engine to be used for the neptune instance. Defaults to `neptune`. Valid Values: `neptune`.
  /// [engineVersion] The neptune engine version. Currently configuring this argumnet has no effect.
  /// [identifier] The identifier for the neptune instance, if omitted, this provider will assign a random, unique identifier.
  /// [identifierPrefix] Creates a unique identifier beginning with the specified prefix. Conflicts with `identifier`.
  /// [instanceClass] The instance class to use.
  /// [neptuneParameterGroupName] The name of the neptune parameter group to associate with this instance.
  /// [neptuneSubnetGroupName] A subnet group to associate with this neptune instance. **NOTE:** This must match the `neptune_subnet_group_name` of the attached `aws.neptune.Cluster`.
  /// [port] The port on which the DB accepts connections. Defaults to `8182`.
  /// [preferredBackupWindow] The daily time range during which automated backups are created if automated backups are enabled. Eg: "04:00-09:00"
  /// [preferredMaintenanceWindow] The window to perform maintenance in.
  /// [promotionTier] Default 0. Failover Priority setting on instance level. The reader who has lower tier has higher priority to get promoter to writer.
  /// [publiclyAccessible] Bool to control if instance is publicly accessible. Default is `false`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [skipFinalSnapshot] Determines whether a final DB snapshot is created before the DB instance is deleted.
  /// [tags] A map of tags to assign to the instance. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ClusterInstanceArgs({
    pulumi.Output<bool>? applyImmediately,
    pulumi.Output<bool>? autoMinorVersionUpgrade,
    pulumi.Output<String>? availabilityZone,
    required pulumi.Output<String> clusterIdentifier,
    pulumi.Output<String>? engine,
    pulumi.Output<String>? engineVersion,
    pulumi.Output<String>? identifier,
    pulumi.Output<String>? identifierPrefix,
    required pulumi.Output<String> instanceClass,
    pulumi.Output<String>? neptuneParameterGroupName,
    pulumi.Output<String>? neptuneSubnetGroupName,
    pulumi.Output<int>? port,
    pulumi.Output<String>? preferredBackupWindow,
    pulumi.Output<String>? preferredMaintenanceWindow,
    pulumi.Output<int>? promotionTier,
    pulumi.Output<bool>? publiclyAccessible,
    pulumi.Output<String>? region,
    pulumi.Output<bool>? skipFinalSnapshot,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      applyImmediately = pulumi.Input.asOptionalInput<bool>(applyImmediately),
      autoMinorVersionUpgrade = pulumi.Input.asOptionalInput<bool>(autoMinorVersionUpgrade),
      availabilityZone = pulumi.Input.asOptionalInput<String>(availabilityZone),
      clusterIdentifier = pulumi.Input.asInput<String>(clusterIdentifier),
      engine = pulumi.Input.asOptionalInput<String>(engine),
      engineVersion = pulumi.Input.asOptionalInput<String>(engineVersion),
      identifier = pulumi.Input.asOptionalInput<String>(identifier),
      identifierPrefix = pulumi.Input.asOptionalInput<String>(identifierPrefix),
      instanceClass = pulumi.Input.asInput<String>(instanceClass),
      neptuneParameterGroupName = pulumi.Input.asOptionalInput<String>(neptuneParameterGroupName),
      neptuneSubnetGroupName = pulumi.Input.asOptionalInput<String>(neptuneSubnetGroupName),
      port = pulumi.Input.asOptionalInput<int>(port),
      preferredBackupWindow = pulumi.Input.asOptionalInput<String>(preferredBackupWindow),
      preferredMaintenanceWindow = pulumi.Input.asOptionalInput<String>(preferredMaintenanceWindow),
      promotionTier = pulumi.Input.asOptionalInput<int>(promotionTier),
      publiclyAccessible = pulumi.Input.asOptionalInput<bool>(publiclyAccessible),
      region = pulumi.Input.asOptionalInput<String>(region),
      skipFinalSnapshot = pulumi.Input.asOptionalInput<bool>(skipFinalSnapshot),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applyImmediately': ?applyImmediately,
      'autoMinorVersionUpgrade': ?autoMinorVersionUpgrade,
      'availabilityZone': ?availabilityZone,
      'clusterIdentifier': clusterIdentifier,
      'engine': ?engine,
      'engineVersion': ?engineVersion,
      'identifier': ?identifier,
      'identifierPrefix': ?identifierPrefix,
      'instanceClass': instanceClass,
      'neptuneParameterGroupName': ?neptuneParameterGroupName,
      'neptuneSubnetGroupName': ?neptuneSubnetGroupName,
      'port': ?port,
      'preferredBackupWindow': ?preferredBackupWindow,
      'preferredMaintenanceWindow': ?preferredMaintenanceWindow,
      'promotionTier': ?promotionTier,
      'publiclyAccessible': ?publiclyAccessible,
      'region': ?region,
      'skipFinalSnapshot': ?skipFinalSnapshot,
      'tags': ?tags,
    };
  }

  factory ClusterInstanceArgs.fromMap(Map<String, dynamic> map) {
    return ClusterInstanceArgs(
      applyImmediately: map['applyImmediately'] == null ? null : pulumi.Output.create<bool>(map['applyImmediately'] as bool),
      autoMinorVersionUpgrade: map['autoMinorVersionUpgrade'] == null ? null : pulumi.Output.create<bool>(map['autoMinorVersionUpgrade'] as bool),
      availabilityZone: map['availabilityZone'] == null ? null : pulumi.Output.create<String>(map['availabilityZone'] as String),
      clusterIdentifier: pulumi.Output.create<String>(map['clusterIdentifier'] as String),
      engine: map['engine'] == null ? null : pulumi.Output.create<String>(map['engine'] as String),
      engineVersion: map['engineVersion'] == null ? null : pulumi.Output.create<String>(map['engineVersion'] as String),
      identifier: map['identifier'] == null ? null : pulumi.Output.create<String>(map['identifier'] as String),
      identifierPrefix: map['identifierPrefix'] == null ? null : pulumi.Output.create<String>(map['identifierPrefix'] as String),
      instanceClass: pulumi.Output.create<String>(map['instanceClass'] as String),
      neptuneParameterGroupName: map['neptuneParameterGroupName'] == null ? null : pulumi.Output.create<String>(map['neptuneParameterGroupName'] as String),
      neptuneSubnetGroupName: map['neptuneSubnetGroupName'] == null ? null : pulumi.Output.create<String>(map['neptuneSubnetGroupName'] as String),
      port: map['port'] == null ? null : pulumi.Output.create<int>(map['port'] as int),
      preferredBackupWindow: map['preferredBackupWindow'] == null ? null : pulumi.Output.create<String>(map['preferredBackupWindow'] as String),
      preferredMaintenanceWindow: map['preferredMaintenanceWindow'] == null ? null : pulumi.Output.create<String>(map['preferredMaintenanceWindow'] as String),
      promotionTier: map['promotionTier'] == null ? null : pulumi.Output.create<int>(map['promotionTier'] as int),
      publiclyAccessible: map['publiclyAccessible'] == null ? null : pulumi.Output.create<bool>(map['publiclyAccessible'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      skipFinalSnapshot: map['skipFinalSnapshot'] == null ? null : pulumi.Output.create<bool>(map['skipFinalSnapshot'] as bool),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

