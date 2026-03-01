// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_server_backup_plans_filter.dart';

/// {@template pulumi_hbr_get_server_backup_plans_get_server_backup_plans_args_doc}
/// Arguments for getServerBackupPlans.
/// {@endtemplate}
/// {@macro pulumi_hbr_get_server_backup_plans_get_server_backup_plans_args_doc}
class GetServerBackupPlansArgs {
  /// The filters.
  final pulumi.Input<List<GetServerBackupPlansFilter>>? filters;
  /// A list of Server Backup Plan IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetServerBackupPlansArgs].
  /// [filters] The filters.
  /// [ids] A list of Server Backup Plan IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetServerBackupPlansArgs({
    List<GetServerBackupPlansFilter>? filters,
    List<String>? ids,
    String? outputFile,
  }) :
      filters = pulumi.Input.asOptionalInput<List<GetServerBackupPlansFilter>>(filters),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetServerBackupPlansFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetServerBackupPlansFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ids': ?ids,
      'outputFile': ?outputFile,
    };
  }

  factory GetServerBackupPlansArgs.fromMap(Map<String, dynamic> map) {
    return GetServerBackupPlansArgs(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetServerBackupPlansFilter>(map['filters'], (value) => GetServerBackupPlansFilter.fromMap((value as Map).cast<String, dynamic>())),
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

