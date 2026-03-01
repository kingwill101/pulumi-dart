// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appplatform_get_api_portal_args_doc}
/// Arguments for getApiPortal.
/// {@endtemplate}
/// {@macro pulumi_appplatform_get_api_portal_args_doc}
class GetApiPortalArgs {
  /// The name of API portal.
  final pulumi.Input<String> apiPortalName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Service resource.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetApiPortalArgs].
  /// [apiPortalName] The name of API portal.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serviceName] The name of the Service resource.
  GetApiPortalArgs({
    required pulumi.Output<String> apiPortalName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
  }) :
      apiPortalName = pulumi.Input.asInput<String>(apiPortalName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiPortalName': apiPortalName,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GetApiPortalArgs.fromMap(Map<String, dynamic> map) {
    return GetApiPortalArgs(
      apiPortalName: pulumi.Output.create<String>(map['apiPortalName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
    );
  }
}

