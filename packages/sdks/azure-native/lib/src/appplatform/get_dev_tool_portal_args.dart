// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appplatform_get_dev_tool_portal_args_doc}
/// Arguments for getDevToolPortal.
/// {@endtemplate}
/// {@macro pulumi_appplatform_get_dev_tool_portal_args_doc}
class GetDevToolPortalArgs {
  /// The name of Dev Tool Portal.
  final pulumi.Input<String> devToolPortalName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Service resource.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetDevToolPortalArgs].
  /// [devToolPortalName] The name of Dev Tool Portal.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serviceName] The name of the Service resource.
  GetDevToolPortalArgs({
    required pulumi.Output<String> devToolPortalName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
  }) :
      devToolPortalName = pulumi.Input.asInput<String>(devToolPortalName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devToolPortalName': devToolPortalName,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GetDevToolPortalArgs.fromMap(Map<String, dynamic> map) {
    return GetDevToolPortalArgs(
      devToolPortalName: pulumi.Output.create<String>(map['devToolPortalName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
    );
  }
}

