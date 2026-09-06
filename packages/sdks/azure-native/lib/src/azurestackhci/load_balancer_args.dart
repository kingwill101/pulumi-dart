// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location.dart';
import 'load_balancer_properties.dart';

/// {@template pulumi_azurestackhci_load_balancer_args_doc}
/// The set of arguments for LoadBalancer.
/// {@endtemplate}
/// {@macro pulumi_azurestackhci_load_balancer_args_doc}
class LoadBalancerArgs {
  /// The extendedLocation of the resource.
  final pulumi.Input<ExtendedLocation?>? extendedLocation;
  /// Name of the load balancer
  final pulumi.Input<String?>? loadBalancerName;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// The resource-specific properties for this resource.
  final pulumi.Input<LoadBalancerProperties?>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [LoadBalancerArgs].
  /// [extendedLocation] The extendedLocation of the resource.
  /// [loadBalancerName] Name of the load balancer
  /// [location] The geo-location where the resource lives
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  const LoadBalancerArgs({
    this.extendedLocation,
    this.loadBalancerName,
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'loadBalancerName': ?loadBalancerName,
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<LoadBalancerProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory LoadBalancerArgs.fromMap(Map<String, dynamic> map) {
    return LoadBalancerArgs(
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExtendedLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      loadBalancerName: (() { final guardedValue = map['loadBalancerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LoadBalancerProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
