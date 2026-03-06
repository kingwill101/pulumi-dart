// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dot_net_component_configuration_property.dart';
import 'dot_net_component_service_bind.dart';

/// {@template pulumi_app_dot_net_component_args_doc}
/// The set of arguments for DotNetComponent.
/// {@endtemplate}
/// {@macro pulumi_app_dot_net_component_args_doc}
class DotNetComponentArgs {
  /// Type of the .NET Component.
  final pulumi.Input<String>? componentType;
  /// List of .NET Components configuration properties
  final pulumi.Input<List<DotNetComponentConfigurationProperty>>? configurations;
  /// Name of the Managed Environment.
  final pulumi.Input<String> environmentName;
  /// Name of the .NET Component.
  final pulumi.Input<String>? name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// List of .NET Components that are bound to the .NET component
  final pulumi.Input<List<DotNetComponentServiceBind>>? serviceBinds;

  /// Creates a new [DotNetComponentArgs].
  /// [componentType] Type of the .NET Component.
  /// [configurations] List of .NET Components configuration properties
  /// [environmentName] Name of the Managed Environment.
  /// [name] Name of the .NET Component.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceBinds] List of .NET Components that are bound to the .NET component
  const DotNetComponentArgs({
    this.componentType,
    this.configurations,
    required this.environmentName,
    this.name,
    required this.resourceGroupName,
    this.serviceBinds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentType': ?componentType,
      'configurations': ?pulumi.Input.mapOptionalInputValue<List<DotNetComponentConfigurationProperty>, List<Map<String, dynamic>>>(configurations, (value) => pulumi.Input.encodeList<DotNetComponentConfigurationProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
      'environmentName': environmentName,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'serviceBinds': ?pulumi.Input.mapOptionalInputValue<List<DotNetComponentServiceBind>, List<Map<String, dynamic>>>(serviceBinds, (value) => pulumi.Input.encodeList<DotNetComponentServiceBind, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DotNetComponentArgs.fromMap(Map<String, dynamic> map) {
    return DotNetComponentArgs(
      componentType: (() { final guardedValue = map['componentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configurations: (() { final guardedValue = map['configurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DotNetComponentConfigurationProperty>(guardedValue, (value) => DotNetComponentConfigurationProperty.fromMap((value as Map).cast<String, dynamic>()))); })(),
      environmentName: pulumi.Input.fromValue(map['environmentName'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceBinds: (() { final guardedValue = map['serviceBinds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DotNetComponentServiceBind>(guardedValue, (value) => DotNetComponentServiceBind.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

