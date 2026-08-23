// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_get_endpoint_associations_get_endpoint_associations_args_doc}
/// Arguments for getEndpointAssociations.
/// {@endtemplate}
/// {@macro pulumi_vpc_get_endpoint_associations_get_endpoint_associations_args_doc}
class GetEndpointAssociationsArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ID of the specific VPC Endpoint to retrieve.
  final pulumi.Input<String> vpcEndpointId;

  /// Creates a new [GetEndpointAssociationsArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [vpcEndpointId] ID of the specific VPC Endpoint to retrieve.
  const GetEndpointAssociationsArgs({
    this.region,
    required this.vpcEndpointId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'vpcEndpointId': vpcEndpointId,
    };
  }

  factory GetEndpointAssociationsArgs.fromMap(Map<String, dynamic> map) {
    return GetEndpointAssociationsArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcEndpointId: pulumi.Input.fromValue(map['vpcEndpointId'] as String),
    );
  }
}
