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
    required this.domainArn,
    this.region,
    required this.vpcOptions,
  });

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
      domainArn: pulumi.Input.fromValue(map['domainArn'] as String),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vpcOptions: pulumi.Input.fromValue(
        VpcEndpointVpcOptions.fromMap(
          (map['vpcOptions']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
