// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oos_get_executions_get_executions_args_doc}
/// Arguments for getExecutions.
/// {@endtemplate}
/// {@macro pulumi_oos_get_executions_get_executions_args_doc}
class GetExecutionsArgs {
  /// The category of template. Valid: `AlarmTrigger`, `EventTrigger`, `Other` and `TimerTrigger`.
  final pulumi.Input<String>? category;
  /// The time when the execution was ended.
  final pulumi.Input<String>? endDate;
  /// Execution whose end time is less than or equal to the specified time.
  final pulumi.Input<String>? endDateAfter;
  /// The user who execute the template.
  final pulumi.Input<String>? executedBy;
  /// A list of OOS Execution ids.
  final pulumi.Input<List<String>>? ids;
  /// Whether to include sub-execution.
  final pulumi.Input<bool>? includeChildExecution;
  /// The mode of OOS Execution. Valid: `Automatic`, `Debug`.
  final pulumi.Input<String>? mode;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The id of parent OOS Execution.
  final pulumi.Input<String>? parentExecutionId;
  /// The role that executes the current template.
  final pulumi.Input<String>? ramRole;
  /// The sort field.
  final pulumi.Input<String>? sortField;
  /// The sort order.
  final pulumi.Input<String>? sortOrder;
  /// The execution whose start time is greater than or equal to the specified time.
  final pulumi.Input<String>? startDateAfter;
  /// The execution with start time less than or equal to the specified time.
  final pulumi.Input<String>? startDateBefore;
  /// The Status of OOS Execution. Valid: `Cancelled`, `Failed`, `Queued`, `Running`, `Started`, `Success`, `Waiting`.
  final pulumi.Input<String>? status;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of execution template.
  final pulumi.Input<String>? templateName;

  /// Creates a new [GetExecutionsArgs].
  /// [category] The category of template. Valid: `AlarmTrigger`, `EventTrigger`, `Other` and `TimerTrigger`.
  /// [endDate] The time when the execution was ended.
  /// [endDateAfter] Execution whose end time is less than or equal to the specified time.
  /// [executedBy] The user who execute the template.
  /// [ids] A list of OOS Execution ids.
  /// [includeChildExecution] Whether to include sub-execution.
  /// [mode] The mode of OOS Execution. Valid: `Automatic`, `Debug`.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [parentExecutionId] The id of parent OOS Execution.
  /// [ramRole] The role that executes the current template.
  /// [sortField] The sort field.
  /// [sortOrder] The sort order.
  /// [startDateAfter] The execution whose start time is greater than or equal to the specified time.
  /// [startDateBefore] The execution with start time less than or equal to the specified time.
  /// [status] The Status of OOS Execution. Valid: `Cancelled`, `Failed`, `Queued`, `Running`, `Started`, `Success`, `Waiting`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [templateName] The name of execution template.
  GetExecutionsArgs({
    this.category,
    this.endDate,
    this.endDateAfter,
    this.executedBy,
    this.ids,
    this.includeChildExecution,
    this.mode,
    this.outputFile,
    this.parentExecutionId,
    this.ramRole,
    this.sortField,
    this.sortOrder,
    this.startDateAfter,
    this.startDateBefore,
    this.status,
    this.tags,
    this.templateName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'endDate': ?endDate,
      'endDateAfter': ?endDateAfter,
      'executedBy': ?executedBy,
      'ids': ?ids,
      'includeChildExecution': ?includeChildExecution,
      'mode': ?mode,
      'outputFile': ?outputFile,
      'parentExecutionId': ?parentExecutionId,
      'ramRole': ?ramRole,
      'sortField': ?sortField,
      'sortOrder': ?sortOrder,
      'startDateAfter': ?startDateAfter,
      'startDateBefore': ?startDateBefore,
      'status': ?status,
      'tags': ?tags,
      'templateName': ?templateName,
    };
  }

  factory GetExecutionsArgs.fromMap(Map<String, dynamic> map) {
    return GetExecutionsArgs(
      category: map['category'] == null ? null : (map['category']! as String).input(),
      endDate: map['endDate'] == null ? null : (map['endDate']! as String).input(),
      endDateAfter: map['endDateAfter'] == null ? null : (map['endDateAfter']! as String).input(),
      executedBy: map['executedBy'] == null ? null : (map['executedBy']! as String).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      includeChildExecution: map['includeChildExecution'] == null ? null : (map['includeChildExecution']! as bool).input(),
      mode: map['mode'] == null ? null : (map['mode']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      parentExecutionId: map['parentExecutionId'] == null ? null : (map['parentExecutionId']! as String).input(),
      ramRole: map['ramRole'] == null ? null : (map['ramRole']! as String).input(),
      sortField: map['sortField'] == null ? null : (map['sortField']! as String).input(),
      sortOrder: map['sortOrder'] == null ? null : (map['sortOrder']! as String).input(),
      startDateAfter: map['startDateAfter'] == null ? null : (map['startDateAfter']! as String).input(),
      startDateBefore: map['startDateBefore'] == null ? null : (map['startDateBefore']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      templateName: map['templateName'] == null ? null : (map['templateName']! as String).input(),
    );
  }
}

