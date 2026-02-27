// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getPipeline.
class GetPipelineGenomicsV1alpha2Args {
  final pulumi.Input<String> pipelineId;

  GetPipelineGenomicsV1alpha2Args({
    required this.pipelineId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['pipelineId'] = pipelineId;
    return map;
  }

  factory GetPipelineGenomicsV1alpha2Args.fromMap(Map<String, dynamic> map) {
    return GetPipelineGenomicsV1alpha2Args(
      pipelineId: pulumi.Input.asInput<String>(map['pipelineId']),
    );
  }
}
