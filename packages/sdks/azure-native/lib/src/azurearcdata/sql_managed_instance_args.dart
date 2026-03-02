// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location.dart';
import 'sql_managed_instance_properties.dart';
import 'sql_managed_instance_sku.dart';

/// {@template pulumi_azurearcdata_sql_managed_instance_args_doc}
/// The set of arguments for SqlManagedInstance.
/// {@endtemplate}
/// {@macro pulumi_azurearcdata_sql_managed_instance_args_doc}
class SqlManagedInstanceArgs {
  /// The extendedLocation of the resource.
  final pulumi.Input<ExtendedLocation>? extendedLocation;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// null
  final pulumi.Input<SqlManagedInstanceProperties> properties;
  /// The name of the Azure resource group
  final pulumi.Input<String> resourceGroupName;
  /// Resource sku.
  final pulumi.Input<SqlManagedInstanceSku>? sku;
  /// Name of SQL Managed Instance
  final pulumi.Input<String>? sqlManagedInstanceName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SqlManagedInstanceArgs].
  /// [extendedLocation] The extendedLocation of the resource.
  /// [location] The geo-location where the resource lives
  /// [properties] null
  /// [resourceGroupName] The name of the Azure resource group
  /// [sku] Resource sku.
  /// [sqlManagedInstanceName] Name of SQL Managed Instance
  /// [tags] Resource tags.
  SqlManagedInstanceArgs({
    this.extendedLocation,
    this.location,
    required this.properties,
    required this.resourceGroupName,
    this.sku,
    this.sqlManagedInstanceName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'location': ?location,
      'properties': pulumi.Input.mapInputValue<SqlManagedInstanceProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<SqlManagedInstanceSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'sqlManagedInstanceName': ?sqlManagedInstanceName,
      'tags': ?tags,
    };
  }

  factory SqlManagedInstanceArgs.fromMap(Map<String, dynamic> map) {
    return SqlManagedInstanceArgs(
      extendedLocation: map['extendedLocation'] == null ? null : (ExtendedLocation.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      properties: (SqlManagedInstanceProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sku: map['sku'] == null ? null : (SqlManagedInstanceSku.fromMap((map['sku']! as Map).cast<String, dynamic>())).input(),
      sqlManagedInstanceName: map['sqlManagedInstanceName'] == null ? null : (map['sqlManagedInstanceName']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

