// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dts_get_migration_jobs_get_migration_jobs_args_doc}
/// Arguments for getMigrationJobs.
/// {@endtemplate}
/// {@macro pulumi_dts_get_migration_jobs_get_migration_jobs_args_doc}
class GetMigrationJobsArgs {
  /// Default to `false`. Set it to `true` can output more details about resource attributes.
  final pulumi.Input<bool>? enableDetails;
  /// A list of Synchronization Job IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Migration Job name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetMigrationJobsArgs].
  /// [enableDetails] Default to `false`. Set it to `true` can output more details about resource attributes.
  /// [ids] A list of Synchronization Job IDs.
  /// [nameRegex] A regex string to filter results by Migration Job name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetMigrationJobsArgs({
    this.enableDetails,
    this.ids,
    this.nameRegex,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetMigrationJobsArgs.fromMap(Map<String, dynamic> map) {
    return GetMigrationJobsArgs(
      enableDetails: map['enableDetails'] == null ? null : (map['enableDetails'] as bool).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
    );
  }
}

