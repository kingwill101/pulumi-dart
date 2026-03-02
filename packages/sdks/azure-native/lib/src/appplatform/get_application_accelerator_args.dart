// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appplatform_get_application_accelerator_args_doc}
/// Arguments for getApplicationAccelerator.
/// {@endtemplate}
/// {@macro pulumi_appplatform_get_application_accelerator_args_doc}
class GetApplicationAcceleratorArgs {
  /// The name of the application accelerator.
  final pulumi.Input<String> applicationAcceleratorName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Service resource.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetApplicationAcceleratorArgs].
  /// [applicationAcceleratorName] The name of the application accelerator.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serviceName] The name of the Service resource.
  GetApplicationAcceleratorArgs({
    required this.applicationAcceleratorName,
    required this.resourceGroupName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationAcceleratorName': applicationAcceleratorName,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GetApplicationAcceleratorArgs.fromMap(Map<String, dynamic> map) {
    return GetApplicationAcceleratorArgs(
      applicationAcceleratorName: (map['applicationAcceleratorName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
    );
  }
}

