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
  GetWaveArgs({
    required pulumi.Output<String> projectName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> waveName,
  }) :
      projectName = pulumi.Input.asInput<String>(projectName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      waveName = pulumi.Input.asInput<String>(waveName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectName': projectName,
      'resourceGroupName': resourceGroupName,
      'waveName': waveName,
    };
  }

  factory GetWaveArgs.fromMap(Map<String, dynamic> map) {
    return GetWaveArgs(
      projectName: pulumi.Output.create<String>(map['projectName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      waveName: pulumi.Output.create<String>(map['waveName'] as String),
    );
  }
}

