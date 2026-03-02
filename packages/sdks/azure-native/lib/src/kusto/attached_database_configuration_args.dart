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
    this.attachedDatabaseConfigurationName,
    required this.clusterName,
    required this.clusterResourceId,
    required this.databaseName,
    this.databaseNameOverride,
    this.databaseNamePrefix,
    required this.defaultPrincipalsModificationKind,
    this.location,
    required this.resourceGroupName,
    this.tableLevelSharingProperties,
  });

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
      attachedDatabaseConfigurationName: map['attachedDatabaseConfigurationName'] == null ? null : (map['attachedDatabaseConfigurationName']! as String).input(),
      clusterName: (map['clusterName'] as String).input(),
      clusterResourceId: (map['clusterResourceId'] as String).input(),
      databaseName: (map['databaseName'] as String).input(),
      databaseNameOverride: map['databaseNameOverride'] == null ? null : (map['databaseNameOverride']! as String).input(),
      databaseNamePrefix: map['databaseNamePrefix'] == null ? null : (map['databaseNamePrefix']! as String).input(),
      defaultPrincipalsModificationKind: (map['defaultPrincipalsModificationKind'] as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tableLevelSharingProperties: map['tableLevelSharingProperties'] == null ? null : (TableLevelSharingProperties.fromMap((map['tableLevelSharingProperties']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

