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
    pulumi.Output<String>? category,
    pulumi.Output<String>? endDate,
    pulumi.Output<String>? endDateAfter,
    pulumi.Output<String>? executedBy,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<bool>? includeChildExecution,
    pulumi.Output<String>? mode,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? parentExecutionId,
    pulumi.Output<String>? ramRole,
    pulumi.Output<String>? sortField,
    pulumi.Output<String>? sortOrder,
    pulumi.Output<String>? startDateAfter,
    pulumi.Output<String>? startDateBefore,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? templateName,
  }) :
      category = pulumi.Input.asOptionalInput<String>(category),
      endDate = pulumi.Input.asOptionalInput<String>(endDate),
      endDateAfter = pulumi.Input.asOptionalInput<String>(endDateAfter),
      executedBy = pulumi.Input.asOptionalInput<String>(executedBy),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      includeChildExecution = pulumi.Input.asOptionalInput<bool>(includeChildExecution),
      mode = pulumi.Input.asOptionalInput<String>(mode),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      parentExecutionId = pulumi.Input.asOptionalInput<String>(parentExecutionId),
      ramRole = pulumi.Input.asOptionalInput<String>(ramRole),
      sortField = pulumi.Input.asOptionalInput<String>(sortField),
      sortOrder = pulumi.Input.asOptionalInput<String>(sortOrder),
      startDateAfter = pulumi.Input.asOptionalInput<String>(startDateAfter),
      startDateBefore = pulumi.Input.asOptionalInput<String>(startDateBefore),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      templateName = pulumi.Input.asOptionalInput<String>(templateName);

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
      category: map['category'] == null ? null : pulumi.Output.create<String>(map['category'] as String),
      endDate: map['endDate'] == null ? null : pulumi.Output.create<String>(map['endDate'] as String),
      endDateAfter: map['endDateAfter'] == null ? null : pulumi.Output.create<String>(map['endDateAfter'] as String),
      executedBy: map['executedBy'] == null ? null : pulumi.Output.create<String>(map['executedBy'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      includeChildExecution: map['includeChildExecution'] == null ? null : pulumi.Output.create<bool>(map['includeChildExecution'] as bool),
      mode: map['mode'] == null ? null : pulumi.Output.create<String>(map['mode'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      parentExecutionId: map['parentExecutionId'] == null ? null : pulumi.Output.create<String>(map['parentExecutionId'] as String),
      ramRole: map['ramRole'] == null ? null : pulumi.Output.create<String>(map['ramRole'] as String),
      sortField: map['sortField'] == null ? null : pulumi.Output.create<String>(map['sortField'] as String),
      sortOrder: map['sortOrder'] == null ? null : pulumi.Output.create<String>(map['sortOrder'] as String),
      startDateAfter: map['startDateAfter'] == null ? null : pulumi.Output.create<String>(map['startDateAfter'] as String),
      startDateBefore: map['startDateBefore'] == null ? null : pulumi.Output.create<String>(map['startDateBefore'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      templateName: map['templateName'] == null ? null : pulumi.Output.create<String>(map['templateName'] as String),
    );
  }
}

