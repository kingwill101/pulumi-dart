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
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endDate: (() { final guardedValue = map['endDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endDateAfter: (() { final guardedValue = map['endDateAfter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      executedBy: (() { final guardedValue = map['executedBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      executions: pulumi.Input.decodeList<GetExecutionsExecution>(map['executions']!, (value) => GetExecutionsExecution.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      includeChildExecution: (() { final guardedValue = map['includeChildExecution']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parentExecutionId: (() { final guardedValue = map['parentExecutionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ramRole: (() { final guardedValue = map['ramRole']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sortField: (() { final guardedValue = map['sortField']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sortOrder: (() { final guardedValue = map['sortOrder']; if (guardedValue == null) return null; return guardedValue as String; })(),
      startDateAfter: (() { final guardedValue = map['startDateAfter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      startDateBefore: (() { final guardedValue = map['startDateBefore']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      templateName: (() { final guardedValue = map['templateName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

