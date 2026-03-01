// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cdn_get_origin_args_doc}
/// Arguments for getOrigin.
/// {@endtemplate}
/// {@macro pulumi_cdn_get_origin_args_doc}
class GetOriginArgs {
  /// Name of the endpoint under the profile which is unique globally.
  final pulumi.Input<String> endpointName;
  /// Name of the origin which is unique within the endpoint.
  final pulumi.Input<String> originName;
  /// Name of the Azure Front Door Standard or Azure Front Door Premium or CDN profile which is unique within the resource group.
  final pulumi.Input<String> profileName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetOriginArgs].
  /// [endpointName] Name of the endpoint under the profile which is unique globally.
  /// [originName] Name of the origin which is unique within the endpoint.
  /// [profileName] Name of the Azure Front Door Standard or Azure Front Door Premium or CDN profile which is unique within the resource group.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetOriginArgs({
    required pulumi.Output<String> endpointName,
    required pulumi.Output<String> originName,
    required pulumi.Output<String> profileName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      endpointName = pulumi.Input.asInput<String>(endpointName),
      originName = pulumi.Input.asInput<String>(originName),
      profileName = pulumi.Input.asInput<String>(profileName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointName': endpointName,
      'originName': originName,
      'profileName': profileName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetOriginArgs.fromMap(Map<String, dynamic> map) {
    return GetOriginArgs(
      endpointName: pulumi.Output.create<String>(map['endpointName'] as String),
      originName: pulumi.Output.create<String>(map['originName'] as String),
      profileName: pulumi.Output.create<String>(map['profileName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

