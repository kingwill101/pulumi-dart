// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'geneva_actions_policy_response.dart';

/// Policy configurations for an Agent Space
class AgentSpacePoliciesResponse {
  /// Configuration for Geneva Actions policy
  final pulumi.Input<GenevaActionsPolicyResponse>? genevaActionsConfiguration;

  /// Creates a new [AgentSpacePoliciesResponse].
  /// [genevaActionsConfiguration] Configuration for Geneva Actions policy
  const AgentSpacePoliciesResponse({
    this.genevaActionsConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'genevaActionsConfiguration': ?pulumi.Input.mapOptionalInputValue<GenevaActionsPolicyResponse, Map<String, dynamic>>(genevaActionsConfiguration, (value) => value.toMap()),
    };
  }

  factory AgentSpacePoliciesResponse.fromMap(Map<String, dynamic> map) {
    return AgentSpacePoliciesResponse(
      genevaActionsConfiguration: (() { final guardedValue = map['genevaActionsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GenevaActionsPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
