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
      category: (() {
        final guardedValue = map['category'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      endDate: (() {
        final guardedValue = map['endDate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      endDateAfter: (() {
        final guardedValue = map['endDateAfter'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      executedBy: (() {
        final guardedValue = map['executedBy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      includeChildExecution: (() {
        final guardedValue = map['includeChildExecution'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      mode: (() {
        final guardedValue = map['mode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      parentExecutionId: (() {
        final guardedValue = map['parentExecutionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ramRole: (() {
        final guardedValue = map['ramRole'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sortField: (() {
        final guardedValue = map['sortField'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sortOrder: (() {
        final guardedValue = map['sortOrder'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      startDateAfter: (() {
        final guardedValue = map['startDateAfter'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      startDateBefore: (() {
        final guardedValue = map['startDateBefore'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      templateName: (() {
        final guardedValue = map['templateName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
