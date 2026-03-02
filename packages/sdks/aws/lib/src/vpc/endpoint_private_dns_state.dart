// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EndpointPrivateDns resources.
class EndpointPrivateDnsState {
  /// Indicates whether a private hosted zone is associated with the VPC. Only applicable for `Interface` endpoints.
  final pulumi.Input<bool>? privateDnsEnabled;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// VPC endpoint identifier.
  final pulumi.Input<String>? vpcEndpointId;

  /// Creates a new [EndpointPrivateDnsState].
  /// [privateDnsEnabled] Indicates whether a private hosted zone is associated with the VPC. Only applicable for `Interface` endpoints.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [vpcEndpointId] VPC endpoint identifier.
  EndpointPrivateDnsState({
    this.privateDnsEnabled,
    this.region,
    this.vpcEndpointId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateDnsEnabled': ?privateDnsEnabled,
      'region': ?region,
      'vpcEndpointId': ?vpcEndpointId,
    };
  }

  factory EndpointPrivateDnsState.fromMap(Map<String, dynamic> map) {
    return EndpointPrivateDnsState(
      privateDnsEnabled: map['privateDnsEnabled'] == null ? null : ((map['privateDnsEnabled'] as bool).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      vpcEndpointId: map['vpcEndpointId'] == null ? null : ((map['vpcEndpointId'] as String).input()).input(),
    );
  }
}

