// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_service_identity.dart';
import 'network_function_value_with_secrets.dart';

/// {@template pulumi_hybridnetwork_network_function_args_doc}
/// The set of arguments for NetworkFunction.
/// {@endtemplate}
/// {@macro pulumi_hybridnetwork_network_function_args_doc}
class NetworkFunctionArgs {
  /// The managed identity of the network function.
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Resource name for the network function resource.
  final pulumi.Input<String>? networkFunctionName;
  /// Network function properties.
  final pulumi.Input<NetworkFunctionValueWithSecrets>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NetworkFunctionArgs].
  /// [identity] The managed identity of the network function.
  /// [location] The geo-location where the resource lives
  /// [networkFunctionName] Resource name for the network function resource.
  /// [properties] Network function properties.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  NetworkFunctionArgs({
    pulumi.Output<ManagedServiceIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<String>? networkFunctionName,
    pulumi.Output<NetworkFunctionValueWithSecrets>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      identity = pulumi.Input.asOptionalInput<ManagedServiceIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      networkFunctionName = pulumi.Input.asOptionalInput<String>(networkFunctionName),
      properties = pulumi.Input.asOptionalInput<NetworkFunctionValueWithSecrets>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'networkFunctionName': ?networkFunctionName,
      'properties': ?pulumi.Input.mapOptionalInputValue<NetworkFunctionValueWithSecrets, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory NetworkFunctionArgs.fromMap(Map<String, dynamic> map) {
    return NetworkFunctionArgs(
      identity: map['identity'] == null ? null : pulumi.Output.create<ManagedServiceIdentity>(ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      networkFunctionName: map['networkFunctionName'] == null ? null : pulumi.Output.create<String>(map['networkFunctionName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<NetworkFunctionValueWithSecrets>(NetworkFunctionValueWithSecrets.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

