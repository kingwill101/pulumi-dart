// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ServiceEndpointAcl resources.
class ServiceEndpointAclState {
  /// The ACL policy. Valid value:
  /// - allow: indicates that the current endpoint allows access from the corresponding CIDR block. (Only allow is supported)
  final pulumi.Input<String>? aclStrategy;
  final pulumi.Input<String>? cidr;
  /// Access point type. Value:
  /// - public: indicates a public access point. (Currently only public is supported)
  final pulumi.Input<String>? endpointType;

  /// Creates a new [ServiceEndpointAclState].
  /// [aclStrategy] The ACL policy. Valid value:
  /// [cidr] Optional.
  /// [endpointType] Access point type. Value:
  ServiceEndpointAclState({
    pulumi.Output<String>? aclStrategy,
    pulumi.Output<String>? cidr,
    pulumi.Output<String>? endpointType,
  }) :
      aclStrategy = pulumi.Input.asOptionalInput<String>(aclStrategy),
      cidr = pulumi.Input.asOptionalInput<String>(cidr),
      endpointType = pulumi.Input.asOptionalInput<String>(endpointType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclStrategy': ?aclStrategy,
      'cidr': ?cidr,
      'endpointType': ?endpointType,
    };
  }

  factory ServiceEndpointAclState.fromMap(Map<String, dynamic> map) {
    return ServiceEndpointAclState(
      aclStrategy: map['aclStrategy'] == null ? null : pulumi.Output.create<String>(map['aclStrategy'] as String),
      cidr: map['cidr'] == null ? null : pulumi.Output.create<String>(map['cidr'] as String),
      endpointType: map['endpointType'] == null ? null : pulumi.Output.create<String>(map['endpointType'] as String),
    );
  }
}

