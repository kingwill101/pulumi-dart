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
  final pulumi.Input<String?>? additionalConfiguration;
  /// Asset Endpoint Profile name parameter.
  final pulumi.Input<String?>? assetEndpointProfileName;
  /// Defines the client authentication mechanism to the server.
  final pulumi.Input<Authentication?>? authentication;
  /// Reference to a discovered asset endpoint profile. Populated only if the asset endpoint profile has been created from discovery flow. Discovered asset endpoint profile name must be provided.
  final pulumi.Input<String?>? discoveredAssetEndpointProfileRef;
  /// Defines the configuration for the connector type that is being used with the endpoint profile.
  final pulumi.Input<String> endpointProfileType;
  /// The extended location.
  final pulumi.Input<ExtendedLocation> extendedLocation;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
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
  const AssetEndpointProfileArgs({
    this.additionalConfiguration,
    this.assetEndpointProfileName,
    this.authentication,
    this.discoveredAssetEndpointProfileRef,
    required this.endpointProfileType,
    required this.extendedLocation,
    this.location,
    required this.resourceGroupName,
    this.tags,
    required this.targetAddress,
  });

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
      additionalConfiguration: (() { final guardedValue = map['additionalConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      assetEndpointProfileName: (() { final guardedValue = map['assetEndpointProfileName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Authentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      discoveredAssetEndpointProfileRef: (() { final guardedValue = map['discoveredAssetEndpointProfileRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointProfileType: pulumi.Input.fromValue(map['endpointProfileType'] as String),
      extendedLocation: pulumi.Input.fromValue(ExtendedLocation.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>())),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetAddress: pulumi.Input.fromValue(map['targetAddress'] as String),
    );
  }
}
