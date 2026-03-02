// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_opensearch_get_serverless_vpc_endpoint_get_serverless_vpc_endpoint_args_doc}
/// Arguments for getServerlessVpcEndpoint.
/// {@endtemplate}
/// {@macro pulumi_opensearch_get_serverless_vpc_endpoint_get_serverless_vpc_endpoint_args_doc}
class GetServerlessVpcEndpointArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The unique identifier of the endpoint.
  final pulumi.Input<String> vpcEndpointId;

  /// Creates a new [GetServerlessVpcEndpointArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [vpcEndpointId] The unique identifier of the endpoint.
  GetServerlessVpcEndpointArgs({
    this.region,
    required this.vpcEndpointId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'vpcEndpointId': vpcEndpointId,
    };
  }

  factory GetServerlessVpcEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GetServerlessVpcEndpointArgs(
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      vpcEndpointId: (map['vpcEndpointId'] as String).input(),
    );
  }
}

