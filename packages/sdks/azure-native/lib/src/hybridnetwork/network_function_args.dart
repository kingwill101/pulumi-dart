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
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedServiceIdentity,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
      'location': ?location,
      'networkFunctionName': ?networkFunctionName,
      'properties':
          ?pulumi.Input.mapOptionalInputValue<
            NetworkFunctionValueWithSecrets,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory NetworkFunctionArgs.fromMap(Map<String, dynamic> map) {
    return NetworkFunctionArgs(
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
      networkFunctionName: (() {
        final guardedValue = map['networkFunctionName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NetworkFunctionValueWithSecrets.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
