// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getEndpointAssociations.
class GetEndpointAssociationsArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ID of the specific VPC Endpoint to retrieve.
  final Input<String> vpcEndpointId;

  GetEndpointAssociationsArgs({
    this.region,
    required this.vpcEndpointId,
  });

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
      region: Input.asOptionalInput<String>(map['region']),
      vpcEndpointId: Input.asInput<String>(map['vpcEndpointId']),
    );
  }
}
