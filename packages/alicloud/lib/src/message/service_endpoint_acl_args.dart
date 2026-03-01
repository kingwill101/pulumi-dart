// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_message_service_endpoint_acl_service_endpoint_acl_args_doc}
/// The set of arguments for ServiceEndpointAcl.
/// {@endtemplate}
/// {@macro pulumi_message_service_endpoint_acl_service_endpoint_acl_args_doc}
class ServiceEndpointAclArgs {
  /// The ACL policy. Valid value:
  /// - allow: indicates that the current endpoint allows access from the corresponding CIDR block. (Only allow is supported)
  final pulumi.Input<String> aclStrategy;
  final pulumi.Input<String> cidr;
  /// Access point type. Value:
  /// - public: indicates a public access point. (Currently only public is supported)
  final pulumi.Input<String> endpointType;

  /// Creates a new [ServiceEndpointAclArgs].
  /// [aclStrategy] The ACL policy. Valid value:
  /// [cidr] Required.
  /// [endpointType] Access point type. Value:
  ServiceEndpointAclArgs({
    required String aclStrategy,
    required String cidr,
    required String endpointType,
  }) :
      aclStrategy = pulumi.Input.asInput<String>(aclStrategy),
      cidr = pulumi.Input.asInput<String>(cidr),
      endpointType = pulumi.Input.asInput<String>(endpointType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclStrategy': aclStrategy,
      'cidr': cidr,
      'endpointType': endpointType,
    };
  }

  factory ServiceEndpointAclArgs.fromMap(Map<String, dynamic> map) {
    return ServiceEndpointAclArgs(
      aclStrategy: map['aclStrategy'] as String,
      cidr: map['cidr'] as String,
      endpointType: map['endpointType'] as String,
    );
  }
}

