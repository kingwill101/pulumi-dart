// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_endpoint_vpc_options.dart';

/// {@template pulumi_elasticsearch_vpc_endpoint_vpc_endpoint_args_doc}
/// The set of arguments for VpcEndpoint.
/// {@endtemplate}
/// {@macro pulumi_elasticsearch_vpc_endpoint_vpc_endpoint_args_doc}
class VpcEndpointArgs {
  /// Specifies the Amazon Resource Name (ARN) of the domain to create the endpoint for
  final pulumi.Input<String> domainArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Options to specify the subnets and security groups for the endpoint.
  final pulumi.Input<VpcEndpointVpcOptions> vpcOptions;

  /// Creates a new [VpcEndpointArgs].
  /// [domainArn] Specifies the Amazon Resource Name (ARN) of the domain to create the endpoint for
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [vpcOptions] Options to specify the subnets and security groups for the endpoint.
  VpcEndpointArgs({
    required String domainArn,
    String? region,
    required VpcEndpointVpcOptions vpcOptions,
  }) : domainArn = pulumi.Input.asInput<String>(domainArn),
       region = pulumi.Input.asOptionalInput<String>(region),
       vpcOptions = pulumi.Input.asInput<VpcEndpointVpcOptions>(vpcOptions);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainArn': domainArn,
      'region': ?region,
      'vpcOptions':
          pulumi.Input.mapInputValue<
            VpcEndpointVpcOptions,
            Map<String, dynamic>
          >(vpcOptions, (value) => value.toMap()),
    };
  }

  factory VpcEndpointArgs.fromMap(Map<String, dynamic> map) {
    return VpcEndpointArgs(
      domainArn: map['domainArn'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      vpcOptions: VpcEndpointVpcOptions.fromMap(
        (map['vpcOptions'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
