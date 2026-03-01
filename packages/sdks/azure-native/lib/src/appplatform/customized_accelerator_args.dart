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
  CustomizedAcceleratorArgs({
    required pulumi.Output<String> applicationAcceleratorName,
    pulumi.Output<String>? customizedAcceleratorName,
    pulumi.Output<CustomizedAcceleratorProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
    pulumi.Output<Sku>? sku,
  }) :
      applicationAcceleratorName = pulumi.Input.asInput<String>(applicationAcceleratorName),
      customizedAcceleratorName = pulumi.Input.asOptionalInput<String>(customizedAcceleratorName),
      properties = pulumi.Input.asOptionalInput<CustomizedAcceleratorProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      sku = pulumi.Input.asOptionalInput<Sku>(sku);

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
      applicationAcceleratorName: pulumi.Output.create<String>(map['applicationAcceleratorName'] as String),
      customizedAcceleratorName: map['customizedAcceleratorName'] == null ? null : pulumi.Output.create<String>(map['customizedAcceleratorName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<CustomizedAcceleratorProperties>(CustomizedAcceleratorProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<Sku>(Sku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
    );
  }
}

