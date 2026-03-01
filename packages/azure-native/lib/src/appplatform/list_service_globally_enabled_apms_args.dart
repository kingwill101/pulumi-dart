// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appplatform_list_service_globally_enabled_apms_args_doc}
/// Arguments for listServiceGloballyEnabledApms.
/// {@endtemplate}
/// {@macro pulumi_appplatform_list_service_globally_enabled_apms_args_doc}
class ListServiceGloballyEnabledApmsArgs {
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Service resource.
  final pulumi.Input<String> serviceName;

  /// Creates a new [ListServiceGloballyEnabledApmsArgs].
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serviceName] The name of the Service resource.
  ListServiceGloballyEnabledApmsArgs({
    required String resourceGroupName,
    required String serviceName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory ListServiceGloballyEnabledApmsArgs.fromMap(Map<String, dynamic> map) {
    return ListServiceGloballyEnabledApmsArgs(
      resourceGroupName: map['resourceGroupName'] as String,
      serviceName: map['serviceName'] as String,
    );
  }
}

