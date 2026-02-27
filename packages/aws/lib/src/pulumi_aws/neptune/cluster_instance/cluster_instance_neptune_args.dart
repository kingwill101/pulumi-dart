// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ClusterInstance.
class ClusterInstanceNeptuneArgs {
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

  ClusterInstanceNeptuneArgs({
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
    final map = <String, dynamic>{};
    final applyImmediatelyValue = applyImmediately;
    if (applyImmediatelyValue != null) {
      map['applyImmediately'] = applyImmediatelyValue;
    }
    final autoMinorVersionUpgradeValue = autoMinorVersionUpgrade;
    if (autoMinorVersionUpgradeValue != null) {
      map['autoMinorVersionUpgrade'] = autoMinorVersionUpgradeValue;
    }
    final availabilityZoneValue = availabilityZone;
    if (availabilityZoneValue != null) {
      map['availabilityZone'] = availabilityZoneValue;
    }
    map['clusterIdentifier'] = clusterIdentifier;
    final engineValue = engine;
    if (engineValue != null) {
      map['engine'] = engineValue;
    }
    final engineVersionValue = engineVersion;
    if (engineVersionValue != null) {
      map['engineVersion'] = engineVersionValue;
    }
    final identifierValue = identifier;
    if (identifierValue != null) {
      map['identifier'] = identifierValue;
    }
    final identifierPrefixValue = identifierPrefix;
    if (identifierPrefixValue != null) {
      map['identifierPrefix'] = identifierPrefixValue;
    }
    map['instanceClass'] = instanceClass;
    final neptuneParameterGroupNameValue = neptuneParameterGroupName;
    if (neptuneParameterGroupNameValue != null) {
      map['neptuneParameterGroupName'] = neptuneParameterGroupNameValue;
    }
    final neptuneSubnetGroupNameValue = neptuneSubnetGroupName;
    if (neptuneSubnetGroupNameValue != null) {
      map['neptuneSubnetGroupName'] = neptuneSubnetGroupNameValue;
    }
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    final preferredBackupWindowValue = preferredBackupWindow;
    if (preferredBackupWindowValue != null) {
      map['preferredBackupWindow'] = preferredBackupWindowValue;
    }
    final preferredMaintenanceWindowValue = preferredMaintenanceWindow;
    if (preferredMaintenanceWindowValue != null) {
      map['preferredMaintenanceWindow'] = preferredMaintenanceWindowValue;
    }
    final promotionTierValue = promotionTier;
    if (promotionTierValue != null) {
      map['promotionTier'] = promotionTierValue;
    }
    final publiclyAccessibleValue = publiclyAccessible;
    if (publiclyAccessibleValue != null) {
      map['publiclyAccessible'] = publiclyAccessibleValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final skipFinalSnapshotValue = skipFinalSnapshot;
    if (skipFinalSnapshotValue != null) {
      map['skipFinalSnapshot'] = skipFinalSnapshotValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ClusterInstanceNeptuneArgs.fromMap(Map<String, dynamic> map) {
    return ClusterInstanceNeptuneArgs(
      applyImmediately:
          pulumi.Input.asOptionalInput<bool>(map['applyImmediately']),
      autoMinorVersionUpgrade:
          pulumi.Input.asOptionalInput<bool>(map['autoMinorVersionUpgrade']),
      availabilityZone:
          pulumi.Input.asOptionalInput<String>(map['availabilityZone']),
      clusterIdentifier: pulumi.Input.asInput<String>(map['clusterIdentifier']),
      engine: pulumi.Input.asOptionalInput<String>(map['engine']),
      engineVersion: pulumi.Input.asOptionalInput<String>(map['engineVersion']),
      identifier: pulumi.Input.asOptionalInput<String>(map['identifier']),
      identifierPrefix:
          pulumi.Input.asOptionalInput<String>(map['identifierPrefix']),
      instanceClass: pulumi.Input.asInput<String>(map['instanceClass']),
      neptuneParameterGroupName: pulumi.Input.asOptionalInput<String>(
          map['neptuneParameterGroupName']),
      neptuneSubnetGroupName:
          pulumi.Input.asOptionalInput<String>(map['neptuneSubnetGroupName']),
      port: pulumi.Input.asOptionalInput<int>(map['port']),
      preferredBackupWindow:
          pulumi.Input.asOptionalInput<String>(map['preferredBackupWindow']),
      preferredMaintenanceWindow: pulumi.Input.asOptionalInput<String>(
          map['preferredMaintenanceWindow']),
      promotionTier: pulumi.Input.asOptionalInput<int>(map['promotionTier']),
      publiclyAccessible:
          pulumi.Input.asOptionalInput<bool>(map['publiclyAccessible']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      skipFinalSnapshot:
          pulumi.Input.asOptionalInput<bool>(map['skipFinalSnapshot']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
