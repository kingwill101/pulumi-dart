// ignore_for_file: unused_element, unnecessary_cast

import 'flow_profile_rulesets_response.dart';

/// Defines the full set of properties for a FlowProfile resource.
class FlowProfilePropertiesResponse {
  /// A user-defined description of the FlowProfile.
  final String description;
  /// A guid represented as a string for the FlowProfile resource, assigned by the system.
  final String flowProfileId;
  /// The current provisioning state of the FlowProfile.
  final String provisioningState;
  /// The data replication scenario handled by this FlowProfile. Please not, that this value cannot be updated after creation.
  final String replicationScenario;
  /// A set of configurable rulesets applied to this FlowProfile.
  final FlowProfileRulesetsResponse? rulesets;
  /// The operational status of the FlowProfile.
  final String status;

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
      'rulesets': ?rulesets == null ? null : rulesets!.toMap(),
      'status': status,
    };
  }

  factory FlowProfilePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return FlowProfilePropertiesResponse(
      description: map['description'] as String,
      flowProfileId: map['flowProfileId'] as String,
      provisioningState: map['provisioningState'] as String,
      replicationScenario: map['replicationScenario'] as String,
      rulesets: map['rulesets'] == null ? null : FlowProfileRulesetsResponse.fromMap((map['rulesets'] as Map).cast<String, dynamic>()),
      status: map['status'] as String,
    );
  }
}

