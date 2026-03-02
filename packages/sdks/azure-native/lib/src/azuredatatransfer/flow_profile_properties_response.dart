// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_profile_rulesets_response.dart';

/// Defines the full set of properties for a FlowProfile resource.
class FlowProfilePropertiesResponse {
  /// A user-defined description of the FlowProfile.
  final pulumi.Input<String> description;
  /// A guid represented as a string for the FlowProfile resource, assigned by the system.
  final pulumi.Input<String> flowProfileId;
  /// The current provisioning state of the FlowProfile.
  final pulumi.Input<String> provisioningState;
  /// The data replication scenario handled by this FlowProfile. Please not, that this value cannot be updated after creation.
  final pulumi.Input<String> replicationScenario;
  /// A set of configurable rulesets applied to this FlowProfile.
  final pulumi.Input<FlowProfileRulesetsResponse>? rulesets;
  /// The operational status of the FlowProfile.
  final pulumi.Input<String> status;

  /// Creates a new [FlowProfilePropertiesResponse].
  /// [description] A user-defined description of the FlowProfile.
  /// [flowProfileId] A guid represented as a string for the FlowProfile resource, assigned by the system.
  /// [provisioningState] The current provisioning state of the FlowProfile.
  /// [replicationScenario] The data replication scenario handled by this FlowProfile. Please not, that this value cannot be updated after creation.
  /// [rulesets] A set of configurable rulesets applied to this FlowProfile.
  /// [status] The operational status of the FlowProfile.
  FlowProfilePropertiesResponse({
    required this.description,
    required this.flowProfileId,
    required this.provisioningState,
    required this.replicationScenario,
    this.rulesets,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'flowProfileId': flowProfileId,
      'provisioningState': provisioningState,
      'replicationScenario': replicationScenario,
      'rulesets': ?pulumi.Input.mapOptionalInputValue<FlowProfileRulesetsResponse, Map<String, dynamic>>(rulesets, (value) => value.toMap()),
      'status': status,
    };
  }

  factory FlowProfilePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return FlowProfilePropertiesResponse(
      description: (map['description'] as String).input(),
      flowProfileId: (map['flowProfileId'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      replicationScenario: (map['replicationScenario'] as String).input(),
      rulesets: map['rulesets'] == null ? null : (FlowProfileRulesetsResponse.fromMap((map['rulesets']! as Map).cast<String, dynamic>())).input(),
      status: (map['status'] as String).input(),
    );
  }
}

