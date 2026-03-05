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
    this.filters,
    this.ids,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetServerBackupPlansFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetServerBackupPlansFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ids': ?ids,
      'outputFile': ?outputFile,
    };
  }

  factory GetServerBackupPlansArgs.fromMap(Map<String, dynamic> map) {
    return GetServerBackupPlansArgs(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetServerBackupPlansFilter>(guardedValue, (value) => GetServerBackupPlansFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

