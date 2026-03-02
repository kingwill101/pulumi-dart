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
    this.domainArn,
    this.endpoint,
    this.region,
    this.vpcOptions,
  });

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
      domainArn: map['domainArn'] == null ? null : ((map['domainArn'] as String).input()).input(),
      endpoint: map['endpoint'] == null ? null : ((map['endpoint'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      vpcOptions: map['vpcOptions'] == null ? null : ((VpcEndpointVpcOptions.fromMap((map['vpcOptions']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

