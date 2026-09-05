// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_neptune_cluster_instance_cluster_instance_args_doc}
/// The set of arguments for ClusterInstance.
/// {@endtemplate}
/// {@macro pulumi_neptune_cluster_instance_cluster_instance_args_doc}
class ClusterInstanceArgs {
  /// Specifies whether any instance modifications
  /// are applied immediately, or during the next maintenance window. Default is`false`.
  final pulumi.Input<bool?>? applyImmediately;
  /// Indicates that minor engine upgrades will be applied automatically to the instance during the maintenance window. Default is `true`.
  final pulumi.Input<bool?>? autoMinorVersionUpgrade;
  /// The EC2 Availability Zone that the neptune instance is created in.
  final pulumi.Input<String?>? availabilityZone;
  /// The identifier of the `aws.neptune.Cluster` in which to launch this instance.
  final pulumi.Input<String> clusterIdentifier;
  /// The name of the database engine to be used for the neptune instance. Defaults to `neptune`. Valid Values: `neptune`.
  final pulumi.Input<String?>? engine;
  /// The neptune engine version. Currently configuring this argumnet has no effect.
  final pulumi.Input<String?>? engineVersion;
  /// The identifier for the neptune instance, if omitted, this provider will assign a random, unique identifier.
  final pulumi.Input<String?>? identifier;
  /// Creates a unique identifier beginning with the specified prefix. Conflicts with `identifier`.
  final pulumi.Input<String?>? identifierPrefix;
  /// The instance class to use.
  final pulumi.Input<String> instanceClass;
  /// The name of the neptune parameter group to associate with this instance.
  final pulumi.Input<String?>? neptuneParameterGroupName;
  /// A subnet group to associate with this neptune instance. **NOTE:** This must match the `neptuneSubnetGroupName` of the attached `aws.neptune.Cluster`.
  final pulumi.Input<String?>? neptuneSubnetGroupName;
  /// The port on which the DB accepts connections. Defaults to `8182`.
  final pulumi.Input<int?>? port;
  /// The daily time range during which automated backups are created if automated backups are enabled. Eg: "04:00-09:00"
  final pulumi.Input<String?>? preferredBackupWindow;
  /// The window to perform maintenance in.
  /// Syntax: "ddd:hh24:mi-ddd:hh24:mi". Eg: "Mon:00:00-Mon:03:00".
  final pulumi.Input<String?>? preferredMaintenanceWindow;
  /// Default 0. Failover Priority setting on instance level. The reader who has lower tier has higher priority to get promoter to writer.
  final pulumi.Input<int?>? promotionTier;
  /// Bool to control if instance is publicly accessible. Default is `false`.
  final pulumi.Input<bool?>? publiclyAccessible;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Determines whether a final DB snapshot is created before the DB instance is deleted.
  final pulumi.Input<bool?>? skipFinalSnapshot;
  /// A map of tags to assign to the instance. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

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
  /// [neptuneSubnetGroupName] A subnet group to associate with this neptune instance. **NOTE:** This must match the `neptuneSubnetGroupName` of the attached `aws.neptune.Cluster`.
  /// [port] The port on which the DB accepts connections. Defaults to `8182`.
  /// [preferredBackupWindow] The daily time range during which automated backups are created if automated backups are enabled. Eg: "04:00-09:00"
  /// [preferredMaintenanceWindow] The window to perform maintenance in.
  /// [promotionTier] Default 0. Failover Priority setting on instance level. The reader who has lower tier has higher priority to get promoter to writer.
  /// [publiclyAccessible] Bool to control if instance is publicly accessible. Default is `false`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [skipFinalSnapshot] Determines whether a final DB snapshot is created before the DB instance is deleted.
  /// [tags] A map of tags to assign to the instance. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const ClusterInstanceArgs({
    this.applyImmediately,
    this.autoMinorVersionUpgrade,
    this.availabilityZone,
    required this.clusterIdentifier,
    this.engine,
    this.engineVersion,
    this.identifier,
    this.identifierPrefix,
    required this.instanceClass,
    this.neptuneParameterGroupName,
    this.neptuneSubnetGroupName,
    this.port,
    this.preferredBackupWindow,
    this.preferredMaintenanceWindow,
    this.promotionTier,
    this.publiclyAccessible,
    this.region,
    this.skipFinalSnapshot,
    this.tags,
  });

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
      applyImmediately: (() { final guardedValue = map['applyImmediately']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      autoMinorVersionUpgrade: (() { final guardedValue = map['autoMinorVersionUpgrade']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterIdentifier: pulumi.Input.fromValue(map['clusterIdentifier'] as String),
      engine: (() { final guardedValue = map['engine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engineVersion: (() { final guardedValue = map['engineVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identifier: (() { final guardedValue = map['identifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identifierPrefix: (() { final guardedValue = map['identifierPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceClass: pulumi.Input.fromValue(map['instanceClass'] as String),
      neptuneParameterGroupName: (() { final guardedValue = map['neptuneParameterGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      neptuneSubnetGroupName: (() { final guardedValue = map['neptuneSubnetGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      preferredBackupWindow: (() { final guardedValue = map['preferredBackupWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preferredMaintenanceWindow: (() { final guardedValue = map['preferredMaintenanceWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      promotionTier: (() { final guardedValue = map['promotionTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      publiclyAccessible: (() { final guardedValue = map['publiclyAccessible']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skipFinalSnapshot: (() { final guardedValue = map['skipFinalSnapshot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
