// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location.dart';
import 'postgres_instance_properties.dart';
import 'postgres_instance_sku.dart';

/// {@template pulumi_azurearcdata_postgres_instance_args_doc}
/// The set of arguments for PostgresInstance.
/// {@endtemplate}
/// {@macro pulumi_azurearcdata_postgres_instance_args_doc}
class PostgresInstanceArgs {
  /// The extendedLocation of the resource.
  final pulumi.Input<ExtendedLocation>? extendedLocation;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Name of Postgres Instance
  final pulumi.Input<String>? postgresInstanceName;
  /// null
  final pulumi.Input<PostgresInstanceProperties> properties;
  /// The name of the Azure resource group
  final pulumi.Input<String> resourceGroupName;
  /// Resource sku.
  final pulumi.Input<PostgresInstanceSku>? sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [PostgresInstanceArgs].
  /// [extendedLocation] The extendedLocation of the resource.
  /// [location] The geo-location where the resource lives
  /// [postgresInstanceName] Name of Postgres Instance
  /// [properties] null
  /// [resourceGroupName] The name of the Azure resource group
  /// [sku] Resource sku.
  /// [tags] Resource tags.
  PostgresInstanceArgs({
    pulumi.Output<ExtendedLocation>? extendedLocation,
    pulumi.Output<String>? location,
    pulumi.Output<String>? postgresInstanceName,
    required pulumi.Output<PostgresInstanceProperties> properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<PostgresInstanceSku>? sku,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      extendedLocation = pulumi.Input.asOptionalInput<ExtendedLocation>(extendedLocation),
      location = pulumi.Input.asOptionalInput<String>(location),
      postgresInstanceName = pulumi.Input.asOptionalInput<String>(postgresInstanceName),
      properties = pulumi.Input.asInput<PostgresInstanceProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asOptionalInput<PostgresInstanceSku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'location': ?location,
      'postgresInstanceName': ?postgresInstanceName,
      'properties': pulumi.Input.mapInputValue<PostgresInstanceProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<PostgresInstanceSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory PostgresInstanceArgs.fromMap(Map<String, dynamic> map) {
    return PostgresInstanceArgs(
      extendedLocation: map['extendedLocation'] == null ? null : pulumi.Output.create<ExtendedLocation>(ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      postgresInstanceName: map['postgresInstanceName'] == null ? null : pulumi.Output.create<String>(map['postgresInstanceName'] as String),
      properties: pulumi.Output.create<PostgresInstanceProperties>(PostgresInstanceProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<PostgresInstanceSku>(PostgresInstanceSku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

