// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'availability_group_info.dart';
import 'sql_server_availability_group_resource_properties_databases.dart';
import 'sql_server_availability_group_resource_properties_replicas.dart';

/// The properties of Arc Sql Server availability group resource
class SqlServerAvailabilityGroupResourceProperties {
  /// A list of Availability Group Database Replicas.
  final pulumi.Input<SqlServerAvailabilityGroupResourcePropertiesDatabases>? databases;
  /// Availability Group Info
  final pulumi.Input<AvailabilityGroupInfo>? info;
  /// A list of Availability Group Replicas.
  final pulumi.Input<SqlServerAvailabilityGroupResourcePropertiesReplicas>? replicas;

  /// Creates a new [SqlServerAvailabilityGroupResourceProperties].
  /// [databases] A list of Availability Group Database Replicas.
  /// [info] Availability Group Info
  /// [replicas] A list of Availability Group Replicas.
  SqlServerAvailabilityGroupResourceProperties({
    this.databases,
    this.info,
    this.replicas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databases': ?pulumi.Input.mapOptionalInputValue<SqlServerAvailabilityGroupResourcePropertiesDatabases, Map<String, dynamic>>(databases, (value) => value.toMap()),
      'info': ?pulumi.Input.mapOptionalInputValue<AvailabilityGroupInfo, Map<String, dynamic>>(info, (value) => value.toMap()),
      'replicas': ?pulumi.Input.mapOptionalInputValue<SqlServerAvailabilityGroupResourcePropertiesReplicas, Map<String, dynamic>>(replicas, (value) => value.toMap()),
    };
  }

  factory SqlServerAvailabilityGroupResourceProperties.fromMap(Map<String, dynamic> map) {
    return SqlServerAvailabilityGroupResourceProperties(
      databases: map['databases'] == null ? null : (SqlServerAvailabilityGroupResourcePropertiesDatabases.fromMap((map['databases']! as Map).cast<String, dynamic>())).input(),
      info: map['info'] == null ? null : (AvailabilityGroupInfo.fromMap((map['info']! as Map).cast<String, dynamic>())).input(),
      replicas: map['replicas'] == null ? null : (SqlServerAvailabilityGroupResourcePropertiesReplicas.fromMap((map['replicas']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

