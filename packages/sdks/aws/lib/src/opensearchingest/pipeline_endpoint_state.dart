// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_endpoint_timeouts.dart';
import 'pipeline_endpoint_vpc_options.dart';

/// Input properties used for looking up and filtering PipelineEndpoint resources.
class PipelineEndpointState {
  /// ARN of the pipeline to create the endpoint for.
  final pulumi.Input<String>? pipelineArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Status of the endpoint.
  final pulumi.Input<String>? status;
  final pulumi.Input<PipelineEndpointTimeouts>? timeouts;
  /// ID of the VPC. Derived from `subnetIds`.
  final pulumi.Input<String>? vpcId;
  /// VPC options for the pipeline endpoint. See `vpcOptions` Block below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<PipelineEndpointVpcOptions>? vpcOptions;

  /// Creates a new [PipelineEndpointState].
  /// [pipelineArn] ARN of the pipeline to create the endpoint for.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] Status of the endpoint.
  /// [timeouts] Optional.
  /// [vpcId] ID of the VPC. Derived from `subnetIds`.
  /// [vpcOptions] VPC options for the pipeline endpoint. See `vpcOptions` Block below.
  const PipelineEndpointState({
    this.pipelineArn,
    this.region,
    this.status,
    this.timeouts,
    this.vpcId,
    this.vpcOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pipelineArn': ?pipelineArn,
      'region': ?region,
      'status': ?status,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<PipelineEndpointTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'vpcId': ?vpcId,
      'vpcOptions': ?pulumi.Input.mapOptionalInputValue<PipelineEndpointVpcOptions, Map<String, dynamic>>(vpcOptions, (value) => value.toMap()),
    };
  }

  factory PipelineEndpointState.fromMap(Map<String, dynamic> map) {
    return PipelineEndpointState(
      pipelineArn: (() { final guardedValue = map['pipelineArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineEndpointTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcOptions: (() { final guardedValue = map['vpcOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineEndpointVpcOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
