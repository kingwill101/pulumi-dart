// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iotoperations_get_akri_service_args_doc}
/// Arguments for getAkriService.
/// {@endtemplate}
/// {@macro pulumi_iotoperations_get_akri_service_args_doc}
class GetAkriServiceArgs {
  /// Name of AkriService resource.
  final pulumi.Input<String> akriServiceName;
  /// Name of instance.
  final pulumi.Input<String> instanceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAkriServiceArgs].
  /// [akriServiceName] Name of AkriService resource.
  /// [instanceName] Name of instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetAkriServiceArgs({
    required this.akriServiceName,
    required this.instanceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'akriServiceName': akriServiceName,
      'instanceName': instanceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAkriServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetAkriServiceArgs(
      akriServiceName: pulumi.Input.fromValue(map['akriServiceName'] as String),
      instanceName: pulumi.Input.fromValue(map['instanceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
