// ignore_for_file: unused_element, unnecessary_cast

import 'availability_group_info_response.dart';
import 'sql_server_availability_group_resource_properties_response_databases.dart';
import 'sql_server_availability_group_resource_properties_response_replicas.dart';

/// The properties of Arc Sql Server availability group resource
class SqlServerAvailabilityGroupResourcePropertiesResponse {
  /// ID GUID of the availability group.
  final String availabilityGroupId;
  /// Timestamp for when the data was collected from the client machine.
  final String collectionTimestamp;
  /// A list of Availability Group Database Replicas.
  final SqlServerAvailabilityGroupResourcePropertiesResponseDatabases? databases;
  /// Availability Group Info
  final AvailabilityGroupInfoResponse? info;
  /// the SQL Server Instance name.
  final String instanceName;
  /// The provisioning state of the Arc-enabled SQL Server availability group resource.
  final String provisioningState;
  /// A list of Availability Group Replicas.
  final SqlServerAvailabilityGroupResourcePropertiesResponseReplicas? replicas;
  /// the SQL server name.
  final String serverName;
  /// The unique ID of the hybrid machine that this resource belongs to.
  final String vmId;

  /// Creates a new [SqlServerAvailabilityGroupResourcePropertiesResponse].
  /// [availabilityGroupId] ID GUID of the availability group.
  /// [collectionTimestamp] Timestamp for when the data was collected from the client machine.
  /// [databases] A list of Availability Group Database Replicas.
  /// [info] Availability Group Info
  /// [instanceName] the SQL Server Instance name.
  /// [provisioningState] The provisioning state of the Arc-enabled SQL Server availability group resource.
  /// [replicas] A list of Availability Group Replicas.
  /// [serverName] the SQL server name.
  /// [vmId] The unique ID of the hybrid machine that this resource belongs to.
  SqlServerAvailabilityGroupResourcePropertiesResponse({
    required this.availabilityGroupId,
    required this.collectionTimestamp,
    this.databases,
    this.info,
    required this.instanceName,
    required this.provisioningState,
    this.replicas,
    required this.serverName,
    required this.vmId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityGroupId': availabilityGroupId,
      'collectionTimestamp': collectionTimestamp,
      'databases': ?databases == null ? null : databases!.toMap(),
      'info': ?info == null ? null : info!.toMap(),
      'instanceName': instanceName,
      'provisioningState': provisioningState,
      'replicas': ?replicas == null ? null : replicas!.toMap(),
      'serverName': serverName,
      'vmId': vmId,
    };
  }

  factory SqlServerAvailabilityGroupResourcePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SqlServerAvailabilityGroupResourcePropertiesResponse(
      availabilityGroupId: map['availabilityGroupId'] as String,
      collectionTimestamp: map['collectionTimestamp'] as String,
      databases: map['databases'] == null ? null : SqlServerAvailabilityGroupResourcePropertiesResponseDatabases.fromMap((map['databases'] as Map).cast<String, dynamic>()),
      info: map['info'] == null ? null : AvailabilityGroupInfoResponse.fromMap((map['info'] as Map).cast<String, dynamic>()),
      instanceName: map['instanceName'] as String,
      provisioningState: map['provisioningState'] as String,
      replicas: map['replicas'] == null ? null : SqlServerAvailabilityGroupResourcePropertiesResponseReplicas.fromMap((map['replicas'] as Map).cast<String, dynamic>()),
      serverName: map['serverName'] as String,
      vmId: map['vmId'] as String,
    );
  }
}

