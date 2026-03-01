// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gpdb_get_db_instance_plans_get_db_instance_plans_args_doc}
/// Arguments for getDbInstancePlans.
/// {@endtemplate}
/// {@macro pulumi_gpdb_get_db_instance_plans_get_db_instance_plans_args_doc}
class GetDbInstancePlansArgs {
  /// The ID of the Database instance.
  final pulumi.Input<String> dbInstanceId;
  /// A list of DB Instance Plan IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by DB Instance Plan name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// Plan scheduling type. Valid values: `Postpone`, `Regular`.
  final pulumi.Input<String>? planScheduleType;
  /// The type of the Plan. Valid values: `PauseResume`, `Resize`.
  final pulumi.Input<String>? planType;
  /// Planning Status. Valid values: `active`, `cancel`, `deleted`, `finished`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetDbInstancePlansArgs].
  /// [dbInstanceId] The ID of the Database instance.
  /// [ids] A list of DB Instance Plan IDs.
  /// [nameRegex] A regex string to filter results by DB Instance Plan name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [planScheduleType] Plan scheduling type. Valid values: `Postpone`, `Regular`.
  /// [planType] The type of the Plan. Valid values: `PauseResume`, `Resize`.
  /// [status] Planning Status. Valid values: `active`, `cancel`, `deleted`, `finished`.
  GetDbInstancePlansArgs({
    required String dbInstanceId,
    List<String>? ids,
    String? nameRegex,
    String? outputFile,
    String? planScheduleType,
    String? planType,
    String? status,
  }) :
      dbInstanceId = pulumi.Input.asInput<String>(dbInstanceId),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      planScheduleType = pulumi.Input.asOptionalInput<String>(planScheduleType),
      planType = pulumi.Input.asOptionalInput<String>(planType),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbInstanceId': dbInstanceId,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'planScheduleType': ?planScheduleType,
      'planType': ?planType,
      'status': ?status,
    };
  }

  factory GetDbInstancePlansArgs.fromMap(Map<String, dynamic> map) {
    return GetDbInstancePlansArgs(
      dbInstanceId: map['dbInstanceId'] as String,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      planScheduleType: map['planScheduleType'] == null ? null : map['planScheduleType'] as String,
      planType: map['planType'] == null ? null : map['planType'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

