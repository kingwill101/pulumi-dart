// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_migration_jobs_job.dart';

/// Result data returned by getMigrationJobs.
class GetMigrationJobsResult {
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final List<GetMigrationJobsJob> jobs;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;

  /// Creates a new [GetMigrationJobsResult].
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [jobs] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  GetMigrationJobsResult({
    this.enableDetails,
    required this.id,
    required this.ids,
    required this.jobs,
    this.nameRegex,
    required this.names,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'jobs': pulumi.Input.encodeList<GetMigrationJobsJob, Map<String, dynamic>>(jobs, (value) => value.toMap()),
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
    };
  }

  factory GetMigrationJobsResult.fromMap(Map<String, dynamic> map) {
    return GetMigrationJobsResult(
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails']! as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      jobs: pulumi.Input.decodeList<GetMigrationJobsJob>(map['jobs'], (value) => GetMigrationJobsJob.fromMap((value as Map).cast<String, dynamic>())),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
    );
  }
}

