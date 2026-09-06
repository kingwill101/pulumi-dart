// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_space_connector_response.dart';

/// Result data returned by listAgentSpacesConnectorAllSecrets.
class ListAgentSpacesConnectorAllSecretsResult {
  /// The link to the next page of items
  final String? nextLink;
  /// The AgentSpaceConnector items on this page
  final List<AgentSpaceConnectorResponse>? value;

  /// Creates a new [ListAgentSpacesConnectorAllSecretsResult].
  /// [nextLink] The link to the next page of items
  /// [value] The AgentSpaceConnector items on this page
  const ListAgentSpacesConnectorAllSecretsResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<AgentSpaceConnectorResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListAgentSpacesConnectorAllSecretsResult.fromMap(Map<String, dynamic> map) {
    return ListAgentSpacesConnectorAllSecretsResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentSpaceConnectorResponse>(guardedValue, (value) => AgentSpaceConnectorResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
