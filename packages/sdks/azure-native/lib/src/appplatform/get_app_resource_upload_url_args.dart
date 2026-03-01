// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appplatform_get_app_resource_upload_url_args_doc}
/// Arguments for getAppResourceUploadUrl.
/// {@endtemplate}
/// {@macro pulumi_appplatform_get_app_resource_upload_url_args_doc}
class GetAppResourceUploadUrlArgs {
  /// The name of the App resource.
  final pulumi.Input<String> appName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Service resource.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetAppResourceUploadUrlArgs].
  /// [appName] The name of the App resource.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serviceName] The name of the Service resource.
  GetAppResourceUploadUrlArgs({
    required pulumi.Output<String> appName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
  }) :
      appName = pulumi.Input.asInput<String>(appName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appName': appName,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GetAppResourceUploadUrlArgs.fromMap(Map<String, dynamic> map) {
    return GetAppResourceUploadUrlArgs(
      appName: pulumi.Output.create<String>(map['appName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
    );
  }
}

