// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_flows_flow.dart';

/// Result data returned by getFlows.
class GetFlowsResult {
  final List<GetFlowsFlow> flows;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final int? limit;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;

  /// Creates a new [GetFlowsResult].
  /// [flows] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [limit] Optional.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  GetFlowsResult({
    required this.flows,
    required this.id,
    required this.ids,
    this.limit,
    this.nameRegex,
    required this.names,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flows': pulumi.Input.encodeList<GetFlowsFlow, Map<String, dynamic>>(flows, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'limit': ?limit,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
    };
  }

  factory GetFlowsResult.fromMap(Map<String, dynamic> map) {
    return GetFlowsResult(
      flows: pulumi.Input.decodeList<GetFlowsFlow>(map['flows']!, (value) => GetFlowsFlow.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      limit: (() { final guardedValue = map['limit']; if (guardedValue == null) return null; return guardedValue as int; })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

