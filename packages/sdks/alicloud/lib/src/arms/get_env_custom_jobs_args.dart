// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_arms_get_env_custom_jobs_get_env_custom_jobs_args_doc}
/// Arguments for getEnvCustomJobs.
/// {@endtemplate}
/// {@macro pulumi_arms_get_env_custom_jobs_get_env_custom_jobs_args_doc}
class GetEnvCustomJobsArgs {
  /// The ID of the environment instance.
  final pulumi.Input<String> environmentId;
  /// A list of ARMS Env Custom Job IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by ARMS Env Custom Job name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetEnvCustomJobsArgs].
  /// [environmentId] The ID of the environment instance.
  /// [ids] A list of ARMS Env Custom Job IDs.
  /// [nameRegex] A regex string to filter results by ARMS Env Custom Job name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetEnvCustomJobsArgs({
    required this.environmentId,
    this.ids,
    this.nameRegex,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentId': environmentId,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetEnvCustomJobsArgs.fromMap(Map<String, dynamic> map) {
    return GetEnvCustomJobsArgs(
      environmentId: (map['environmentId'] as String).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
    );
  }
}

