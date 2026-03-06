// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dbs_get_backup_plans_get_backup_plans_args_doc}
/// Arguments for getBackupPlans.
/// {@endtemplate}
/// {@macro pulumi_dbs_get_backup_plans_get_backup_plans_args_doc}
class GetBackupPlansArgs {
  /// The name of the resource.
  final pulumi.Input<String>? backupPlanName;
  /// Default to `true`. Set it to `false` can hide the `payment_type` to output.
  final pulumi.Input<bool>? enableDetails;
  /// A list of Backup Plan IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Backup Plan name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;
  /// The status of the resource. Valid values: `check_pass`, `init`, `locked`, `pause`, `running`, `stop`, `wait`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetBackupPlansArgs].
  /// [backupPlanName] The name of the resource.
  /// [enableDetails] Default to `true`. Set it to `false` can hide the `payment_type` to output.
  /// [ids] A list of Backup Plan IDs.
  /// [nameRegex] A regex string to filter results by Backup Plan name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [status] The status of the resource. Valid values: `check_pass`, `init`, `locked`, `pause`, `running`, `stop`, `wait`.
  const GetBackupPlansArgs({
    this.backupPlanName,
    this.enableDetails,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPlanName': ?backupPlanName,
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'status': ?status,
    };
  }

  factory GetBackupPlansArgs.fromMap(Map<String, dynamic> map) {
    return GetBackupPlansArgs(
      backupPlanName: (() { final guardedValue = map['backupPlanName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pageNumber: (() { final guardedValue = map['pageNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

