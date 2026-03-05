// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ess_get_scaling_groups_get_scaling_groups_args_doc}
/// Arguments for getScalingGroups.
/// {@endtemplate}
/// {@macro pulumi_ess_get_scaling_groups_get_scaling_groups_args_doc}
class GetScalingGroupsArgs {
  /// A list of scaling group IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter resulting scaling groups by name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetScalingGroupsArgs].
  /// [ids] A list of scaling group IDs.
  /// [nameRegex] A regex string to filter resulting scaling groups by name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetScalingGroupsArgs({
    this.ids,
    this.nameRegex,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetScalingGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetScalingGroupsArgs(
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

