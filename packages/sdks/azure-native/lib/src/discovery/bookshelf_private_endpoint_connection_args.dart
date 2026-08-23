// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_properties.dart';

/// {@template pulumi_discovery_bookshelf_private_endpoint_connection_args_doc}
/// The set of arguments for BookshelfPrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_discovery_bookshelf_private_endpoint_connection_args_doc}
class BookshelfPrivateEndpointConnectionArgs {
  /// The name of the Bookshelf
  final pulumi.Input<String> bookshelfName;
  /// The name of the private endpoint connection associated with the Azure resource.
  final pulumi.Input<String>? privateEndpointConnectionName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<PrivateEndpointConnectionProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [BookshelfPrivateEndpointConnectionArgs].
  /// [bookshelfName] The name of the Bookshelf
  /// [privateEndpointConnectionName] The name of the private endpoint connection associated with the Azure resource.
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const BookshelfPrivateEndpointConnectionArgs({
    required this.bookshelfName,
    this.privateEndpointConnectionName,
    this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bookshelfName': bookshelfName,
      'privateEndpointConnectionName': ?privateEndpointConnectionName,
      'properties': ?pulumi.Input.mapOptionalInputValue<PrivateEndpointConnectionProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory BookshelfPrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return BookshelfPrivateEndpointConnectionArgs(
      bookshelfName: pulumi.Input.fromValue(map['bookshelfName'] as String),
      privateEndpointConnectionName: (() { final guardedValue = map['privateEndpointConnectionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrivateEndpointConnectionProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
