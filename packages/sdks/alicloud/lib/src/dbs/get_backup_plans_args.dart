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
    pulumi.Output<String>? backupPlanName,
    pulumi.Output<bool>? enableDetails,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<int>? pageNumber,
    pulumi.Output<int>? pageSize,
    pulumi.Output<String>? status,
  }) :
      backupPlanName = pulumi.Input.asOptionalInput<String>(backupPlanName),
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      pageNumber = pulumi.Input.asOptionalInput<int>(pageNumber),
      pageSize = pulumi.Input.asOptionalInput<int>(pageSize),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      backupPlanName: map['backupPlanName'] == null ? null : pulumi.Output.create<String>(map['backupPlanName'] as String),
      enableDetails: map['enableDetails'] == null ? null : pulumi.Output.create<bool>(map['enableDetails'] as bool),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      pageNumber: map['pageNumber'] == null ? null : pulumi.Output.create<int>(map['pageNumber'] as int),
      pageSize: map['pageSize'] == null ? null : pulumi.Output.create<int>(map['pageSize'] as int),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

