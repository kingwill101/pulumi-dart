// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'wave_properties.dart';

/// {@template pulumi_migrate_wave_args_doc}
/// The set of arguments for Wave.
/// {@endtemplate}
/// {@macro pulumi_migrate_wave_args_doc}
class WaveArgs {
  /// Migrate Project Name
  final pulumi.Input<String> projectName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<WaveProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Migration Wave Resource
  final pulumi.Input<String>? waveName;

  /// Creates a new [WaveArgs].
  /// [projectName] Migrate Project Name
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [waveName] Migration Wave Resource
  WaveArgs({
    required pulumi.Output<String> projectName,
    pulumi.Output<WaveProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? waveName,
  }) :
      projectName = pulumi.Input.asInput<String>(projectName),
      properties = pulumi.Input.asOptionalInput<WaveProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      waveName = pulumi.Input.asOptionalInput<String>(waveName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectName': projectName,
      'properties': ?pulumi.Input.mapOptionalInputValue<WaveProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'waveName': ?waveName,
    };
  }

  factory WaveArgs.fromMap(Map<String, dynamic> map) {
    return WaveArgs(
      projectName: pulumi.Output.create<String>(map['projectName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<WaveProperties>(WaveProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      waveName: map['waveName'] == null ? null : pulumi.Output.create<String>(map['waveName'] as String),
    );
  }
}

