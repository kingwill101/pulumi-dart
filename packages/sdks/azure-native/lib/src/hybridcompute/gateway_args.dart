// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hybridcompute_gateway_args_doc}
/// The set of arguments for Gateway.
/// {@endtemplate}
/// {@macro pulumi_hybridcompute_gateway_args_doc}
class GatewayArgs {
  /// Specifies the list of features that are enabled for this Gateway.
  final pulumi.Input<List<String>>? allowedFeatures;
  /// The name of the Gateway.
  final pulumi.Input<String>? gatewayName;
  /// The type of the Gateway resource.
  final pulumi.Input<String>? gatewayType;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GatewayArgs].
  /// [allowedFeatures] Specifies the list of features that are enabled for this Gateway.
  /// [gatewayName] The name of the Gateway.
  /// [gatewayType] The type of the Gateway resource.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  GatewayArgs({
    this.allowedFeatures,
    this.gatewayName,
    this.gatewayType,
    this.location,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedFeatures': ?allowedFeatures,
      'gatewayName': ?gatewayName,
      'gatewayType': ?gatewayType,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GatewayArgs.fromMap(Map<String, dynamic> map) {
    return GatewayArgs(
      allowedFeatures: map['allowedFeatures'] == null ? null : ((map['allowedFeatures'] as List).cast<String>()).input(),
      gatewayName: map['gatewayName'] == null ? null : (map['gatewayName'] as String).input(),
      gatewayType: map['gatewayType'] == null ? null : (map['gatewayType'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

