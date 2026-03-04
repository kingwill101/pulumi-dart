// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The FlowProfile Metadata used to concisely provide all publicly viewable information.
class FlowProfileMetadataResponse {
  /// A description of the FlowProfile and its rulesets. The description should describe the flowprofile's purpose and rulesets applied.
  final pulumi.Input<String> description;

  /// A guid represented as a string for the FlowProfile resource, assigned by the system.
  final pulumi.Input<String> flowProfileId;

  /// The name of the FlowProfile.
  final pulumi.Input<String> name;

  /// The name of the parent Pipeline Azure resource associated with this FlowProfile.
  final pulumi.Input<String> pipeline;

  /// The data replication scenario handled by this FlowProfile. Please note, that this value cannot be updated after creation. See the FlowProfilePatchProperties to see updateable properties.
  final pulumi.Input<String> replicationScenario;

  /// The operational status of the FlowProfile.
  final pulumi.Input<String> status;

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
      description: pulumi.Input.fromValue(map['description'] as String),
      flowProfileId: pulumi.Input.fromValue(map['flowProfileId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      pipeline: pulumi.Input.fromValue(map['pipeline'] as String),
      replicationScenario: pulumi.Input.fromValue(
        map['replicationScenario'] as String,
      ),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
