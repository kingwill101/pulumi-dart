// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'customized_accelerator_properties.dart';
import 'sku.dart';

/// {@template pulumi_appplatform_customized_accelerator_args_doc}
/// The set of arguments for CustomizedAccelerator.
/// {@endtemplate}
/// {@macro pulumi_appplatform_customized_accelerator_args_doc}
class CustomizedAcceleratorArgs {
  /// The name of the application accelerator.
  final pulumi.Input<String> applicationAcceleratorName;
  /// The name of the customized accelerator.
  final pulumi.Input<String>? customizedAcceleratorName;
  /// Customized accelerator properties payload
  final pulumi.Input<CustomizedAcceleratorProperties>? properties;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Service resource.
  final pulumi.Input<String> serviceName;
  /// Sku of the customized accelerator resource
  final pulumi.Input<Sku>? sku;

  /// Creates a new [CustomizedAcceleratorArgs].
  /// [applicationAcceleratorName] The name of the application accelerator.
  /// [customizedAcceleratorName] The name of the customized accelerator.
  /// [properties] Customized accelerator properties payload
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serviceName] The name of the Service resource.
  /// [sku] Sku of the customized accelerator resource
  const CustomizedAcceleratorArgs({
    required this.applicationAcceleratorName,
    this.customizedAcceleratorName,
    this.properties,
    required this.resourceGroupName,
    required this.serviceName,
    this.sku,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationAcceleratorName': applicationAcceleratorName,
      'customizedAcceleratorName': ?customizedAcceleratorName,
      'properties': ?pulumi.Input.mapOptionalInputValue<CustomizedAcceleratorProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
    };
  }

  factory CustomizedAcceleratorArgs.fromMap(Map<String, dynamic> map) {
    return CustomizedAcceleratorArgs(
      applicationAcceleratorName: pulumi.Input.fromValue(map['applicationAcceleratorName'] as String),
      customizedAcceleratorName: (() { final guardedValue = map['customizedAcceleratorName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomizedAcceleratorProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Sku.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
