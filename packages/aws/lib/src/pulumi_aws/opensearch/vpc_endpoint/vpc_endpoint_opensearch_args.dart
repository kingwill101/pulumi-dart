// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../vpc_endpoint_vpc_options/vpc_endpoint_vpc_options_opensearch.dart';

/// The set of arguments for VpcEndpoint.
class VpcEndpointOpensearchArgs {
  /// Specifies the Amazon Resource Name (ARN) of the domain to create the endpoint for
  final pulumi.Input<String> domainArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Options to specify the subnets and security groups for the endpoint.
  final pulumi.Input<VpcEndpointVpcOptionsOpensearch> vpcOptions;

  VpcEndpointOpensearchArgs({
    required this.domainArn,
    this.region,
    required this.vpcOptions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domainArn'] = domainArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['vpcOptions'] = pulumi.Input.mapInputValue<
        VpcEndpointVpcOptionsOpensearch,
        Map<String, dynamic>>(vpcOptions, (value) => value.toMap());
    return map;
  }

  factory VpcEndpointOpensearchArgs.fromMap(Map<String, dynamic> map) {
    return VpcEndpointOpensearchArgs(
      domainArn: pulumi.Input.asInput<String>(map['domainArn']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      vpcOptions: pulumi.Input.asInput<VpcEndpointVpcOptionsOpensearch>(
          map['vpcOptions']),
    );
  }
}
