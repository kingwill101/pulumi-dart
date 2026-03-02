// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cdn_get_origin_group_args_doc}
/// Arguments for getOriginGroup.
/// {@endtemplate}
/// {@macro pulumi_cdn_get_origin_group_args_doc}
class GetOriginGroupArgs {
  /// Name of the endpoint under the profile which is unique globally.
  final pulumi.Input<String> endpointName;
  /// Name of the origin group which is unique within the endpoint.
  final pulumi.Input<String> originGroupName;
  /// Name of the Azure Front Door Standard or Azure Front Door Premium or CDN profile which is unique within the resource group.
  final pulumi.Input<String> profileName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetOriginGroupArgs].
  /// [endpointName] Name of the endpoint under the profile which is unique globally.
  /// [originGroupName] Name of the origin group which is unique within the endpoint.
  /// [profileName] Name of the Azure Front Door Standard or Azure Front Door Premium or CDN profile which is unique within the resource group.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetOriginGroupArgs({
    required this.endpointName,
    required this.originGroupName,
    required this.profileName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointName': endpointName,
      'originGroupName': originGroupName,
      'profileName': profileName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetOriginGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetOriginGroupArgs(
      endpointName: (map['endpointName'] as String).input(),
      originGroupName: (map['originGroupName'] as String).input(),
      profileName: (map['profileName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

