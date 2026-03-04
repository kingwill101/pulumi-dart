// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_lightsail_instance_args_doc}
/// Arguments for getLightsailInstance.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_lightsail_instance_args_doc}
class GetLightsailInstanceArgs {
  /// Name of LightsailInstance
  final pulumi.Input<String> name;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetLightsailInstanceArgs].
  /// [name] Name of LightsailInstance
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetLightsailInstanceArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetLightsailInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetLightsailInstanceArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
