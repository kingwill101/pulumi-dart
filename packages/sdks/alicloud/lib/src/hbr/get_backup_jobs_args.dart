// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backup_jobs_filter.dart';

/// {@template pulumi_hbr_get_backup_jobs_get_backup_jobs_args_doc}
/// Arguments for getBackupJobs.
/// {@endtemplate}
/// {@macro pulumi_hbr_get_backup_jobs_get_backup_jobs_args_doc}
class GetBackupJobsArgs {
  final pulumi.Input<List<GetBackupJobsFilter>>? filters;
  /// A list of Backup Job IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The sort direction, sort results by ascending or descending order based on the value jobs id. Valid values: `ASCEND`, `DESCEND`.
  final pulumi.Input<String>? sortDirection;
  /// The type of data source. Valid values: `ECS_FILE`, `NAS`, `OSS`, `OTS`, `UDM_ECS`, `UDM_ECS_DISK`.
  final pulumi.Input<String> sourceType;
  /// The status of backup job. Valid values: `COMPLETE`, `PARTIAL_COMPLETE`, `FAILED`, `UNAVAILABLE`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetBackupJobsArgs].
  /// [filters] Optional.
  /// [ids] A list of Backup Job IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [sortDirection] The sort direction, sort results by ascending or descending order based on the value jobs id. Valid values: `ASCEND`, `DESCEND`.
  /// [sourceType] The type of data source. Valid values: `ECS_FILE`, `NAS`, `OSS`, `OTS`, `UDM_ECS`, `UDM_ECS_DISK`.
  /// [status] The status of backup job. Valid values: `COMPLETE`, `PARTIAL_COMPLETE`, `FAILED`, `UNAVAILABLE`.
  GetBackupJobsArgs({
    pulumi.Output<List<GetBackupJobsFilter>>? filters,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? sortDirection,
    required pulumi.Output<String> sourceType,
    pulumi.Output<String>? status,
  }) :
      filters = pulumi.Input.asOptionalInput<List<GetBackupJobsFilter>>(filters),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      sortDirection = pulumi.Input.asOptionalInput<String>(sortDirection),
      sourceType = pulumi.Input.asInput<String>(sourceType),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetBackupJobsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetBackupJobsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ids': ?ids,
      'outputFile': ?outputFile,
      'sortDirection': ?sortDirection,
      'sourceType': sourceType,
      'status': ?status,
    };
  }

  factory GetBackupJobsArgs.fromMap(Map<String, dynamic> map) {
    return GetBackupJobsArgs(
      filters: map['filters'] == null ? null : pulumi.Output.create<List<GetBackupJobsFilter>>(pulumi.Input.decodeList<GetBackupJobsFilter>(map['filters'], (value) => GetBackupJobsFilter.fromMap((value as Map).cast<String, dynamic>()))),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      sortDirection: map['sortDirection'] == null ? null : pulumi.Output.create<String>(map['sortDirection'] as String),
      sourceType: pulumi.Output.create<String>(map['sourceType'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

