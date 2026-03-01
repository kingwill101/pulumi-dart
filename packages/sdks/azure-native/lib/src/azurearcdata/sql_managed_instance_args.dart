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
    pulumi.Output<ExtendedLocation>? extendedLocation,
    pulumi.Output<String>? location,
    required pulumi.Output<SqlManagedInstanceProperties> properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<SqlManagedInstanceSku>? sku,
    pulumi.Output<String>? sqlManagedInstanceName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      extendedLocation = pulumi.Input.asOptionalInput<ExtendedLocation>(extendedLocation),
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asInput<SqlManagedInstanceProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asOptionalInput<SqlManagedInstanceSku>(sku),
      sqlManagedInstanceName = pulumi.Input.asOptionalInput<String>(sqlManagedInstanceName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      extendedLocation: map['extendedLocation'] == null ? null : pulumi.Output.create<ExtendedLocation>(ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      properties: pulumi.Output.create<SqlManagedInstanceProperties>(SqlManagedInstanceProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<SqlManagedInstanceSku>(SqlManagedInstanceSku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      sqlManagedInstanceName: map['sqlManagedInstanceName'] == null ? null : pulumi.Output.create<String>(map['sqlManagedInstanceName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

