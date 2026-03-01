// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cdn_get_afdorigin_group_args_doc}
/// Arguments for getAFDOriginGroup.
/// {@endtemplate}
/// {@macro pulumi_cdn_get_afdorigin_group_args_doc}
class GetAFDOriginGroupArgs {
  /// Name of the origin group which is unique within the endpoint.
  final pulumi.Input<String> originGroupName;
  /// Name of the Azure Front Door Standard or Azure Front Door Premium or CDN profile which is unique within the resource group.
  final pulumi.Input<String> profileName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAFDOriginGroupArgs].
  /// [originGroupName] Name of the origin group which is unique within the endpoint.
  /// [profileName] Name of the Azure Front Door Standard or Azure Front Door Premium or CDN profile which is unique within the resource group.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetAFDOriginGroupArgs({
    required pulumi.Output<String> originGroupName,
    required pulumi.Output<String> profileName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      originGroupName = pulumi.Input.asInput<String>(originGroupName),
      profileName = pulumi.Input.asInput<String>(profileName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'originGroupName': originGroupName,
      'profileName': profileName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAFDOriginGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetAFDOriginGroupArgs(
      originGroupName: pulumi.Output.create<String>(map['originGroupName'] as String),
      profileName: pulumi.Output.create<String>(map['profileName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

