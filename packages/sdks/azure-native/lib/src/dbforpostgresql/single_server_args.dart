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
    pulumi.Output<ResourceIdentity>? identity,
    pulumi.Output<String>? location,
    required pulumi.Output<ServerPropertiesForDefaultCreate> properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? serverName,
    pulumi.Output<SingleServerSku>? sku,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      identity = pulumi.Input.asOptionalInput<ResourceIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asInput<ServerPropertiesForDefaultCreate>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asOptionalInput<String>(serverName),
      sku = pulumi.Input.asOptionalInput<SingleServerSku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<ResourceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'properties': pulumi.Input.mapInputValue<ServerPropertiesForDefaultCreate, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'serverName': ?serverName,
      'sku': ?pulumi.Input.mapOptionalInputValue<SingleServerSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory SingleServerArgs.fromMap(Map<String, dynamic> map) {
    return SingleServerArgs(
      identity: map['identity'] == null ? null : pulumi.Output.create<ResourceIdentity>(ResourceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      properties: pulumi.Output.create<ServerPropertiesForDefaultCreate>(ServerPropertiesForDefaultCreate.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serverName: map['serverName'] == null ? null : pulumi.Output.create<String>(map['serverName'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<SingleServerSku>(SingleServerSku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

