// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sku.dart';

/// {@template pulumi_appplatform_application_accelerator_args_doc}
/// The set of arguments for ApplicationAccelerator.
/// {@endtemplate}
/// {@macro pulumi_appplatform_application_accelerator_args_doc}
class ApplicationAcceleratorArgs {
  /// The name of the application accelerator.
  final pulumi.Input<String>? applicationAcceleratorName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Service resource.
  final pulumi.Input<String> serviceName;
  /// Sku of the application accelerator resource
  final pulumi.Input<Sku>? sku;

  /// Creates a new [ApplicationAcceleratorArgs].
  /// [applicationAcceleratorName] The name of the application accelerator.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serviceName] The name of the Service resource.
  /// [sku] Sku of the application accelerator resource
  ApplicationAcceleratorArgs({
    this.applicationAcceleratorName,
    required this.resourceGroupName,
    required this.serviceName,
    this.sku,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationAcceleratorName': ?applicationAcceleratorName,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
    };
  }

  factory ApplicationAcceleratorArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationAcceleratorArgs(
      applicationAcceleratorName: map['applicationAcceleratorName'] == null ? null : (map['applicationAcceleratorName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
      sku: map['sku'] == null ? null : (Sku.fromMap((map['sku'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

