// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_smartag_flow_logs_log.dart';

/// Result data returned by getSmartagFlowLogs.
class GetSmartagFlowLogsResult {
  final String? description;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final List<GetSmartagFlowLogsLog> logs;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;
  final String? status;

  /// Creates a new [GetSmartagFlowLogsResult].
  /// [description] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [logs] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [status] Optional.
  GetSmartagFlowLogsResult({
    this.description,
    required this.id,
    required this.ids,
    required this.logs,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'id': id,
      'ids': ids,
      'logs':
          pulumi.Input.encodeList<GetSmartagFlowLogsLog, Map<String, dynamic>>(
            logs,
            (value) => value.toMap(),
          ),
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'status': ?status,
    };
  }

  factory GetSmartagFlowLogsResult.fromMap(Map<String, dynamic> map) {
    return GetSmartagFlowLogsResult(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      logs: pulumi.Input.decodeList<GetSmartagFlowLogsLog>(
        map['logs']!,
        (value) => GetSmartagFlowLogsLog.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      pageNumber: (() {
        final guardedValue = map['pageNumber'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
      pageSize: (() {
        final guardedValue = map['pageSize'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
