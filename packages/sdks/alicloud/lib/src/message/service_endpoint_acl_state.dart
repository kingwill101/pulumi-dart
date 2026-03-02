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
    this.aclStrategy,
    this.cidr,
    this.endpointType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclStrategy': ?aclStrategy,
      'cidr': ?cidr,
      'endpointType': ?endpointType,
    };
  }

  factory ServiceEndpointAclState.fromMap(Map<String, dynamic> map) {
    return ServiceEndpointAclState(
      aclStrategy: map['aclStrategy'] == null ? null : (map['aclStrategy'] as String).input(),
      cidr: map['cidr'] == null ? null : (map['cidr'] as String).input(),
      endpointType: map['endpointType'] == null ? null : (map['endpointType'] as String).input(),
    );
  }
}

