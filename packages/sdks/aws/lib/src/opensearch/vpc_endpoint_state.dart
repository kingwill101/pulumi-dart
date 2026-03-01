// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_endpoint_vpc_options.dart';

/// Input properties used for looking up and filtering VpcEndpoint resources.
class VpcEndpointState {
  /// Specifies the Amazon Resource Name (ARN) of the domain to create the endpoint for
  final pulumi.Input<String>? domainArn;
  /// The connection endpoint ID for connecting to the domain.
  final pulumi.Input<String>? endpoint;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Options to specify the subnets and security groups for the endpoint.
  final pulumi.Input<VpcEndpointVpcOptions>? vpcOptions;

  /// Creates a new [VpcEndpointState].
  /// [domainArn] Specifies the Amazon Resource Name (ARN) of the domain to create the endpoint for
  /// [endpoint] The connection endpoint ID for connecting to the domain.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [vpcOptions] Options to specify the subnets and security groups for the endpoint.
  VpcEndpointState({
    pulumi.Output<String>? domainArn,
    pulumi.Output<String>? endpoint,
    pulumi.Output<String>? region,
    pulumi.Output<VpcEndpointVpcOptions>? vpcOptions,
  }) :
      domainArn = pulumi.Input.asOptionalInput<String>(domainArn),
      endpoint = pulumi.Input.asOptionalInput<String>(endpoint),
      region = pulumi.Input.asOptionalInput<String>(region),
      vpcOptions = pulumi.Input.asOptionalInput<VpcEndpointVpcOptions>(vpcOptions);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainArn': ?domainArn,
      'endpoint': ?endpoint,
      'region': ?region,
      'vpcOptions': ?pulumi.Input.mapOptionalInputValue<VpcEndpointVpcOptions, Map<String, dynamic>>(vpcOptions, (value) => value.toMap()),
    };
  }

  factory VpcEndpointState.fromMap(Map<String, dynamic> map) {
    return VpcEndpointState(
      domainArn: map['domainArn'] == null ? null : pulumi.Output.create<String>(map['domainArn'] as String),
      endpoint: map['endpoint'] == null ? null : pulumi.Output.create<String>(map['endpoint'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      vpcOptions: map['vpcOptions'] == null ? null : pulumi.Output.create<VpcEndpointVpcOptions>(VpcEndpointVpcOptions.fromMap((map['vpcOptions'] as Map).cast<String, dynamic>())),
    );
  }
}

