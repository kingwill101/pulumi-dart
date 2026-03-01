// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'attached_database_configuration_sharing.dart';

/// {@template pulumi_kusto_attached_database_configuration_attached_database_configuration_args_doc}
/// The set of arguments for AttachedDatabaseConfiguration.
/// {@endtemplate}
/// {@macro pulumi_kusto_attached_database_configuration_attached_database_configuration_args_doc}
class AttachedDatabaseConfigurationArgs {
  /// The resource id of the cluster where the databases you would like to attach reside.
  final pulumi.Input<String>? clusterId;
  /// Specifies the name of the Kusto Cluster for which the configuration will be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> clusterName;
  final pulumi.Input<String>? clusterResourceId;
  /// The name of the database which you would like to attach, use * if you want to follow all current and future databases. Changing this forces a new resource to be created.
  final pulumi.Input<String> databaseName;
  /// The default principals modification kind. Valid values are: `None` (default), `Replace` and `Union`. Defaults to `None`.
  final pulumi.Input<String>? defaultPrincipalModificationKind;
  /// Specifies the location of the Kusto Cluster for which the configuration will be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the Kusto Attached Database Configuration to create. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the resource group of the Kusto Cluster for which the configuration will be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A `sharing` block as defined below.
  final pulumi.Input<AttachedDatabaseConfigurationSharing>? sharing;

  /// Creates a new [AttachedDatabaseConfigurationArgs].
  /// [clusterId] The resource id of the cluster where the databases you would like to attach reside.
  /// [clusterName] Specifies the name of the Kusto Cluster for which the configuration will be created. Changing this forces a new resource to be created.
  /// [clusterResourceId] Optional.
  /// [databaseName] The name of the database which you would like to attach, use * if you want to follow all current and future databases. Changing this forces a new resource to be created.
  /// [defaultPrincipalModificationKind] The default principals modification kind. Valid values are: `None` (default), `Replace` and `Union`. Defaults to `None`.
  /// [location] Specifies the location of the Kusto Cluster for which the configuration will be created. Changing this forces a new resource to be created.
  /// [name] The name of the Kusto Attached Database Configuration to create. Changing this forces a new resource to be created.
  /// [resourceGroupName] Specifies the resource group of the Kusto Cluster for which the configuration will be created. Changing this forces a new resource to be created.
  /// [sharing] A `sharing` block as defined below.
  AttachedDatabaseConfigurationArgs({
    String? clusterId,
    required String clusterName,
    String? clusterResourceId,
    required String databaseName,
    String? defaultPrincipalModificationKind,
    String? location,
    String? name,
    required String resourceGroupName,
    AttachedDatabaseConfigurationSharing? sharing,
  }) :
      clusterId = pulumi.Input.asOptionalInput<String>(clusterId),
      clusterName = pulumi.Input.asInput<String>(clusterName),
      clusterResourceId = pulumi.Input.asOptionalInput<String>(clusterResourceId),
      databaseName = pulumi.Input.asInput<String>(databaseName),
      defaultPrincipalModificationKind = pulumi.Input.asOptionalInput<String>(defaultPrincipalModificationKind),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sharing = pulumi.Input.asOptionalInput<AttachedDatabaseConfigurationSharing>(sharing);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': ?clusterId,
      'clusterName': clusterName,
      'clusterResourceId': ?clusterResourceId,
      'databaseName': databaseName,
      'defaultPrincipalModificationKind': ?defaultPrincipalModificationKind,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'sharing': ?pulumi.Input.mapOptionalInputValue<AttachedDatabaseConfigurationSharing, Map<String, dynamic>>(sharing, (value) => value.toMap()),
    };
  }

  factory AttachedDatabaseConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return AttachedDatabaseConfigurationArgs(
      clusterId: map['clusterId'] == null ? null : map['clusterId'] as String,
      clusterName: map['clusterName'] as String,
      clusterResourceId: map['clusterResourceId'] == null ? null : map['clusterResourceId'] as String,
      databaseName: map['databaseName'] as String,
      defaultPrincipalModificationKind: map['defaultPrincipalModificationKind'] == null ? null : map['defaultPrincipalModificationKind'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      sharing: map['sharing'] == null ? null : AttachedDatabaseConfigurationSharing.fromMap((map['sharing'] as Map).cast<String, dynamic>()),
    );
  }
}

