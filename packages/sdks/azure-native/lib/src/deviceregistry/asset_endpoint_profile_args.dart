// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authentication.dart';
import 'extended_location.dart';

/// {@template pulumi_deviceregistry_asset_endpoint_profile_args_doc}
/// The set of arguments for AssetEndpointProfile.
/// {@endtemplate}
/// {@macro pulumi_deviceregistry_asset_endpoint_profile_args_doc}
class AssetEndpointProfileArgs {
  /// Stringified JSON that contains connectivity type specific further configuration (e.g. OPC UA, Modbus, ONVIF).
  final pulumi.Input<String>? additionalConfiguration;
  /// Asset Endpoint Profile name parameter.
  final pulumi.Input<String>? assetEndpointProfileName;
  /// Defines the client authentication mechanism to the server.
  final pulumi.Input<Authentication>? authentication;
  /// Reference to a discovered asset endpoint profile. Populated only if the asset endpoint profile has been created from discovery flow. Discovered asset endpoint profile name must be provided.
  final pulumi.Input<String>? discoveredAssetEndpointProfileRef;
  /// Defines the configuration for the connector type that is being used with the endpoint profile.
  final pulumi.Input<String> endpointProfileType;
  /// The extended location.
  final pulumi.Input<ExtendedLocation> extendedLocation;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The local valid URI specifying the network address/DNS name of a southbound device. The scheme part of the targetAddress URI specifies the type of the device. The additionalConfiguration field holds further connector type specific configuration.
  final pulumi.Input<String> targetAddress;

  /// Creates a new [AssetEndpointProfileArgs].
  /// [additionalConfiguration] Stringified JSON that contains connectivity type specific further configuration (e.g. OPC UA, Modbus, ONVIF).
  /// [assetEndpointProfileName] Asset Endpoint Profile name parameter.
  /// [authentication] Defines the client authentication mechanism to the server.
  /// [discoveredAssetEndpointProfileRef] Reference to a discovered asset endpoint profile. Populated only if the asset endpoint profile has been created from discovery flow. Discovered asset endpoint profile name must be provided.
  /// [endpointProfileType] Defines the configuration for the connector type that is being used with the endpoint profile.
  /// [extendedLocation] The extended location.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [targetAddress] The local valid URI specifying the network address/DNS name of a southbound device. The scheme part of the targetAddress URI specifies the type of the device. The additionalConfiguration field holds further connector type specific configuration.
  AssetEndpointProfileArgs({
    pulumi.Output<String>? additionalConfiguration,
    pulumi.Output<String>? assetEndpointProfileName,
    pulumi.Output<Authentication>? authentication,
    pulumi.Output<String>? discoveredAssetEndpointProfileRef,
    required pulumi.Output<String> endpointProfileType,
    required pulumi.Output<ExtendedLocation> extendedLocation,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> targetAddress,
  }) :
      additionalConfiguration = pulumi.Input.asOptionalInput<String>(additionalConfiguration),
      assetEndpointProfileName = pulumi.Input.asOptionalInput<String>(assetEndpointProfileName),
      authentication = pulumi.Input.asOptionalInput<Authentication>(authentication),
      discoveredAssetEndpointProfileRef = pulumi.Input.asOptionalInput<String>(discoveredAssetEndpointProfileRef),
      endpointProfileType = pulumi.Input.asInput<String>(endpointProfileType),
      extendedLocation = pulumi.Input.asInput<ExtendedLocation>(extendedLocation),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      targetAddress = pulumi.Input.asInput<String>(targetAddress);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalConfiguration': ?additionalConfiguration,
      'assetEndpointProfileName': ?assetEndpointProfileName,
      'authentication': ?pulumi.Input.mapOptionalInputValue<Authentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'discoveredAssetEndpointProfileRef': ?discoveredAssetEndpointProfileRef,
      'endpointProfileType': endpointProfileType,
      'extendedLocation': pulumi.Input.mapInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'targetAddress': targetAddress,
    };
  }

  factory AssetEndpointProfileArgs.fromMap(Map<String, dynamic> map) {
    return AssetEndpointProfileArgs(
      additionalConfiguration: map['additionalConfiguration'] == null ? null : pulumi.Output.create<String>(map['additionalConfiguration'] as String),
      assetEndpointProfileName: map['assetEndpointProfileName'] == null ? null : pulumi.Output.create<String>(map['assetEndpointProfileName'] as String),
      authentication: map['authentication'] == null ? null : pulumi.Output.create<Authentication>(Authentication.fromMap((map['authentication'] as Map).cast<String, dynamic>())),
      discoveredAssetEndpointProfileRef: map['discoveredAssetEndpointProfileRef'] == null ? null : pulumi.Output.create<String>(map['discoveredAssetEndpointProfileRef'] as String),
      endpointProfileType: pulumi.Output.create<String>(map['endpointProfileType'] as String),
      extendedLocation: pulumi.Output.create<ExtendedLocation>(ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      targetAddress: pulumi.Output.create<String>(map['targetAddress'] as String),
    );
  }
}

