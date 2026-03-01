// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nacos_component.dart';

/// {@template pulumi_app_java_component_args_doc}
/// The set of arguments for JavaComponent.
/// {@endtemplate}
/// {@macro pulumi_app_java_component_args_doc}
class JavaComponentArgs {
  /// Name of the Managed Environment.
  final pulumi.Input<String> environmentName;
  /// Name of the Java Component.
  final pulumi.Input<String>? name;
  /// Java Component resource specific properties
  final pulumi.Input<NacosComponent>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [JavaComponentArgs].
  /// [environmentName] Name of the Managed Environment.
  /// [name] Name of the Java Component.
  /// [properties] Java Component resource specific properties
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  JavaComponentArgs({
    required String environmentName,
    String? name,
    NacosComponent? properties,
    required String resourceGroupName,
  }) :
      environmentName = pulumi.Input.asInput<String>(environmentName),
      name = pulumi.Input.asOptionalInput<String>(name),
      properties = pulumi.Input.asOptionalInput<NacosComponent>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentName': environmentName,
      'name': ?name,
      'properties': ?pulumi.Input.mapOptionalInputValue<NacosComponent, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory JavaComponentArgs.fromMap(Map<String, dynamic> map) {
    return JavaComponentArgs(
      environmentName: map['environmentName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      properties: map['properties'] == null ? null : NacosComponent.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

