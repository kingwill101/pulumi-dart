// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getPipeline.
class GetPipelineArgs2 {
  final Input<String> pipelineId;

  GetPipelineArgs2({
    required this.pipelineId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['pipelineId'] = pipelineId;
    return map;
  }

  factory GetPipelineArgs2.fromMap(Map<String, dynamic> map) {
    return GetPipelineArgs2(
      pipelineId: Input.asInput<String>(map['pipelineId']),
    );
  }
}
