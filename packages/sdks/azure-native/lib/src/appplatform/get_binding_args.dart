// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appplatform_get_binding_args_doc}
/// Arguments for getBinding.
/// {@endtemplate}
/// {@macro pulumi_appplatform_get_binding_args_doc}
class GetBindingArgs {
  /// The name of the App resource.
  final pulumi.Input<String> appName;
  /// The name of the Binding resource.
  final pulumi.Input<String> bindingName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Service resource.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetBindingArgs].
  /// [appName] The name of the App resource.
  /// [bindingName] The name of the Binding resource.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serviceName] The name of the Service resource.
  GetBindingArgs({
    required pulumi.Output<String> appName,
    required pulumi.Output<String> bindingName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
  }) :
      appName = pulumi.Input.asInput<String>(appName),
      bindingName = pulumi.Input.asInput<String>(bindingName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appName': appName,
      'bindingName': bindingName,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GetBindingArgs.fromMap(Map<String, dynamic> map) {
    return GetBindingArgs(
      appName: pulumi.Output.create<String>(map['appName'] as String),
      bindingName: pulumi.Output.create<String>(map['bindingName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
    );
  }
}

