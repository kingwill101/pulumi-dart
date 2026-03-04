// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_service_identity.dart';
import 'private_link_service_connection_state.dart';
import 'sku.dart';

/// {@template pulumi_machinelearningservices_private_endpoint_connection_args_doc}
/// The set of arguments for PrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_private_endpoint_connection_args_doc}
class PrivateEndpointConnectionArgs {
  /// The identity of the resource.
  final pulumi.Input<ManagedServiceIdentity>? identity;

  /// Specifies the location of the resource.
  final pulumi.Input<String>? location;

  /// The name of the private endpoint connection associated with the workspace
  final pulumi.Input<String>? privateEndpointConnectionName;

  /// A collection of information about the state of the connection between service consumer and provider.
  final pulumi.Input<PrivateLinkServiceConnectionState>
  privateLinkServiceConnectionState;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The sku of the workspace.
  final pulumi.Input<Sku>? sku;

  /// Contains resource tags defined as key/value pairs.
  final pulumi.Input<Map<String, String>>? tags;

  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [PrivateEndpointConnectionArgs].
  /// [identity] The identity of the resource.
  /// [location] Specifies the location of the resource.
  /// [privateEndpointConnectionName] The name of the private endpoint connection associated with the workspace
  /// [privateLinkServiceConnectionState] A collection of information about the state of the connection between service consumer and provider.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] The sku of the workspace.
  /// [tags] Contains resource tags defined as key/value pairs.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  PrivateEndpointConnectionArgs({
    this.identity,
    this.location,
    this.privateEndpointConnectionName,
    required this.privateLinkServiceConnectionState,
    required this.resourceGroupName,
    this.sku,
    this.tags,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedServiceIdentity,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
      'location': ?location,
      'privateEndpointConnectionName': ?privateEndpointConnectionName,
      'privateLinkServiceConnectionState':
          pulumi.Input.mapInputValue<
            PrivateLinkServiceConnectionState,
            Map<String, dynamic>
          >(privateLinkServiceConnectionState, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(
        sku,
        (value) => value.toMap(),
      ),
      'tags': ?tags,
      'workspaceName': workspaceName,
    };
  }

  factory PrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionArgs(
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ManagedServiceIdentity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privateEndpointConnectionName: (() {
        final guardedValue = map['privateEndpointConnectionName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privateLinkServiceConnectionState: pulumi.Input.fromValue(
        PrivateLinkServiceConnectionState.fromMap(
          (map['privateLinkServiceConnectionState']! as Map)
              .cast<String, dynamic>(),
        ),
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      sku: (() {
        final guardedValue = map['sku'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Sku.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
