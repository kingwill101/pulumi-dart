// ignore_for_file: unused_element, unnecessary_cast


/// The FlowProfile Metadata used to concisely provide all publicly viewable information.
class FlowProfileMetadataResponse {
  /// A description of the FlowProfile and its rulesets. The description should describe the flowprofile's purpose and rulesets applied.
  final String description;
  /// A guid represented as a string for the FlowProfile resource, assigned by the system.
  final String flowProfileId;
  /// The name of the FlowProfile.
  final String name;
  /// The name of the parent Pipeline Azure resource associated with this FlowProfile.
  final String pipeline;
  /// The data replication scenario handled by this FlowProfile. Please note, that this value cannot be updated after creation. See the FlowProfilePatchProperties to see updateable properties.
  final String replicationScenario;
  /// The operational status of the FlowProfile.
  final String status;

  /// Creates a new [FlowProfileMetadataResponse].
  /// [description] A description of the FlowProfile and its rulesets. The description should describe the flowprofile's purpose and rulesets applied.
  /// [flowProfileId] A guid represented as a string for the FlowProfile resource, assigned by the system.
  /// [name] The name of the FlowProfile.
  /// [pipeline] The name of the parent Pipeline Azure resource associated with this FlowProfile.
  /// [replicationScenario] The data replication scenario handled by this FlowProfile. Please note, that this value cannot be updated after creation. See the FlowProfilePatchProperties to see updateable properties.
  /// [status] The operational status of the FlowProfile.
  FlowProfileMetadataResponse({
    required this.description,
    required this.flowProfileId,
    required this.name,
    required this.pipeline,
    required this.replicationScenario,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'flowProfileId': flowProfileId,
      'name': name,
      'pipeline': pipeline,
      'replicationScenario': replicationScenario,
      'status': status,
    };
  }

  factory FlowProfileMetadataResponse.fromMap(Map<String, dynamic> map) {
    return FlowProfileMetadataResponse(
      description: map['description'] as String,
      flowProfileId: map['flowProfileId'] as String,
      name: map['name'] as String,
      pipeline: map['pipeline'] as String,
      replicationScenario: map['replicationScenario'] as String,
      status: map['status'] as String,
    );
  }
}

