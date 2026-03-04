// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_flows_flow.dart';

/// Result data returned by getDataFlows.
class GetDataFlowsResult {
  final String fileSystemId;
  final List<GetDataFlowsFlow> flows;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? outputFile;
  final String? status;

  /// Creates a new [GetDataFlowsResult].
  /// [fileSystemId] Required.
  /// [flows] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [outputFile] Optional.
  /// [status] Optional.
  GetDataFlowsResult({
    required this.fileSystemId,
    required this.flows,
    required this.id,
    required this.ids,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileSystemId': fileSystemId,
      'flows': pulumi.Input.encodeList<GetDataFlowsFlow, Map<String, dynamic>>(
        flows,
        (value) => value.toMap(),
      ),
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetDataFlowsResult.fromMap(Map<String, dynamic> map) {
    return GetDataFlowsResult(
      fileSystemId: map['fileSystemId'] as String,
      flows: pulumi.Input.decodeList<GetDataFlowsFlow>(
        map['flows']!,
        (value) =>
            GetDataFlowsFlow.fromMap((value as Map).cast<String, dynamic>()),
      ),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
