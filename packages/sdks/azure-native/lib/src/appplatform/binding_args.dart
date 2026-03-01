// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'binding_resource_properties.dart';

/// {@template pulumi_appplatform_binding_args_doc}
/// The set of arguments for Binding.
/// {@endtemplate}
/// {@macro pulumi_appplatform_binding_args_doc}
class BindingArgs {
  /// The name of the App resource.
  final pulumi.Input<String> appName;
  /// The name of the Binding resource.
  final pulumi.Input<String>? bindingName;
  /// Properties of the Binding resource
  final pulumi.Input<BindingResourceProperties>? properties;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Service resource.
  final pulumi.Input<String> serviceName;

  /// Creates a new [BindingArgs].
  /// [appName] The name of the App resource.
  /// [bindingName] The name of the Binding resource.
  /// [properties] Properties of the Binding resource
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serviceName] The name of the Service resource.
  BindingArgs({
    required pulumi.Output<String> appName,
    pulumi.Output<String>? bindingName,
    pulumi.Output<BindingResourceProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
  }) :
      appName = pulumi.Input.asInput<String>(appName),
      bindingName = pulumi.Input.asOptionalInput<String>(bindingName),
      properties = pulumi.Input.asOptionalInput<BindingResourceProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appName': appName,
      'bindingName': ?bindingName,
      'properties': ?pulumi.Input.mapOptionalInputValue<BindingResourceProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory BindingArgs.fromMap(Map<String, dynamic> map) {
    return BindingArgs(
      appName: pulumi.Output.create<String>(map['appName'] as String),
      bindingName: map['bindingName'] == null ? null : pulumi.Output.create<String>(map['bindingName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<BindingResourceProperties>(BindingResourceProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
    );
  }
}

