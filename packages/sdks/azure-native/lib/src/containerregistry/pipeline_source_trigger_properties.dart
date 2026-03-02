// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipelineSourceTriggerProperties {
  /// The current status of the source trigger.
  final pulumi.Input<String> status;

  /// Creates a new [PipelineSourceTriggerProperties].
  /// [status] The current status of the source trigger.
  PipelineSourceTriggerProperties({
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status,
    };
  }

  factory PipelineSourceTriggerProperties.fromMap(Map<String, dynamic> map) {
    return PipelineSourceTriggerProperties(
      status: (map['status'] as String).input(),
    );
  }
}

