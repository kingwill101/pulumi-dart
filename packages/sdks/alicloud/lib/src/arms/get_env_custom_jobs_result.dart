// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_env_custom_jobs_job.dart';

/// Result data returned by getEnvCustomJobs.
class GetEnvCustomJobsResult {
  /// The ID of the environment instance.
  final String environmentId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  /// A list of ARMS Env Custom Jobs. Each element contains the following attributes:
  final List<GetEnvCustomJobsJob> jobs;
  final String? nameRegex;
  /// A list of ARMS Env Custom Job names.
  final List<String> names;
  final String? outputFile;

  /// Creates a new [GetEnvCustomJobsResult].
  /// [environmentId] The ID of the environment instance.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [jobs] A list of ARMS Env Custom Jobs. Each element contains the following attributes:
  /// [nameRegex] Optional.
  /// [names] A list of ARMS Env Custom Job names.
  /// [outputFile] Optional.
  GetEnvCustomJobsResult({
    required this.environmentId,
    required this.id,
    required this.ids,
    required this.jobs,
    this.nameRegex,
    required this.names,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentId': environmentId,
      'id': id,
      'ids': ids,
      'jobs': pulumi.Input.encodeList<GetEnvCustomJobsJob, Map<String, dynamic>>(jobs, (value) => value.toMap()),
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
    };
  }

  factory GetEnvCustomJobsResult.fromMap(Map<String, dynamic> map) {
    return GetEnvCustomJobsResult(
      environmentId: map['environmentId'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      jobs: pulumi.Input.decodeList<GetEnvCustomJobsJob>(map['jobs']!, (value) => GetEnvCustomJobsJob.fromMap((value as Map).cast<String, dynamic>())),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

