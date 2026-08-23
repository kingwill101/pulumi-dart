// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_client_application_args_doc}
/// The set of arguments for ClientApplication.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_client_application_args_doc}
class ClientApplicationArgs {
  /// Client Application identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String>? clientApplicationId;
  /// Client application description.
  final pulumi.Input<String>? description;
  /// Client application name.
  final pulumi.Input<String> displayName;
  /// A resource identifier for the user who owns the application.
  final pulumi.Input<String> ownerId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [ClientApplicationArgs].
  /// [clientApplicationId] Client Application identifier. Must be unique in the current API Management service instance.
  /// [description] Client application description.
  /// [displayName] Client application name.
  /// [ownerId] A resource identifier for the user who owns the application.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  const ClientApplicationArgs({
    this.clientApplicationId,
    this.description,
    required this.displayName,
    required this.ownerId,
    required this.resourceGroupName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientApplicationId': ?clientApplicationId,
      'description': ?description,
      'displayName': displayName,
      'ownerId': ownerId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory ClientApplicationArgs.fromMap(Map<String, dynamic> map) {
    return ClientApplicationArgs(
      clientApplicationId: (() { final guardedValue = map['clientApplicationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      ownerId: pulumi.Input.fromValue(map['ownerId'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}
