// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// PipelineExternalComputeScale properties for managed integration runtime.
class PipelineExternalComputeScalePropertiesResponse {
  /// Number of the the external nodes, which should be greater than 0 and less than 11.
  final pulumi.Input<int>? numberOfExternalNodes;
  /// Number of the pipeline nodes, which should be greater than 0 and less than 11.
  final pulumi.Input<int>? numberOfPipelineNodes;
  /// Time to live (in minutes) setting of integration runtime which will execute pipeline and external activity.
  final pulumi.Input<int>? timeToLive;

  /// Creates a new [PipelineExternalComputeScalePropertiesResponse].
  /// [numberOfExternalNodes] Number of the the external nodes, which should be greater than 0 and less than 11.
  /// [numberOfPipelineNodes] Number of the pipeline nodes, which should be greater than 0 and less than 11.
  /// [timeToLive] Time to live (in minutes) setting of integration runtime which will execute pipeline and external activity.
  PipelineExternalComputeScalePropertiesResponse({
    this.numberOfExternalNodes,
    this.numberOfPipelineNodes,
    this.timeToLive,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'numberOfExternalNodes': ?numberOfExternalNodes,
      'numberOfPipelineNodes': ?numberOfPipelineNodes,
      'timeToLive': ?timeToLive,
    };
  }

  factory PipelineExternalComputeScalePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PipelineExternalComputeScalePropertiesResponse(
      numberOfExternalNodes: map['numberOfExternalNodes'] == null ? null : (map['numberOfExternalNodes']! as int).input(),
      numberOfPipelineNodes: map['numberOfPipelineNodes'] == null ? null : (map['numberOfPipelineNodes']! as int).input(),
      timeToLive: map['timeToLive'] == null ? null : (map['timeToLive']! as int).input(),
    );
  }
}

