// ignore_for_file: unused_element, unnecessary_cast

import 'flow_profile_rulesets.dart';

/// Defines the full set of properties for a FlowProfile resource.
class FlowProfileProperties {
  /// A user-defined description of the FlowProfile.
  final String description;
  /// The data replication scenario handled by this FlowProfile. Please not, that this value cannot be updated after creation.
  final String replicationScenario;
  /// A set of configurable rulesets applied to this FlowProfile.
  final FlowProfileRulesets? rulesets;
  /// The operational status of the FlowProfile.
  final String status;

  /// Creates a new [FlowProfileProperties].
  /// [description] A user-defined description of the FlowProfile.
  /// [replicationScenario] The data replication scenario handled by this FlowProfile. Please not, that this value cannot be updated after creation.
  /// [rulesets] A set of configurable rulesets applied to this FlowProfile.
  /// [status] The operational status of the FlowProfile.
  FlowProfileProperties({
    required this.description,
    required this.replicationScenario,
    this.rulesets,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'replicationScenario': replicationScenario,
      'rulesets': ?rulesets == null ? null : rulesets!.toMap(),
      'status': status,
    };
  }

  factory FlowProfileProperties.fromMap(Map<String, dynamic> map) {
    return FlowProfileProperties(
      description: map['description'] as String,
      replicationScenario: map['replicationScenario'] as String,
      rulesets: map['rulesets'] == null ? null : FlowProfileRulesets.fromMap((map['rulesets'] as Map).cast<String, dynamic>()),
      status: map['status'] as String,
    );
  }
}

