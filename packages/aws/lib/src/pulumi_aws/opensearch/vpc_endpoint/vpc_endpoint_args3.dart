// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../vpc_endpoint_vpc_options/vpc_endpoint_vpc_options2.dart';

/// The set of arguments for VpcEndpoint.
class VpcEndpointArgs3 {
  /// Specifies the Amazon Resource Name (ARN) of the domain to create the endpoint for
  final Input<String> domainArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Options to specify the subnets and security groups for the endpoint.
  final Input<VpcEndpointVpcOptions2> vpcOptions;

  VpcEndpointArgs3({
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
    map['vpcOptions'] =
        Input.mapInputValue<VpcEndpointVpcOptions2, Map<String, dynamic>>(
            vpcOptions, (value) => value.toMap());
    return map;
  }

  factory VpcEndpointArgs3.fromMap(Map<String, dynamic> map) {
    return VpcEndpointArgs3(
      domainArn: Input.asInput<String>(map['domainArn']),
      region: Input.asOptionalInput<String>(map['region']),
      vpcOptions: Input.asInput<VpcEndpointVpcOptions2>(map['vpcOptions']),
    );
  }
}
