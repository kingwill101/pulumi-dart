// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'egress_endpoint.dart';
import 'extended_location.dart';

/// {@template pulumi_networkcloud_cloud_services_network_args_doc}
/// The set of arguments for CloudServicesNetwork.
/// {@endtemplate}
/// {@macro pulumi_networkcloud_cloud_services_network_args_doc}
class CloudServicesNetworkArgs {
  /// The list of egress endpoints. This allows for connection from a Hybrid AKS cluster to the specified endpoint.
  final pulumi.Input<List<EgressEndpoint>>? additionalEgressEndpoints;
  /// The name of the cloud services network.
  final pulumi.Input<String>? cloudServicesNetworkName;
  /// The indicator of whether the platform default endpoints are allowed for the egress traffic.
  final pulumi.Input<String>? enableDefaultEgressEndpoints;
  /// The extended location of the cluster associated with the resource.
  final pulumi.Input<ExtendedLocation> extendedLocation;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [CloudServicesNetworkArgs].
  /// [additionalEgressEndpoints] The list of egress endpoints. This allows for connection from a Hybrid AKS cluster to the specified endpoint.
  /// [cloudServicesNetworkName] The name of the cloud services network.
  /// [enableDefaultEgressEndpoints] The indicator of whether the platform default endpoints are allowed for the egress traffic.
  /// [extendedLocation] The extended location of the cluster associated with the resource.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  CloudServicesNetworkArgs({
    List<EgressEndpoint>? additionalEgressEndpoints,
    String? cloudServicesNetworkName,
    String? enableDefaultEgressEndpoints,
    required ExtendedLocation extendedLocation,
    String? location,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      additionalEgressEndpoints = pulumi.Input.asOptionalInput<List<EgressEndpoint>>(additionalEgressEndpoints),
      cloudServicesNetworkName = pulumi.Input.asOptionalInput<String>(cloudServicesNetworkName),
      enableDefaultEgressEndpoints = pulumi.Input.asOptionalInput<String>(enableDefaultEgressEndpoints),
      extendedLocation = pulumi.Input.asInput<ExtendedLocation>(extendedLocation),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalEgressEndpoints': ?pulumi.Input.mapOptionalInputValue<List<EgressEndpoint>, List<Map<String, dynamic>>>(additionalEgressEndpoints, (value) => pulumi.Input.encodeList<EgressEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cloudServicesNetworkName': ?cloudServicesNetworkName,
      'enableDefaultEgressEndpoints': ?enableDefaultEgressEndpoints,
      'extendedLocation': pulumi.Input.mapInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory CloudServicesNetworkArgs.fromMap(Map<String, dynamic> map) {
    return CloudServicesNetworkArgs(
      additionalEgressEndpoints: map['additionalEgressEndpoints'] == null ? null : pulumi.Input.decodeList<EgressEndpoint>(map['additionalEgressEndpoints'], (value) => EgressEndpoint.fromMap((value as Map).cast<String, dynamic>())),
      cloudServicesNetworkName: map['cloudServicesNetworkName'] == null ? null : map['cloudServicesNetworkName'] as String,
      enableDefaultEgressEndpoints: map['enableDefaultEgressEndpoints'] == null ? null : map['enableDefaultEgressEndpoints'] as String,
      extendedLocation: ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

