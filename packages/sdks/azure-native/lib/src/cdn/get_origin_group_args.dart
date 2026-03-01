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
    required pulumi.Output<String> endpointName,
    required pulumi.Output<String> originGroupName,
    required pulumi.Output<String> profileName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      endpointName = pulumi.Input.asInput<String>(endpointName),
      originGroupName = pulumi.Input.asInput<String>(originGroupName),
      profileName = pulumi.Input.asInput<String>(profileName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      endpointName: pulumi.Output.create<String>(map['endpointName'] as String),
      originGroupName: pulumi.Output.create<String>(map['originGroupName'] as String),
      profileName: pulumi.Output.create<String>(map['profileName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

