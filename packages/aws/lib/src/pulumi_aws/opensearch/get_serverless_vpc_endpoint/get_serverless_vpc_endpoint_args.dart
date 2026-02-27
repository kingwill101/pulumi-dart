// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getServerlessVpcEndpoint.
class GetServerlessVpcEndpointArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The unique identifier of the endpoint.
  final pulumi.Input<String> vpcEndpointId;

  GetServerlessVpcEndpointArgs({
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

  factory GetServerlessVpcEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GetServerlessVpcEndpointArgs(
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      vpcEndpointId: pulumi.Input.asInput<String>(map['vpcEndpointId']),
    );
  }
}
