// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_agents_agent.dart';

/// Result data returned by getAgents.
class GetAgentsResult {
  /// The agent Name.
  final String agentName;

  /// A list of availability zones. Each element contains the following attributes:
  final List<GetAgentsAgent> agents;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;

  /// A list of chatbot agents names.
  final List<String> names;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;

  /// Creates a new [GetAgentsResult].
  /// [agentName] The agent Name.
  /// [agents] A list of availability zones. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] A list of chatbot agents names.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  GetAgentsResult({
    required this.agentName,
    required this.agents,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentName': agentName,
      'agents': pulumi.Input.encodeList<GetAgentsAgent, Map<String, dynamic>>(
        agents,
        (value) => value.toMap(),
      ),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
    };
  }

  factory GetAgentsResult.fromMap(Map<String, dynamic> map) {
    return GetAgentsResult(
      agentName: map['agentName'] as String,
      agents: pulumi.Input.decodeList<GetAgentsAgent>(
        map['agents']!,
        (value) =>
            GetAgentsAgent.fromMap((value as Map).cast<String, dynamic>()),
      ),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
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
    );
  }
}
