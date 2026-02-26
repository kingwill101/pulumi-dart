// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ClusterInstance.
class ClusterInstanceArgs2 {
  /// Specifies whether any instance modifications
  /// are applied immediately, or during the next maintenance window. Default is<span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? applyImmediately;

  /// Indicates that minor engine upgrades will be applied automatically to the instance during the maintenance window. Default is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final Input<bool>? autoMinorVersionUpgrade;

  /// The EC2 Availability Zone that the neptune instance is created in.
  final Input<String>? availabilityZone;

  /// The identifier of the <span pulumi-lang-nodejs="`aws.neptune.Cluster`" pulumi-lang-dotnet="`aws.neptune.Cluster`" pulumi-lang-go="`neptune.Cluster`" pulumi-lang-python="`neptune.Cluster`" pulumi-lang-yaml="`aws.neptune.Cluster`" pulumi-lang-java="`aws.neptune.Cluster`">`aws.neptune.Cluster`</span> in which to launch this instance.
  final Input<String> clusterIdentifier;

  /// The name of the database engine to be used for the neptune instance. Defaults to <span pulumi-lang-nodejs="`neptune`" pulumi-lang-dotnet="`Neptune`" pulumi-lang-go="`neptune`" pulumi-lang-python="`neptune`" pulumi-lang-yaml="`neptune`" pulumi-lang-java="`neptune`">`neptune`</span>. Valid Values: <span pulumi-lang-nodejs="`neptune`" pulumi-lang-dotnet="`Neptune`" pulumi-lang-go="`neptune`" pulumi-lang-python="`neptune`" pulumi-lang-yaml="`neptune`" pulumi-lang-java="`neptune`">`neptune`</span>.
  final Input<String>? engine;

  /// The neptune engine version. Currently configuring this argumnet has no effect.
  final Input<String>? engineVersion;

  /// The identifier for the neptune instance, if omitted, this provider will assign a random, unique identifier.
  final Input<String>? identifier;

  /// Creates a unique identifier beginning with the specified prefix. Conflicts with <span pulumi-lang-nodejs="`identifier`" pulumi-lang-dotnet="`Identifier`" pulumi-lang-go="`identifier`" pulumi-lang-python="`identifier`" pulumi-lang-yaml="`identifier`" pulumi-lang-java="`identifier`">`identifier`</span>.
  final Input<String>? identifierPrefix;

  /// The instance class to use.
  final Input<String> instanceClass;

  /// The name of the neptune parameter group to associate with this instance.
  final Input<String>? neptuneParameterGroupName;

  /// A subnet group to associate with this neptune instance. **NOTE:** This must match the <span pulumi-lang-nodejs="`neptuneSubnetGroupName`" pulumi-lang-dotnet="`NeptuneSubnetGroupName`" pulumi-lang-go="`neptuneSubnetGroupName`" pulumi-lang-python="`neptune_subnet_group_name`" pulumi-lang-yaml="`neptuneSubnetGroupName`" pulumi-lang-java="`neptuneSubnetGroupName`">`neptune_subnet_group_name`</span> of the attached <span pulumi-lang-nodejs="`aws.neptune.Cluster`" pulumi-lang-dotnet="`aws.neptune.Cluster`" pulumi-lang-go="`neptune.Cluster`" pulumi-lang-python="`neptune.Cluster`" pulumi-lang-yaml="`aws.neptune.Cluster`" pulumi-lang-java="`aws.neptune.Cluster`">`aws.neptune.Cluster`</span>.
  final Input<String>? neptuneSubnetGroupName;

  /// The port on which the DB accepts connections. Defaults to <span pulumi-lang-nodejs="`8182`" pulumi-lang-dotnet="`8182`" pulumi-lang-go="`8182`" pulumi-lang-python="`8182`" pulumi-lang-yaml="`8182`" pulumi-lang-java="`8182`">`8182`</span>.
  final Input<int>? port;

  /// The daily time range during which automated backups are created if automated backups are enabled. Eg: "04:00-09:00"
  final Input<String>? preferredBackupWindow;

  /// The window to perform maintenance in.
  /// Syntax: "ddd:hh24:mi-ddd:hh24:mi". Eg: "Mon:00:00-Mon:03:00".
  final Input<String>? preferredMaintenanceWindow;

  /// Default 0. Failover Priority setting on instance level. The reader who has lower tier has higher priority to get promoter to writer.
  final Input<int>? promotionTier;

  /// Bool to control if instance is publicly accessible. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? publiclyAccessible;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Determines whether a final DB snapshot is created before the DB instance is deleted.
  final Input<bool>? skipFinalSnapshot;

  /// A map of tags to assign to the instance. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  ClusterInstanceArgs2({
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

  factory ClusterInstanceArgs2.fromMap(Map<String, dynamic> map) {
    return ClusterInstanceArgs2(
      applyImmediately: Input.asOptionalInput<bool>(map['applyImmediately']),
      autoMinorVersionUpgrade:
          Input.asOptionalInput<bool>(map['autoMinorVersionUpgrade']),
      availabilityZone: Input.asOptionalInput<String>(map['availabilityZone']),
      clusterIdentifier: Input.asInput<String>(map['clusterIdentifier']),
      engine: Input.asOptionalInput<String>(map['engine']),
      engineVersion: Input.asOptionalInput<String>(map['engineVersion']),
      identifier: Input.asOptionalInput<String>(map['identifier']),
      identifierPrefix: Input.asOptionalInput<String>(map['identifierPrefix']),
      instanceClass: Input.asInput<String>(map['instanceClass']),
      neptuneParameterGroupName:
          Input.asOptionalInput<String>(map['neptuneParameterGroupName']),
      neptuneSubnetGroupName:
          Input.asOptionalInput<String>(map['neptuneSubnetGroupName']),
      port: Input.asOptionalInput<int>(map['port']),
      preferredBackupWindow:
          Input.asOptionalInput<String>(map['preferredBackupWindow']),
      preferredMaintenanceWindow:
          Input.asOptionalInput<String>(map['preferredMaintenanceWindow']),
      promotionTier: Input.asOptionalInput<int>(map['promotionTier']),
      publiclyAccessible:
          Input.asOptionalInput<bool>(map['publiclyAccessible']),
      region: Input.asOptionalInput<String>(map['region']),
      skipFinalSnapshot: Input.asOptionalInput<bool>(map['skipFinalSnapshot']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
