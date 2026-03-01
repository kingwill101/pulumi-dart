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
  GetScalingConfigurationsArgs({
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? scalingGroupId,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      scalingGroupId = pulumi.Input.asOptionalInput<String>(scalingGroupId);

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
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      scalingGroupId: map['scalingGroupId'] == null ? null : pulumi.Output.create<String>(map['scalingGroupId'] as String),
    );
  }
}

