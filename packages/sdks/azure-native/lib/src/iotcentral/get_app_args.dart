// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iotcentral_get_app_args_doc}
/// Arguments for getApp.
/// {@endtemplate}
/// {@macro pulumi_iotcentral_get_app_args_doc}
class GetAppArgs {
  /// The name of the resource group that contains the IoT Central application.
  final pulumi.Input<String> resourceGroupName;

  /// The ARM resource name of the IoT Central application.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetAppArgs].
  /// [resourceGroupName] The name of the resource group that contains the IoT Central application.
  /// [resourceName] The ARM resource name of the IoT Central application.
  GetAppArgs({required this.resourceGroupName, required this.resourceName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetAppArgs.fromMap(Map<String, dynamic> map) {
    return GetAppArgs(
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
    );
  }
}
