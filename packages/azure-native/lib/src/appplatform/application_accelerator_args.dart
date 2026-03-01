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
    String? applicationAcceleratorName,
    required String resourceGroupName,
    required String serviceName,
    Sku? sku,
  }) :
      applicationAcceleratorName = pulumi.Input.asOptionalInput<String>(applicationAcceleratorName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      sku = pulumi.Input.asOptionalInput<Sku>(sku);

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
      applicationAcceleratorName: map['applicationAcceleratorName'] == null ? null : map['applicationAcceleratorName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serviceName: map['serviceName'] as String,
      sku: map['sku'] == null ? null : Sku.fromMap((map['sku'] as Map).cast<String, dynamic>()),
    );
  }
}

