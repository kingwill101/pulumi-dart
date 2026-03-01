// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appplatform_list_service_test_keys_args_doc}
/// Arguments for listServiceTestKeys.
/// {@endtemplate}
/// {@macro pulumi_appplatform_list_service_test_keys_args_doc}
class ListServiceTestKeysArgs {
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Service resource.
  final pulumi.Input<String> serviceName;

  /// Creates a new [ListServiceTestKeysArgs].
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serviceName] The name of the Service resource.
  ListServiceTestKeysArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory ListServiceTestKeysArgs.fromMap(Map<String, dynamic> map) {
    return ListServiceTestKeysArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
    );
  }
}

