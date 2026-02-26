// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getDeliveryPipeline.
class GetDeliveryPipelineArgs {
  final Input<String> deliveryPipelineId;
  final Input<String> location;
  final Input<String>? project;

  GetDeliveryPipelineArgs({
    required this.deliveryPipelineId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deliveryPipelineId'] = deliveryPipelineId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetDeliveryPipelineArgs.fromMap(Map<String, dynamic> map) {
    return GetDeliveryPipelineArgs(
      deliveryPipelineId: Input.asInput<String>(map['deliveryPipelineId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
