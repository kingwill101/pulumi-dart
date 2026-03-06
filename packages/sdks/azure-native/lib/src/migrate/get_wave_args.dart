// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrate_get_wave_args_doc}
/// Arguments for getWave.
/// {@endtemplate}
/// {@macro pulumi_migrate_get_wave_args_doc}
class GetWaveArgs {
  /// Migrate Project Name
  final pulumi.Input<String> projectName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Migration Wave Resource
  final pulumi.Input<String> waveName;

  /// Creates a new [GetWaveArgs].
  /// [projectName] Migrate Project Name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [waveName] Migration Wave Resource
  const GetWaveArgs({
    required this.projectName,
    required this.resourceGroupName,
    required this.waveName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectName': projectName,
      'resourceGroupName': resourceGroupName,
      'waveName': waveName,
    };
  }

  factory GetWaveArgs.fromMap(Map<String, dynamic> map) {
    return GetWaveArgs(
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      waveName: pulumi.Input.fromValue(map['waveName'] as String),
    );
  }
}

