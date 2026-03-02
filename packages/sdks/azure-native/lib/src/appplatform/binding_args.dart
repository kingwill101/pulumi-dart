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
    required this.appName,
    this.bindingName,
    this.properties,
    required this.resourceGroupName,
    required this.serviceName,
  });

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
      appName: (map['appName'] as String).input(),
      bindingName: map['bindingName'] == null ? null : (map['bindingName']! as String).input(),
      properties: map['properties'] == null ? null : (BindingResourceProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
    );
  }
}

