// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'availability_group_info_response.dart';
import 'sql_server_availability_group_resource_properties_response_databases.dart';
import 'sql_server_availability_group_resource_properties_response_replicas.dart';

/// The properties of Arc Sql Server availability group resource
class SqlServerAvailabilityGroupResourcePropertiesResponse {
  /// ID GUID of the availability group.
  final pulumi.Input<String> availabilityGroupId;
  /// Timestamp for when the data was collected from the client machine.
  final pulumi.Input<String> collectionTimestamp;
  /// A list of Availability Group Database Replicas.
  final pulumi.Input<SqlServerAvailabilityGroupResourcePropertiesResponseDatabases?>? databases;
  /// Availability Group Info
  final pulumi.Input<AvailabilityGroupInfoResponse?>? info;
  /// the SQL Server Instance name.
  final pulumi.Input<String> instanceName;
  /// The provisioning state of the Arc-enabled SQL Server availability group resource.
  final pulumi.Input<String> provisioningState;
  /// A list of Availability Group Replicas.
  final pulumi.Input<SqlServerAvailabilityGroupResourcePropertiesResponseReplicas?>? replicas;
  /// the SQL server name.
  final pulumi.Input<String> serverName;
  /// The unique ID of the hybrid machine that this resource belongs to.
  final pulumi.Input<String> vmId;

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
  const SqlServerAvailabilityGroupResourcePropertiesResponse({
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
      'databases': ?pulumi.Input.mapOptionalInputValue<SqlServerAvailabilityGroupResourcePropertiesResponseDatabases, Map<String, dynamic>>(databases, (value) => value.toMap()),
      'info': ?pulumi.Input.mapOptionalInputValue<AvailabilityGroupInfoResponse, Map<String, dynamic>>(info, (value) => value.toMap()),
      'instanceName': instanceName,
      'provisioningState': provisioningState,
      'replicas': ?pulumi.Input.mapOptionalInputValue<SqlServerAvailabilityGroupResourcePropertiesResponseReplicas, Map<String, dynamic>>(replicas, (value) => value.toMap()),
      'serverName': serverName,
      'vmId': vmId,
    };
  }

  factory SqlServerAvailabilityGroupResourcePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SqlServerAvailabilityGroupResourcePropertiesResponse(
      availabilityGroupId: pulumi.Input.fromValue(map['availabilityGroupId'] as String),
      collectionTimestamp: pulumi.Input.fromValue(map['collectionTimestamp'] as String),
      databases: (() { final guardedValue = map['databases']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SqlServerAvailabilityGroupResourcePropertiesResponseDatabases.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      info: (() { final guardedValue = map['info']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AvailabilityGroupInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instanceName: pulumi.Input.fromValue(map['instanceName'] as String),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      replicas: (() { final guardedValue = map['replicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SqlServerAvailabilityGroupResourcePropertiesResponseReplicas.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
      vmId: pulumi.Input.fromValue(map['vmId'] as String),
    );
  }
}
