// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for EndpointPrivateDns.
class EndpointPrivateDnsArgs {
  /// Indicates whether a private hosted zone is associated with the VPC. Only applicable for `Interface` endpoints.
  final Input<bool> privateDnsEnabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// VPC endpoint identifier.
  final Input<String> vpcEndpointId;

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
      privateDnsEnabled: Input.asInput<bool>(map['privateDnsEnabled']),
      region: Input.asOptionalInput<String>(map['region']),
      vpcEndpointId: Input.asInput<String>(map['vpcEndpointId']),
    );
  }
}
