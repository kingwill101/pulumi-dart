// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAclsAclRelatedListener {
  final pulumi.Input<String> aclType;
  final pulumi.Input<int> frontendPort;
  final pulumi.Input<String> loadBalancerId;
  final pulumi.Input<String> protocol;

  /// Creates a new [GetAclsAclRelatedListener].
  /// [aclType] Required.
  /// [frontendPort] Required.
  /// [loadBalancerId] Required.
  /// [protocol] Required.
  const GetAclsAclRelatedListener({
    required this.aclType,
    required this.frontendPort,
    required this.loadBalancerId,
    required this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclType': aclType,
      'frontendPort': frontendPort,
      'loadBalancerId': loadBalancerId,
      'protocol': protocol,
    };
  }

  factory GetAclsAclRelatedListener.fromMap(Map<String, dynamic> map) {
    return GetAclsAclRelatedListener(
      aclType: pulumi.Input.fromValue(map['aclType'] as String),
      frontendPort: pulumi.Input.fromValue(map['frontendPort'] as int),
      loadBalancerId: pulumi.Input.fromValue(map['loadBalancerId'] as String),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
    );
  }
}

