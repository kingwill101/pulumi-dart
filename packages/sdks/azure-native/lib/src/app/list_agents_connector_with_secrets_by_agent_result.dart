// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_connector_response.dart';

/// Result data returned by listAgentsConnectorWithSecretsByAgent.
class ListAgentsConnectorWithSecretsByAgentResult {
  /// The link to the next page of items
  final String? nextLink;
  /// The AgentConnector items on this page
  final List<AgentConnectorResponse> value;

  /// Creates a new [ListAgentsConnectorWithSecretsByAgentResult].
  /// [nextLink] The link to the next page of items
  /// [value] The AgentConnector items on this page
  const ListAgentsConnectorWithSecretsByAgentResult({
    this.nextLink,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': pulumi.Input.encodeList<AgentConnectorResponse, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory ListAgentsConnectorWithSecretsByAgentResult.fromMap(Map<String, dynamic> map) {
    return ListAgentsConnectorWithSecretsByAgentResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: pulumi.Input.decodeList<AgentConnectorResponse>(map['value']!, (value) => AgentConnectorResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
