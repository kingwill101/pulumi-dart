// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_properties_for_default_create.dart';
import 'sku.dart';

/// {@template pulumi_dbformariadb_server_args_doc}
/// The set of arguments for Server.
/// {@endtemplate}
/// {@macro pulumi_dbformariadb_server_args_doc}
class ServerArgs {
  /// The location the resource resides in.
  final pulumi.Input<String>? location;
  /// Properties of the server.
  final pulumi.Input<ServerPropertiesForDefaultCreate> properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String>? serverName;
  /// The SKU (pricing tier) of the server.
  final pulumi.Input<Sku>? sku;
  /// Application-specific metadata in the form of key-value pairs.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ServerArgs].
  /// [location] The location the resource resides in.
  /// [properties] Properties of the server.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serverName] The name of the server.
  /// [sku] The SKU (pricing tier) of the server.
  /// [tags] Application-specific metadata in the form of key-value pairs.
  ServerArgs({
    pulumi.Output<String>? location,
    required pulumi.Output<ServerPropertiesForDefaultCreate> properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? serverName,
    pulumi.Output<Sku>? sku,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asInput<ServerPropertiesForDefaultCreate>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asOptionalInput<String>(serverName),
      sku = pulumi.Input.asOptionalInput<Sku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'properties': pulumi.Input.mapInputValue<ServerPropertiesForDefaultCreate, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'serverName': ?serverName,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory ServerArgs.fromMap(Map<String, dynamic> map) {
    return ServerArgs(
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      properties: pulumi.Output.create<ServerPropertiesForDefaultCreate>(ServerPropertiesForDefaultCreate.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serverName: map['serverName'] == null ? null : pulumi.Output.create<String>(map['serverName'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<Sku>(Sku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

