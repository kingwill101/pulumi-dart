// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../vpc_endpoint_vpc_options/vpc_endpoint_vpc_options.dart';

/// The set of arguments for VpcEndpoint.
class VpcEndpointElasticsearchArgs {
  /// Specifies the Amazon Resource Name (ARN) of the domain to create the endpoint for
  final pulumi.Input<String> domainArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Options to specify the subnets and security groups for the endpoint.
  final pulumi.Input<VpcEndpointVpcOptions> vpcOptions;

  VpcEndpointElasticsearchArgs({
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
        pulumi.Input.mapInputValue<VpcEndpointVpcOptions, Map<String, dynamic>>(
            vpcOptions, (value) => value.toMap());
    return map;
  }

  factory VpcEndpointElasticsearchArgs.fromMap(Map<String, dynamic> map) {
    return VpcEndpointElasticsearchArgs(
      domainArn: pulumi.Input.asInput<String>(map['domainArn']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      vpcOptions:
          pulumi.Input.asInput<VpcEndpointVpcOptions>(map['vpcOptions']),
    );
  }
}
