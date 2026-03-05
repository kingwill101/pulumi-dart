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
    required this.projectName,
    this.properties,
    required this.resourceGroupName,
    this.waveName,
  });

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
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WaveProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      waveName: (() { final guardedValue = map['waveName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

