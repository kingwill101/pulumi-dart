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
    this.extendedLocation,
    this.location,
    this.postgresInstanceName,
    required this.properties,
    required this.resourceGroupName,
    this.sku,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extendedLocation':
          ?pulumi.Input.mapOptionalInputValue<
            ExtendedLocation,
            Map<String, dynamic>
          >(extendedLocation, (value) => value.toMap()),
      'location': ?location,
      'postgresInstanceName': ?postgresInstanceName,
      'properties':
          pulumi.Input.mapInputValue<
            PostgresInstanceProperties,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'sku':
          ?pulumi.Input.mapOptionalInputValue<
            PostgresInstanceSku,
            Map<String, dynamic>
          >(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory PostgresInstanceArgs.fromMap(Map<String, dynamic> map) {
    return PostgresInstanceArgs(
      extendedLocation: (() {
        final guardedValue = map['extendedLocation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ExtendedLocation.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      postgresInstanceName: (() {
        final guardedValue = map['postgresInstanceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      properties: pulumi.Input.fromValue(
        PostgresInstanceProperties.fromMap(
          (map['properties']! as Map).cast<String, dynamic>(),
        ),
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      sku: (() {
        final guardedValue = map['sku'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PostgresInstanceSku.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
