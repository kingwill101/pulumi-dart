// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_level_sharing_properties.dart';

/// {@template pulumi_kusto_attached_database_configuration_args_doc}
/// The set of arguments for AttachedDatabaseConfiguration.
/// {@endtemplate}
/// {@macro pulumi_kusto_attached_database_configuration_args_doc}
class AttachedDatabaseConfigurationArgs {
  /// The name of the attached database configuration.
  final pulumi.Input<String>? attachedDatabaseConfigurationName;
  /// The name of the Kusto cluster.
  final pulumi.Input<String> clusterName;
  /// The resource id of the cluster where the databases you would like to attach reside.
  final pulumi.Input<String> clusterResourceId;
  /// The name of the database which you would like to attach, use * if you want to follow all current and future databases.
  final pulumi.Input<String> databaseName;
  /// Overrides the original database name. Relevant only when attaching to a specific database.
  final pulumi.Input<String>? databaseNameOverride;
  /// Adds a prefix to the attached databases name. When following an entire cluster, that prefix would be added to all of the databases original names from leader cluster.
  final pulumi.Input<String>? databaseNamePrefix;
  /// The default principals modification kind
  final pulumi.Input<String> defaultPrincipalsModificationKind;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Table level sharing specifications
  final pulumi.Input<TableLevelSharingProperties>? tableLevelSharingProperties;

  /// Creates a new [AttachedDatabaseConfigurationArgs].
  /// [attachedDatabaseConfigurationName] The name of the attached database configuration.
  /// [clusterName] The name of the Kusto cluster.
  /// [clusterResourceId] The resource id of the cluster where the databases you would like to attach reside.
  /// [databaseName] The name of the database which you would like to attach, use * if you want to follow all current and future databases.
  /// [databaseNameOverride] Overrides the original database name. Relevant only when attaching to a specific database.
  /// [databaseNamePrefix] Adds a prefix to the attached databases name. When following an entire cluster, that prefix would be added to all of the databases original names from leader cluster.
  /// [defaultPrincipalsModificationKind] The default principals modification kind
  /// [location] Resource location.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tableLevelSharingProperties] Table level sharing specifications
  AttachedDatabaseConfigurationArgs({
    pulumi.Output<String>? attachedDatabaseConfigurationName,
    required pulumi.Output<String> clusterName,
    required pulumi.Output<String> clusterResourceId,
    required pulumi.Output<String> databaseName,
    pulumi.Output<String>? databaseNameOverride,
    pulumi.Output<String>? databaseNamePrefix,
    required pulumi.Output<String> defaultPrincipalsModificationKind,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<TableLevelSharingProperties>? tableLevelSharingProperties,
  }) :
      attachedDatabaseConfigurationName = pulumi.Input.asOptionalInput<String>(attachedDatabaseConfigurationName),
      clusterName = pulumi.Input.asInput<String>(clusterName),
      clusterResourceId = pulumi.Input.asInput<String>(clusterResourceId),
      databaseName = pulumi.Input.asInput<String>(databaseName),
      databaseNameOverride = pulumi.Input.asOptionalInput<String>(databaseNameOverride),
      databaseNamePrefix = pulumi.Input.asOptionalInput<String>(databaseNamePrefix),
      defaultPrincipalsModificationKind = pulumi.Input.asInput<String>(defaultPrincipalsModificationKind),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tableLevelSharingProperties = pulumi.Input.asOptionalInput<TableLevelSharingProperties>(tableLevelSharingProperties);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachedDatabaseConfigurationName': ?attachedDatabaseConfigurationName,
      'clusterName': clusterName,
      'clusterResourceId': clusterResourceId,
      'databaseName': databaseName,
      'databaseNameOverride': ?databaseNameOverride,
      'databaseNamePrefix': ?databaseNamePrefix,
      'defaultPrincipalsModificationKind': defaultPrincipalsModificationKind,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tableLevelSharingProperties': ?pulumi.Input.mapOptionalInputValue<TableLevelSharingProperties, Map<String, dynamic>>(tableLevelSharingProperties, (value) => value.toMap()),
    };
  }

  factory AttachedDatabaseConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return AttachedDatabaseConfigurationArgs(
      attachedDatabaseConfigurationName: map['attachedDatabaseConfigurationName'] == null ? null : pulumi.Output.create<String>(map['attachedDatabaseConfigurationName'] as String),
      clusterName: pulumi.Output.create<String>(map['clusterName'] as String),
      clusterResourceId: pulumi.Output.create<String>(map['clusterResourceId'] as String),
      databaseName: pulumi.Output.create<String>(map['databaseName'] as String),
      databaseNameOverride: map['databaseNameOverride'] == null ? null : pulumi.Output.create<String>(map['databaseNameOverride'] as String),
      databaseNamePrefix: map['databaseNamePrefix'] == null ? null : pulumi.Output.create<String>(map['databaseNamePrefix'] as String),
      defaultPrincipalsModificationKind: pulumi.Output.create<String>(map['defaultPrincipalsModificationKind'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tableLevelSharingProperties: map['tableLevelSharingProperties'] == null ? null : pulumi.Output.create<TableLevelSharingProperties>(TableLevelSharingProperties.fromMap((map['tableLevelSharingProperties'] as Map).cast<String, dynamic>())),
    );
  }
}

