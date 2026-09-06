// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'geneva_actions_policy.dart';

/// Policy configurations for an Agent Space
class AgentSpacePolicies {
  /// Configuration for Geneva Actions policy
  final pulumi.Input<GenevaActionsPolicy?>? genevaActionsConfiguration;

  /// Creates a new [AgentSpacePolicies].
  /// [genevaActionsConfiguration] Configuration for Geneva Actions policy
  const AgentSpacePolicies({
    this.genevaActionsConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'genevaActionsConfiguration': ?pulumi.Input.mapOptionalInputValue<GenevaActionsPolicy, Map<String, dynamic>>(genevaActionsConfiguration, (value) => value.toMap()),
    };
  }

  factory AgentSpacePolicies.fromMap(Map<String, dynamic> map) {
    return AgentSpacePolicies(
      genevaActionsConfiguration: (() { final guardedValue = map['genevaActionsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GenevaActionsPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
