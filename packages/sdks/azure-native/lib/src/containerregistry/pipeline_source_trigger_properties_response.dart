// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipelineSourceTriggerPropertiesResponse {
  /// The current status of the source trigger.
  final pulumi.Input<String> status;

  /// Creates a new [PipelineSourceTriggerPropertiesResponse].
  /// [status] The current status of the source trigger.
  const PipelineSourceTriggerPropertiesResponse({
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status,
    };
  }

  factory PipelineSourceTriggerPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PipelineSourceTriggerPropertiesResponse(
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
