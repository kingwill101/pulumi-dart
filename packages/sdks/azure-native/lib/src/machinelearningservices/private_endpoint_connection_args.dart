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
  final pulumi.Input<PrivateLinkServiceConnectionState> privateLinkServiceConnectionState;
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
    pulumi.Output<ManagedServiceIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<String>? privateEndpointConnectionName,
    required pulumi.Output<PrivateLinkServiceConnectionState> privateLinkServiceConnectionState,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Sku>? sku,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> workspaceName,
  }) :
      identity = pulumi.Input.asOptionalInput<ManagedServiceIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      privateEndpointConnectionName = pulumi.Input.asOptionalInput<String>(privateEndpointConnectionName),
      privateLinkServiceConnectionState = pulumi.Input.asInput<PrivateLinkServiceConnectionState>(privateLinkServiceConnectionState),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asOptionalInput<Sku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'privateEndpointConnectionName': ?privateEndpointConnectionName,
      'privateLinkServiceConnectionState': pulumi.Input.mapInputValue<PrivateLinkServiceConnectionState, Map<String, dynamic>>(privateLinkServiceConnectionState, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'workspaceName': workspaceName,
    };
  }

  factory PrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionArgs(
      identity: map['identity'] == null ? null : pulumi.Output.create<ManagedServiceIdentity>(ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      privateEndpointConnectionName: map['privateEndpointConnectionName'] == null ? null : pulumi.Output.create<String>(map['privateEndpointConnectionName'] as String),
      privateLinkServiceConnectionState: pulumi.Output.create<PrivateLinkServiceConnectionState>(PrivateLinkServiceConnectionState.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<Sku>(Sku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

