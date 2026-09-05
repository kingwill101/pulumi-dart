// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_endpoint_timeouts.dart';
import 'pipeline_endpoint_vpc_options.dart';

/// {@template pulumi_opensearchingest_pipeline_endpoint_pipeline_endpoint_args_doc}
/// The set of arguments for PipelineEndpoint.
/// {@endtemplate}
/// {@macro pulumi_opensearchingest_pipeline_endpoint_pipeline_endpoint_args_doc}
class PipelineEndpointArgs {
  /// ARN of the pipeline to create the endpoint for.
  final pulumi.Input<String> pipelineArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  final pulumi.Input<PipelineEndpointTimeouts?>? timeouts;
  /// VPC options for the pipeline endpoint. See `vpcOptions` Block below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<PipelineEndpointVpcOptions?>? vpcOptions;

  /// Creates a new [PipelineEndpointArgs].
  /// [pipelineArn] ARN of the pipeline to create the endpoint for.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [timeouts] Optional.
  /// [vpcOptions] VPC options for the pipeline endpoint. See `vpcOptions` Block below.
  const PipelineEndpointArgs({
    required this.pipelineArn,
    this.region,
    this.timeouts,
    this.vpcOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pipelineArn': pipelineArn,
      'region': ?region,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<PipelineEndpointTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'vpcOptions': ?pulumi.Input.mapOptionalInputValue<PipelineEndpointVpcOptions, Map<String, dynamic>>(vpcOptions, (value) => value.toMap()),
    };
  }

  factory PipelineEndpointArgs.fromMap(Map<String, dynamic> map) {
    return PipelineEndpointArgs(
      pipelineArn: pulumi.Input.fromValue(map['pipelineArn'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineEndpointTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vpcOptions: (() { final guardedValue = map['vpcOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineEndpointVpcOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
