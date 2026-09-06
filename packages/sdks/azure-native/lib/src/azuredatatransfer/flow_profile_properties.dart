// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_profile_rulesets.dart';

/// Defines the full set of properties for a FlowProfile resource.
class FlowProfileProperties {
  /// A user-defined description of the FlowProfile.
  final pulumi.Input<String> description;
  /// The data replication scenario handled by this FlowProfile. Please not, that this value cannot be updated after creation.
  final pulumi.Input<dynamic> replicationScenario;
  /// A set of configurable rulesets applied to this FlowProfile.
  final pulumi.Input<FlowProfileRulesets?>? rulesets;
  /// The operational status of the FlowProfile.
  final pulumi.Input<dynamic> status;

  /// Creates a new [FlowProfileProperties].
  /// [description] A user-defined description of the FlowProfile.
  /// [replicationScenario] The data replication scenario handled by this FlowProfile. Please not, that this value cannot be updated after creation.
  /// [rulesets] A set of configurable rulesets applied to this FlowProfile.
  /// [status] The operational status of the FlowProfile.
  const FlowProfileProperties({
    required this.description,
    required this.replicationScenario,
    this.rulesets,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'replicationScenario': replicationScenario,
      'rulesets': ?pulumi.Input.mapOptionalInputValue<FlowProfileRulesets, Map<String, dynamic>>(rulesets, (value) => value.toMap()),
      'status': status,
    };
  }

  factory FlowProfileProperties.fromMap(Map<String, dynamic> map) {
    return FlowProfileProperties(
      description: pulumi.Input.fromValue(map['description'] as String),
      replicationScenario: pulumi.Input.fromValue(map['replicationScenario']),
      rulesets: (() { final guardedValue = map['rulesets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlowProfileRulesets.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      status: pulumi.Input.fromValue(map['status']),
    );
  }
}
