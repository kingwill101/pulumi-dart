// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_executions_execution.dart';

/// Result data returned by getExecutions.
class GetExecutionsResult {
  final String? category;
  final String? endDate;
  final String? endDateAfter;
  final String? executedBy;
  /// A list of OOS Executions. Each element contains the following attributes:
  final List<GetExecutionsExecution> executions;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of OOS Execution ids.
  final List<String> ids;
  final bool? includeChildExecution;
  final String? mode;
  final String? outputFile;
  final String? parentExecutionId;
  final String? ramRole;
  final String? sortField;
  final String? sortOrder;
  final String? startDateAfter;
  final String? startDateBefore;
  final String? status;
  final Map<String, String>? tags;
  final String? templateName;

  /// Creates a new [GetExecutionsResult].
  /// [category] Optional.
  /// [endDate] Optional.
  /// [endDateAfter] Optional.
  /// [executedBy] Optional.
  /// [executions] A list of OOS Executions. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of OOS Execution ids.
  /// [includeChildExecution] Optional.
  /// [mode] Optional.
  /// [outputFile] Optional.
  /// [parentExecutionId] Optional.
  /// [ramRole] Optional.
  /// [sortField] Optional.
  /// [sortOrder] Optional.
  /// [startDateAfter] Optional.
  /// [startDateBefore] Optional.
  /// [status] Optional.
  /// [tags] Optional.
  /// [templateName] Optional.
  GetExecutionsResult({
    this.category,
    this.endDate,
    this.endDateAfter,
    this.executedBy,
    required this.executions,
    required this.id,
    required this.ids,
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
      'executions': pulumi.Input.encodeList<GetExecutionsExecution, Map<String, dynamic>>(executions, (value) => value.toMap()),
      'id': id,
      'ids': ids,
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

  factory GetExecutionsResult.fromMap(Map<String, dynamic> map) {
    return GetExecutionsResult(
      category: map['category'] == null ? null : map['category'] as String,
      endDate: map['endDate'] == null ? null : map['endDate'] as String,
      endDateAfter: map['endDateAfter'] == null ? null : map['endDateAfter'] as String,
      executedBy: map['executedBy'] == null ? null : map['executedBy'] as String,
      executions: pulumi.Input.decodeList<GetExecutionsExecution>(map['executions'], (value) => GetExecutionsExecution.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      includeChildExecution: map['includeChildExecution'] == null ? null : map['includeChildExecution'] as bool,
      mode: map['mode'] == null ? null : map['mode'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      parentExecutionId: map['parentExecutionId'] == null ? null : map['parentExecutionId'] as String,
      ramRole: map['ramRole'] == null ? null : map['ramRole'] as String,
      sortField: map['sortField'] == null ? null : map['sortField'] as String,
      sortOrder: map['sortOrder'] == null ? null : map['sortOrder'] as String,
      startDateAfter: map['startDateAfter'] == null ? null : map['startDateAfter'] as String,
      startDateBefore: map['startDateBefore'] == null ? null : map['startDateBefore'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      templateName: map['templateName'] == null ? null : map['templateName'] as String,
    );
  }
}

