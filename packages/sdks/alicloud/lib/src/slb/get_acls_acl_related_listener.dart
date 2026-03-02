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
  GetAclsAclRelatedListener({
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
      aclType: (map['aclType'] as String).input(),
      frontendPort: (map['frontendPort'] as int).input(),
      loadBalancerId: (map['loadBalancerId'] as String).input(),
      protocol: (map['protocol'] as String).input(),
    );
  }
}

