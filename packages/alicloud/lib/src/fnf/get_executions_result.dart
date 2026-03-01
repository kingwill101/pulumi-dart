// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_executions_execution.dart';

/// Result data returned by getExecutions.
class GetExecutionsResult {
  final bool? enableDetails;
  final List<GetExecutionsExecution> executions;
  final String flowName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final String? status;

  /// Creates a new [GetExecutionsResult].
  /// [enableDetails] Optional.
  /// [executions] Required.
  /// [flowName] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [status] Optional.
  GetExecutionsResult({
    this.enableDetails,
    required this.executions,
    required this.flowName,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'executions': pulumi.Input.encodeList<GetExecutionsExecution, Map<String, dynamic>>(executions, (value) => value.toMap()),
      'flowName': flowName,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetExecutionsResult.fromMap(Map<String, dynamic> map) {
    return GetExecutionsResult(
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      executions: pulumi.Input.decodeList<GetExecutionsExecution>(map['executions'], (value) => GetExecutionsExecution.fromMap((value as Map).cast<String, dynamic>())),
      flowName: map['flowName'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

