// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_identity.dart';
import 'server_properties_for_default_create.dart';
import 'single_server_sku.dart';

/// {@template pulumi_dbforpostgresql_single_server_args_doc}
/// The set of arguments for SingleServer.
/// {@endtemplate}
/// {@macro pulumi_dbforpostgresql_single_server_args_doc}
class SingleServerArgs {
  /// The Azure Active Directory identity of the server.
  final pulumi.Input<ResourceIdentity>? identity;

  /// The location the resource resides in.
  final pulumi.Input<String>? location;

  /// Properties of the server.
  final pulumi.Input<ServerPropertiesForDefaultCreate> properties;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the server.
  final pulumi.Input<String>? serverName;

  /// The SKU (pricing tier) of the server.
  final pulumi.Input<SingleServerSku>? sku;

  /// Application-specific metadata in the form of key-value pairs.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SingleServerArgs].
  /// [identity] The Azure Active Directory identity of the server.
  /// [location] The location the resource resides in.
  /// [properties] Properties of the server.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serverName] The name of the server.
  /// [sku] The SKU (pricing tier) of the server.
  /// [tags] Application-specific metadata in the form of key-value pairs.
  SingleServerArgs({
    this.identity,
    this.location,
    required this.properties,
    required this.resourceGroupName,
    this.serverName,
    this.sku,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            ResourceIdentity,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
      'location': ?location,
      'properties':
          pulumi.Input.mapInputValue<
            ServerPropertiesForDefaultCreate,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'serverName': ?serverName,
      'sku':
          ?pulumi.Input.mapOptionalInputValue<
            SingleServerSku,
            Map<String, dynamic>
          >(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory SingleServerArgs.fromMap(Map<String, dynamic> map) {
    return SingleServerArgs(
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResourceIdentity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      properties: pulumi.Input.fromValue(
        ServerPropertiesForDefaultCreate.fromMap(
          (map['properties']! as Map).cast<String, dynamic>(),
        ),
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      serverName: (() {
        final guardedValue = map['serverName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sku: (() {
        final guardedValue = map['sku'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SingleServerSku.fromMap(
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
