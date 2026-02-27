// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for EndpointPrivateDns.
class EndpointPrivateDnsArgs {
  /// Indicates whether a private hosted zone is associated with the VPC. Only applicable for `Interface` endpoints.
  final pulumi.Input<bool> privateDnsEnabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// VPC endpoint identifier.
  final pulumi.Input<String> vpcEndpointId;

  EndpointPrivateDnsArgs({
    required this.privateDnsEnabled,
    this.region,
    required this.vpcEndpointId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['privateDnsEnabled'] = privateDnsEnabled;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['vpcEndpointId'] = vpcEndpointId;
    return map;
  }

  factory EndpointPrivateDnsArgs.fromMap(Map<String, dynamic> map) {
    return EndpointPrivateDnsArgs(
      privateDnsEnabled: pulumi.Input.asInput<bool>(map['privateDnsEnabled']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      vpcEndpointId: pulumi.Input.asInput<String>(map['vpcEndpointId']),
    );
  }
}
