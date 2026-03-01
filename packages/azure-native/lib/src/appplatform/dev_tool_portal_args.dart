// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dev_tool_portal_properties.dart';

/// {@template pulumi_appplatform_dev_tool_portal_args_doc}
/// The set of arguments for DevToolPortal.
/// {@endtemplate}
/// {@macro pulumi_appplatform_dev_tool_portal_args_doc}
class DevToolPortalArgs {
  /// The name of Dev Tool Portal.
  final pulumi.Input<String>? devToolPortalName;
  /// Dev Tool Portal properties payload
  final pulumi.Input<DevToolPortalProperties>? properties;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Service resource.
  final pulumi.Input<String> serviceName;

  /// Creates a new [DevToolPortalArgs].
  /// [devToolPortalName] The name of Dev Tool Portal.
  /// [properties] Dev Tool Portal properties payload
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serviceName] The name of the Service resource.
  DevToolPortalArgs({
    String? devToolPortalName,
    DevToolPortalProperties? properties,
    required String resourceGroupName,
    required String serviceName,
  }) :
      devToolPortalName = pulumi.Input.asOptionalInput<String>(devToolPortalName),
      properties = pulumi.Input.asOptionalInput<DevToolPortalProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devToolPortalName': ?devToolPortalName,
      'properties': ?pulumi.Input.mapOptionalInputValue<DevToolPortalProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory DevToolPortalArgs.fromMap(Map<String, dynamic> map) {
    return DevToolPortalArgs(
      devToolPortalName: map['devToolPortalName'] == null ? null : map['devToolPortalName'] as String,
      properties: map['properties'] == null ? null : DevToolPortalProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      serviceName: map['serviceName'] as String,
    );
  }
}

