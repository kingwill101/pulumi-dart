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
      projectName: (map['projectName'] as String).input(),
      properties: map['properties'] == null ? null : (WaveProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      waveName: map['waveName'] == null ? null : (map['waveName'] as String).input(),
    );
  }
}

