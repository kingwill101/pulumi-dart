// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appplatform_get_customized_accelerator_args_doc}
/// Arguments for getCustomizedAccelerator.
/// {@endtemplate}
/// {@macro pulumi_appplatform_get_customized_accelerator_args_doc}
class GetCustomizedAcceleratorArgs {
  /// The name of the application accelerator.
  final pulumi.Input<String> applicationAcceleratorName;
  /// The name of the customized accelerator.
  final pulumi.Input<String> customizedAcceleratorName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Service resource.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetCustomizedAcceleratorArgs].
  /// [applicationAcceleratorName] The name of the application accelerator.
  /// [customizedAcceleratorName] The name of the customized accelerator.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serviceName] The name of the Service resource.
  GetCustomizedAcceleratorArgs({
    required pulumi.Output<String> applicationAcceleratorName,
    required pulumi.Output<String> customizedAcceleratorName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
  }) :
      applicationAcceleratorName = pulumi.Input.asInput<String>(applicationAcceleratorName),
      customizedAcceleratorName = pulumi.Input.asInput<String>(customizedAcceleratorName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationAcceleratorName': applicationAcceleratorName,
      'customizedAcceleratorName': customizedAcceleratorName,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GetCustomizedAcceleratorArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomizedAcceleratorArgs(
      applicationAcceleratorName: pulumi.Output.create<String>(map['applicationAcceleratorName'] as String),
      customizedAcceleratorName: pulumi.Output.create<String>(map['customizedAcceleratorName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
    );
  }
}

