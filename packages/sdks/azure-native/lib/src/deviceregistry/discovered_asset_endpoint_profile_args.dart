// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location.dart';

/// {@template pulumi_deviceregistry_discovered_asset_endpoint_profile_args_doc}
/// The set of arguments for DiscoveredAssetEndpointProfile.
/// {@endtemplate}
/// {@macro pulumi_deviceregistry_discovered_asset_endpoint_profile_args_doc}
class DiscoveredAssetEndpointProfileArgs {
  /// Stringified JSON that contains connectivity type specific further configuration (e.g. OPC UA, Modbus, ONVIF).
  final pulumi.Input<String>? additionalConfiguration;
  /// Discovered Asset Endpoint Profile name parameter.
  final pulumi.Input<String>? discoveredAssetEndpointProfileName;
  /// Identifier used to detect changes in the asset endpoint profile.
  final pulumi.Input<String> discoveryId;
  /// Defines the configuration for the connector type that is being used with the endpoint profile.
  final pulumi.Input<String> endpointProfileType;
  /// The extended location.
  final pulumi.Input<ExtendedLocation> extendedLocation;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// List of supported authentication methods supported by the target server.
  final pulumi.Input<List<String>>? supportedAuthenticationMethods;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The local valid URI specifying the network address/DNS name of a southbound device. The scheme part of the targetAddress URI specifies the type of the device. The additionalConfiguration field holds further connector type specific configuration.
  final pulumi.Input<String> targetAddress;
  /// An integer that is incremented each time the resource is modified.
  final pulumi.Input<double> version;

  /// Creates a new [DiscoveredAssetEndpointProfileArgs].
  /// [additionalConfiguration] Stringified JSON that contains connectivity type specific further configuration (e.g. OPC UA, Modbus, ONVIF).
  /// [discoveredAssetEndpointProfileName] Discovered Asset Endpoint Profile name parameter.
  /// [discoveryId] Identifier used to detect changes in the asset endpoint profile.
  /// [endpointProfileType] Defines the configuration for the connector type that is being used with the endpoint profile.
  /// [extendedLocation] The extended location.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [supportedAuthenticationMethods] List of supported authentication methods supported by the target server.
  /// [tags] Resource tags.
  /// [targetAddress] The local valid URI specifying the network address/DNS name of a southbound device. The scheme part of the targetAddress URI specifies the type of the device. The additionalConfiguration field holds further connector type specific configuration.
  /// [version] An integer that is incremented each time the resource is modified.
  const DiscoveredAssetEndpointProfileArgs({
    this.additionalConfiguration,
    this.discoveredAssetEndpointProfileName,
    required this.discoveryId,
    required this.endpointProfileType,
    required this.extendedLocation,
    this.location,
    required this.resourceGroupName,
    this.supportedAuthenticationMethods,
    this.tags,
    required this.targetAddress,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalConfiguration': ?additionalConfiguration,
      'discoveredAssetEndpointProfileName': ?discoveredAssetEndpointProfileName,
      'discoveryId': discoveryId,
      'endpointProfileType': endpointProfileType,
      'extendedLocation': pulumi.Input.mapInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'supportedAuthenticationMethods': ?supportedAuthenticationMethods,
      'tags': ?tags,
      'targetAddress': targetAddress,
      'version': version,
    };
  }

  factory DiscoveredAssetEndpointProfileArgs.fromMap(Map<String, dynamic> map) {
    return DiscoveredAssetEndpointProfileArgs(
      additionalConfiguration: (() { final guardedValue = map['additionalConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      discoveredAssetEndpointProfileName: (() { final guardedValue = map['discoveredAssetEndpointProfileName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      discoveryId: pulumi.Input.fromValue(map['discoveryId'] as String),
      endpointProfileType: pulumi.Input.fromValue(map['endpointProfileType'] as String),
      extendedLocation: pulumi.Input.fromValue(ExtendedLocation.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>())),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      supportedAuthenticationMethods: (() { final guardedValue = map['supportedAuthenticationMethods']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetAddress: pulumi.Input.fromValue(map['targetAddress'] as String),
      version: pulumi.Input.fromValue(map['version'] as double),
    );
  }
}
