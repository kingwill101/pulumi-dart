// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cdn_get_afdendpoint_args_doc}
/// Arguments for getAFDEndpoint.
/// {@endtemplate}
/// {@macro pulumi_cdn_get_afdendpoint_args_doc}
class GetAFDEndpointArgs {
  /// Name of the endpoint under the profile which is unique globally.
  final pulumi.Input<String> endpointName;
  /// Name of the Azure Front Door Standard or Azure Front Door Premium or CDN profile which is unique within the resource group.
  final pulumi.Input<String> profileName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAFDEndpointArgs].
  /// [endpointName] Name of the endpoint under the profile which is unique globally.
  /// [profileName] Name of the Azure Front Door Standard or Azure Front Door Premium or CDN profile which is unique within the resource group.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetAFDEndpointArgs({
    required this.endpointName,
    required this.profileName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointName': endpointName,
      'profileName': profileName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAFDEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GetAFDEndpointArgs(
      endpointName: (map['endpointName'] as String).input(),
      profileName: (map['profileName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

