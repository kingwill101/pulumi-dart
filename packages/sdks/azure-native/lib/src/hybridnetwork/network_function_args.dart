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
    this.identity,
    this.location,
    this.networkFunctionName,
    this.properties,
    required this.resourceGroupName,
    this.tags,
  });

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
      identity: map['identity'] == null ? null : (ManagedServiceIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      networkFunctionName: map['networkFunctionName'] == null ? null : (map['networkFunctionName']! as String).input(),
      properties: map['properties'] == null ? null : (NetworkFunctionValueWithSecrets.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

