// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cdn_get_afdorigin_args_doc}
/// Arguments for getAFDOrigin.
/// {@endtemplate}
/// {@macro pulumi_cdn_get_afdorigin_args_doc}
class GetAFDOriginArgs {
  /// Name of the origin group which is unique within the endpoint.
  final pulumi.Input<String> originGroupName;
  /// Name of the origin which is unique within the profile.
  final pulumi.Input<String> originName;
  /// Name of the Azure Front Door Standard or Azure Front Door Premium or CDN profile which is unique within the resource group.
  final pulumi.Input<String> profileName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAFDOriginArgs].
  /// [originGroupName] Name of the origin group which is unique within the endpoint.
  /// [originName] Name of the origin which is unique within the profile.
  /// [profileName] Name of the Azure Front Door Standard or Azure Front Door Premium or CDN profile which is unique within the resource group.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetAFDOriginArgs({
    required this.originGroupName,
    required this.originName,
    required this.profileName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'originGroupName': originGroupName,
      'originName': originName,
      'profileName': profileName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAFDOriginArgs.fromMap(Map<String, dynamic> map) {
    return GetAFDOriginArgs(
      originGroupName: (map['originGroupName'] as String).input(),
      originName: (map['originName'] as String).input(),
      profileName: (map['profileName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

