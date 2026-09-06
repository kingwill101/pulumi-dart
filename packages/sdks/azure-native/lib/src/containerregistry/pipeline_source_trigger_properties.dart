// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipelineSourceTriggerProperties {
  /// The current status of the source trigger.
  final pulumi.Input<dynamic> status;

  /// Creates a new [PipelineSourceTriggerProperties].
  /// [status] The current status of the source trigger.
  PipelineSourceTriggerProperties({
    pulumi.Input<dynamic>? status,
  }) : status = status ?? pulumi.Input.fromValue('Enabled');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status,
    };
  }

  factory PipelineSourceTriggerProperties.fromMap(Map<String, dynamic> map) {
    return PipelineSourceTriggerProperties(
      status: pulumi.Input.fromValue(map['status']),
    );
  }
}
