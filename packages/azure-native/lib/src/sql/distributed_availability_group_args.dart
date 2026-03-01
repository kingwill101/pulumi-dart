// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'distributed_availability_group_database.dart';

/// {@template pulumi_sql_distributed_availability_group_args_doc}
/// The set of arguments for DistributedAvailabilityGroup.
/// {@endtemplate}
/// {@macro pulumi_sql_distributed_availability_group_args_doc}
class DistributedAvailabilityGroupArgs {
  /// Databases in the distributed availability group
  final pulumi.Input<List<DistributedAvailabilityGroupDatabase>>? databases;
  /// The distributed availability group name.
  final pulumi.Input<String>? distributedAvailabilityGroupName;
  /// The link failover mode - can be Manual if intended to be used for two-way failover with a supported SQL Server, or None for one-way failover to Azure.
  final pulumi.Input<String>? failoverMode;
  /// Managed instance side availability group name
  final pulumi.Input<String>? instanceAvailabilityGroupName;
  /// Managed instance side link role
  final pulumi.Input<String>? instanceLinkRole;
  /// The name of the managed instance.
  final pulumi.Input<String> managedInstanceName;
  /// SQL server side availability group name
  final pulumi.Input<String>? partnerAvailabilityGroupName;
  /// SQL server side endpoint - IP or DNS resolvable name
  final pulumi.Input<String>? partnerEndpoint;
  /// Replication mode of the link
  final pulumi.Input<String>? replicationMode;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// Database seeding mode – can be Automatic (default), or Manual for supported scenarios.
  final pulumi.Input<String>? seedingMode;

  /// Creates a new [DistributedAvailabilityGroupArgs].
  /// [databases] Databases in the distributed availability group
  /// [distributedAvailabilityGroupName] The distributed availability group name.
  /// [failoverMode] The link failover mode - can be Manual if intended to be used for two-way failover with a supported SQL Server, or None for one-way failover to Azure.
  /// [instanceAvailabilityGroupName] Managed instance side availability group name
  /// [instanceLinkRole] Managed instance side link role
  /// [managedInstanceName] The name of the managed instance.
  /// [partnerAvailabilityGroupName] SQL server side availability group name
  /// [partnerEndpoint] SQL server side endpoint - IP or DNS resolvable name
  /// [replicationMode] Replication mode of the link
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [seedingMode] Database seeding mode – can be Automatic (default), or Manual for supported scenarios.
  DistributedAvailabilityGroupArgs({
    List<DistributedAvailabilityGroupDatabase>? databases,
    String? distributedAvailabilityGroupName,
    String? failoverMode,
    String? instanceAvailabilityGroupName,
    String? instanceLinkRole,
    required String managedInstanceName,
    String? partnerAvailabilityGroupName,
    String? partnerEndpoint,
    String? replicationMode,
    required String resourceGroupName,
    String? seedingMode,
  }) :
      databases = pulumi.Input.asOptionalInput<List<DistributedAvailabilityGroupDatabase>>(databases),
      distributedAvailabilityGroupName = pulumi.Input.asOptionalInput<String>(distributedAvailabilityGroupName),
      failoverMode = pulumi.Input.asOptionalInput<String>(failoverMode),
      instanceAvailabilityGroupName = pulumi.Input.asOptionalInput<String>(instanceAvailabilityGroupName),
      instanceLinkRole = pulumi.Input.asOptionalInput<String>(instanceLinkRole),
      managedInstanceName = pulumi.Input.asInput<String>(managedInstanceName),
      partnerAvailabilityGroupName = pulumi.Input.asOptionalInput<String>(partnerAvailabilityGroupName),
      partnerEndpoint = pulumi.Input.asOptionalInput<String>(partnerEndpoint),
      replicationMode = pulumi.Input.asOptionalInput<String>(replicationMode),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      seedingMode = pulumi.Input.asOptionalInput<String>(seedingMode);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databases': ?pulumi.Input.mapOptionalInputValue<List<DistributedAvailabilityGroupDatabase>, List<Map<String, dynamic>>>(databases, (value) => pulumi.Input.encodeList<DistributedAvailabilityGroupDatabase, Map<String, dynamic>>(value, (value) => value.toMap())),
      'distributedAvailabilityGroupName': ?distributedAvailabilityGroupName,
      'failoverMode': ?failoverMode,
      'instanceAvailabilityGroupName': ?instanceAvailabilityGroupName,
      'instanceLinkRole': ?instanceLinkRole,
      'managedInstanceName': managedInstanceName,
      'partnerAvailabilityGroupName': ?partnerAvailabilityGroupName,
      'partnerEndpoint': ?partnerEndpoint,
      'replicationMode': ?replicationMode,
      'resourceGroupName': resourceGroupName,
      'seedingMode': ?seedingMode,
    };
  }

  factory DistributedAvailabilityGroupArgs.fromMap(Map<String, dynamic> map) {
    return DistributedAvailabilityGroupArgs(
      databases: map['databases'] == null ? null : pulumi.Input.decodeList<DistributedAvailabilityGroupDatabase>(map['databases'], (value) => DistributedAvailabilityGroupDatabase.fromMap((value as Map).cast<String, dynamic>())),
      distributedAvailabilityGroupName: map['distributedAvailabilityGroupName'] == null ? null : map['distributedAvailabilityGroupName'] as String,
      failoverMode: map['failoverMode'] == null ? null : map['failoverMode'] as String,
      instanceAvailabilityGroupName: map['instanceAvailabilityGroupName'] == null ? null : map['instanceAvailabilityGroupName'] as String,
      instanceLinkRole: map['instanceLinkRole'] == null ? null : map['instanceLinkRole'] as String,
      managedInstanceName: map['managedInstanceName'] as String,
      partnerAvailabilityGroupName: map['partnerAvailabilityGroupName'] == null ? null : map['partnerAvailabilityGroupName'] as String,
      partnerEndpoint: map['partnerEndpoint'] == null ? null : map['partnerEndpoint'] as String,
      replicationMode: map['replicationMode'] == null ? null : map['replicationMode'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      seedingMode: map['seedingMode'] == null ? null : map['seedingMode'] as String,
    );
  }
}

