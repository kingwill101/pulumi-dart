// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_reference_resource_response.dart';

/// Result data returned by listAgentApplicationAgents.
class ListAgentApplicationAgentsResult {
  /// The link to the next page of Agent Reference objects. If null, there are no additional pages.
  final String? nextLink;
  /// An array of objects of type Agent Reference.
  final List<AgentReferenceResourceResponse>? value;

  /// Creates a new [ListAgentApplicationAgentsResult].
  /// [nextLink] The link to the next page of Agent Reference objects. If null, there are no additional pages.
  /// [value] An array of objects of type Agent Reference.
  ListAgentApplicationAgentsResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?value == null ? null : pulumi.Input.encodeList<AgentReferenceResourceResponse, Map<String, dynamic>>(value!, (value) => value.toMap()),
    };
  }

  factory ListAgentApplicationAgentsResult.fromMap(Map<String, dynamic> map) {
    return ListAgentApplicationAgentsResult(
      nextLink: map['nextLink'] == null ? null : map['nextLink'] as String,
      value: map['value'] == null ? null : pulumi.Input.decodeList<AgentReferenceResourceResponse>(map['value'], (value) => AgentReferenceResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

