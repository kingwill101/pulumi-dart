// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cdn_get_profile_supported_optimization_types_args_doc}
/// Arguments for getProfileSupportedOptimizationTypes.
/// {@endtemplate}
/// {@macro pulumi_cdn_get_profile_supported_optimization_types_args_doc}
class GetProfileSupportedOptimizationTypesArgs {
  /// Name of the Azure Front Door Standard or Azure Front Door Premium or CDN profile which is unique within the resource group.
  final pulumi.Input<String> profileName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetProfileSupportedOptimizationTypesArgs].
  /// [profileName] Name of the Azure Front Door Standard or Azure Front Door Premium or CDN profile which is unique within the resource group.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetProfileSupportedOptimizationTypesArgs({
    required String profileName,
    required String resourceGroupName,
  }) :
      profileName = pulumi.Input.asInput<String>(profileName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'profileName': profileName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetProfileSupportedOptimizationTypesArgs.fromMap(Map<String, dynamic> map) {
    return GetProfileSupportedOptimizationTypesArgs(
      profileName: map['profileName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

