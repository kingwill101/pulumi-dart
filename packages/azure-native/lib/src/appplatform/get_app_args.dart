// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appplatform_get_app_args_doc}
/// Arguments for getApp.
/// {@endtemplate}
/// {@macro pulumi_appplatform_get_app_args_doc}
class GetAppArgs {
  /// The name of the App resource.
  final pulumi.Input<String> appName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Service resource.
  final pulumi.Input<String> serviceName;
  /// Indicates whether sync status
  final pulumi.Input<String>? syncStatus;

  /// Creates a new [GetAppArgs].
  /// [appName] The name of the App resource.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serviceName] The name of the Service resource.
  /// [syncStatus] Indicates whether sync status
  GetAppArgs({
    required String appName,
    required String resourceGroupName,
    required String serviceName,
    String? syncStatus,
  }) :
      appName = pulumi.Input.asInput<String>(appName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      syncStatus = pulumi.Input.asOptionalInput<String>(syncStatus);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appName': appName,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'syncStatus': ?syncStatus,
    };
  }

  factory GetAppArgs.fromMap(Map<String, dynamic> map) {
    return GetAppArgs(
      appName: map['appName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serviceName: map['serviceName'] as String,
      syncStatus: map['syncStatus'] == null ? null : map['syncStatus'] as String,
    );
  }
}

