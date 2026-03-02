// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_endpoint_private_dns_endpoint_private_dns_args_doc}
/// The set of arguments for EndpointPrivateDns.
/// {@endtemplate}
/// {@macro pulumi_vpc_endpoint_private_dns_endpoint_private_dns_args_doc}
class EndpointPrivateDnsArgs {
  /// Indicates whether a private hosted zone is associated with the VPC. Only applicable for `Interface` endpoints.
  final pulumi.Input<bool> privateDnsEnabled;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// VPC endpoint identifier.
  final pulumi.Input<String> vpcEndpointId;

  /// Creates a new [EndpointPrivateDnsArgs].
  /// [privateDnsEnabled] Indicates whether a private hosted zone is associated with the VPC. Only applicable for `Interface` endpoints.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [vpcEndpointId] VPC endpoint identifier.
  EndpointPrivateDnsArgs({
    required this.privateDnsEnabled,
    this.region,
    required this.vpcEndpointId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateDnsEnabled': privateDnsEnabled,
      'region': ?region,
      'vpcEndpointId': vpcEndpointId,
    };
  }

  factory EndpointPrivateDnsArgs.fromMap(Map<String, dynamic> map) {
    return EndpointPrivateDnsArgs(
      privateDnsEnabled: (map['privateDnsEnabled'] as bool).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      vpcEndpointId: (map['vpcEndpointId'] as String).input(),
    );
  }
}

