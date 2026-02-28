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
  GetEndpointAssociationsArgs({
    String? region,
    required String vpcEndpointId,
  })  : region = pulumi.Input.asOptionalInput<String>(region),
        vpcEndpointId = pulumi.Input.asInput<String>(vpcEndpointId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['vpcEndpointId'] = vpcEndpointId;
    return map;
  }

  factory GetEndpointAssociationsArgs.fromMap(Map<String, dynamic> map) {
    return GetEndpointAssociationsArgs(
      region: map['region'] == null ? null : map['region'] as String,
      vpcEndpointId: map['vpcEndpointId'] as String,
    );
  }
}
