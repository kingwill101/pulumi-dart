// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'failover_group_properties.dart';

/// {@template pulumi_azurearcdata_failover_group_args_doc}
/// The set of arguments for FailoverGroup.
/// {@endtemplate}
/// {@macro pulumi_azurearcdata_failover_group_args_doc}
class FailoverGroupArgs {
  /// The name of the Failover Group
  final pulumi.Input<String>? failoverGroupName;
  /// null
  final pulumi.Input<FailoverGroupProperties> properties;
  /// The name of the Azure resource group
  final pulumi.Input<String> resourceGroupName;
  /// Name of SQL Managed Instance
  final pulumi.Input<String> sqlManagedInstanceName;

  /// Creates a new [FailoverGroupArgs].
  /// [failoverGroupName] The name of the Failover Group
  /// [properties] null
  /// [resourceGroupName] The name of the Azure resource group
  /// [sqlManagedInstanceName] Name of SQL Managed Instance
  FailoverGroupArgs({
    this.failoverGroupName,
    required this.properties,
    required this.resourceGroupName,
    required this.sqlManagedInstanceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failoverGroupName': ?failoverGroupName,
      'properties': pulumi.Input.mapInputValue<FailoverGroupProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'sqlManagedInstanceName': sqlManagedInstanceName,
    };
  }

  factory FailoverGroupArgs.fromMap(Map<String, dynamic> map) {
    return FailoverGroupArgs(
      failoverGroupName: map['failoverGroupName'] == null ? null : (map['failoverGroupName'] as String).input(),
      properties: (FailoverGroupProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sqlManagedInstanceName: (map['sqlManagedInstanceName'] as String).input(),
    );
  }
}

