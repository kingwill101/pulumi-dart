// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipelineSourceTriggerDescriptorResponse {
  /// The timestamp when the source update happened.
  final pulumi.Input<String>? timestamp;

  /// Creates a new [PipelineSourceTriggerDescriptorResponse].
  /// [timestamp] The timestamp when the source update happened.
  PipelineSourceTriggerDescriptorResponse({this.timestamp});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'timestamp': ?timestamp};
  }

  factory PipelineSourceTriggerDescriptorResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return PipelineSourceTriggerDescriptorResponse(
      timestamp: (() {
        final guardedValue = map['timestamp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
