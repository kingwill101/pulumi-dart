// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_properties.dart';

/// {@template pulumi_azuredatatransfer_connection_args_doc}
/// The set of arguments for Connection.
/// {@endtemplate}
/// {@macro pulumi_azuredatatransfer_connection_args_doc}
class ConnectionArgs {
  /// The name for the connection that is to be requested.
  final pulumi.Input<String>? connectionName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Properties of connection
  final pulumi.Input<ConnectionProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ConnectionArgs].
  /// [connectionName] The name for the connection that is to be requested.
  /// [location] The geo-location where the resource lives
  /// [properties] Properties of connection
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  ConnectionArgs({
    String? connectionName,
    String? location,
    ConnectionProperties? properties,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      connectionName = pulumi.Input.asOptionalInput<String>(connectionName),
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asOptionalInput<ConnectionProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionName': ?connectionName,
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<ConnectionProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ConnectionArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionArgs(
      connectionName: map['connectionName'] == null ? null : map['connectionName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      properties: map['properties'] == null ? null : ConnectionProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

