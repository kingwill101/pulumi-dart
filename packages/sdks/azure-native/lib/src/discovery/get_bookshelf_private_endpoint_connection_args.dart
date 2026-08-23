// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_discovery_get_bookshelf_private_endpoint_connection_args_doc}
/// Arguments for getBookshelfPrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_discovery_get_bookshelf_private_endpoint_connection_args_doc}
class GetBookshelfPrivateEndpointConnectionArgs {
  /// The name of the Bookshelf
  final pulumi.Input<String> bookshelfName;
  /// The name of the private endpoint connection associated with the Azure resource.
  final pulumi.Input<String> privateEndpointConnectionName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetBookshelfPrivateEndpointConnectionArgs].
  /// [bookshelfName] The name of the Bookshelf
  /// [privateEndpointConnectionName] The name of the private endpoint connection associated with the Azure resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetBookshelfPrivateEndpointConnectionArgs({
    required this.bookshelfName,
    required this.privateEndpointConnectionName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bookshelfName': bookshelfName,
      'privateEndpointConnectionName': privateEndpointConnectionName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetBookshelfPrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetBookshelfPrivateEndpointConnectionArgs(
      bookshelfName: pulumi.Input.fromValue(map['bookshelfName'] as String),
      privateEndpointConnectionName: pulumi.Input.fromValue(map['privateEndpointConnectionName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
