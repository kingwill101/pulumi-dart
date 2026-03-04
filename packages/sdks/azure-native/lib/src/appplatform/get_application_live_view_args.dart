// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appplatform_get_application_live_view_args_doc}
/// Arguments for getApplicationLiveView.
/// {@endtemplate}
/// {@macro pulumi_appplatform_get_application_live_view_args_doc}
class GetApplicationLiveViewArgs {
  /// The name of Application Live View.
  final pulumi.Input<String> applicationLiveViewName;

  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the Service resource.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetApplicationLiveViewArgs].
  /// [applicationLiveViewName] The name of Application Live View.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serviceName] The name of the Service resource.
  GetApplicationLiveViewArgs({
    required this.applicationLiveViewName,
    required this.resourceGroupName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationLiveViewName': applicationLiveViewName,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GetApplicationLiveViewArgs.fromMap(Map<String, dynamic> map) {
    return GetApplicationLiveViewArgs(
      applicationLiveViewName: pulumi.Input.fromValue(
        map['applicationLiveViewName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}
