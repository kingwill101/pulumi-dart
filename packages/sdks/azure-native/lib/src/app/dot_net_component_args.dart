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
  DotNetComponentArgs({
    pulumi.Output<String>? componentType,
    pulumi.Output<List<DotNetComponentConfigurationProperty>>? configurations,
    required pulumi.Output<String> environmentName,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<List<DotNetComponentServiceBind>>? serviceBinds,
  }) :
      componentType = pulumi.Input.asOptionalInput<String>(componentType),
      configurations = pulumi.Input.asOptionalInput<List<DotNetComponentConfigurationProperty>>(configurations),
      environmentName = pulumi.Input.asInput<String>(environmentName),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceBinds = pulumi.Input.asOptionalInput<List<DotNetComponentServiceBind>>(serviceBinds);

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
      componentType: map['componentType'] == null ? null : pulumi.Output.create<String>(map['componentType'] as String),
      configurations: map['configurations'] == null ? null : pulumi.Output.create<List<DotNetComponentConfigurationProperty>>(pulumi.Input.decodeList<DotNetComponentConfigurationProperty>(map['configurations'], (value) => DotNetComponentConfigurationProperty.fromMap((value as Map).cast<String, dynamic>()))),
      environmentName: pulumi.Output.create<String>(map['environmentName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceBinds: map['serviceBinds'] == null ? null : pulumi.Output.create<List<DotNetComponentServiceBind>>(pulumi.Input.decodeList<DotNetComponentServiceBind>(map['serviceBinds'], (value) => DotNetComponentServiceBind.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

