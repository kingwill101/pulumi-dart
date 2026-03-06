// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ess_get_scaling_configurations_get_scaling_configurations_args_doc}
/// Arguments for getScalingConfigurations.
/// {@endtemplate}
/// {@macro pulumi_ess_get_scaling_configurations_get_scaling_configurations_args_doc}
class GetScalingConfigurationsArgs {
  /// A list of scaling configuration IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter resulting scaling configurations by name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// Scaling group id the scaling configurations belong to.
  final pulumi.Input<String>? scalingGroupId;

  /// Creates a new [GetScalingConfigurationsArgs].
  /// [ids] A list of scaling configuration IDs.
  /// [nameRegex] A regex string to filter resulting scaling configurations by name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [scalingGroupId] Scaling group id the scaling configurations belong to.
  const GetScalingConfigurationsArgs({
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.scalingGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'scalingGroupId': ?scalingGroupId,
    };
  }

  factory GetScalingConfigurationsArgs.fromMap(Map<String, dynamic> map) {
    return GetScalingConfigurationsArgs(
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scalingGroupId: (() { final guardedValue = map['scalingGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

