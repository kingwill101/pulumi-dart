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
  GetBackupPlansArgs({
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
      backupPlanName: map['backupPlanName'] == null ? null : (map['backupPlanName']! as String).input(),
      enableDetails: map['enableDetails'] == null ? null : (map['enableDetails']! as bool).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      pageNumber: map['pageNumber'] == null ? null : (map['pageNumber']! as int).input(),
      pageSize: map['pageSize'] == null ? null : (map['pageSize']! as int).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

