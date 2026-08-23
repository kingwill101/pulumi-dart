// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// PipelineExternalComputeScale properties for managed integration runtime.
class PipelineExternalComputeScaleProperties {
  /// Number of the the external nodes, which should be greater than 0 and less than 11.
  final pulumi.Input<int>? numberOfExternalNodes;
  /// Number of the pipeline nodes, which should be greater than 0 and less than 11.
  final pulumi.Input<int>? numberOfPipelineNodes;
  /// Time to live (in minutes) setting of integration runtime which will execute pipeline and external activity.
  final pulumi.Input<int>? timeToLive;

  /// Creates a new [PipelineExternalComputeScaleProperties].
  /// [numberOfExternalNodes] Number of the the external nodes, which should be greater than 0 and less than 11.
  /// [numberOfPipelineNodes] Number of the pipeline nodes, which should be greater than 0 and less than 11.
  /// [timeToLive] Time to live (in minutes) setting of integration runtime which will execute pipeline and external activity.
  const PipelineExternalComputeScaleProperties({
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

  factory PipelineExternalComputeScaleProperties.fromMap(Map<String, dynamic> map) {
    return PipelineExternalComputeScaleProperties(
      numberOfExternalNodes: (() { final guardedValue = map['numberOfExternalNodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      numberOfPipelineNodes: (() { final guardedValue = map['numberOfPipelineNodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      timeToLive: (() { final guardedValue = map['timeToLive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
