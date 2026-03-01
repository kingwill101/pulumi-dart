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
  DiscoveredAssetEndpointProfileArgs({
    pulumi.Output<String>? additionalConfiguration,
    pulumi.Output<String>? discoveredAssetEndpointProfileName,
    required pulumi.Output<String> discoveryId,
    required pulumi.Output<String> endpointProfileType,
    required pulumi.Output<ExtendedLocation> extendedLocation,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<List<String>>? supportedAuthenticationMethods,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> targetAddress,
    required pulumi.Output<double> version,
  }) :
      additionalConfiguration = pulumi.Input.asOptionalInput<String>(additionalConfiguration),
      discoveredAssetEndpointProfileName = pulumi.Input.asOptionalInput<String>(discoveredAssetEndpointProfileName),
      discoveryId = pulumi.Input.asInput<String>(discoveryId),
      endpointProfileType = pulumi.Input.asInput<String>(endpointProfileType),
      extendedLocation = pulumi.Input.asInput<ExtendedLocation>(extendedLocation),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      supportedAuthenticationMethods = pulumi.Input.asOptionalInput<List<String>>(supportedAuthenticationMethods),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      targetAddress = pulumi.Input.asInput<String>(targetAddress),
      version = pulumi.Input.asInput<double>(version);

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
      additionalConfiguration: map['additionalConfiguration'] == null ? null : pulumi.Output.create<String>(map['additionalConfiguration'] as String),
      discoveredAssetEndpointProfileName: map['discoveredAssetEndpointProfileName'] == null ? null : pulumi.Output.create<String>(map['discoveredAssetEndpointProfileName'] as String),
      discoveryId: pulumi.Output.create<String>(map['discoveryId'] as String),
      endpointProfileType: pulumi.Output.create<String>(map['endpointProfileType'] as String),
      extendedLocation: pulumi.Output.create<ExtendedLocation>(ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      supportedAuthenticationMethods: map['supportedAuthenticationMethods'] == null ? null : pulumi.Output.create<List<String>>((map['supportedAuthenticationMethods'] as List).cast<String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      targetAddress: pulumi.Output.create<String>(map['targetAddress'] as String),
      version: pulumi.Output.create<double>(map['version'] as double),
    );
  }
}

