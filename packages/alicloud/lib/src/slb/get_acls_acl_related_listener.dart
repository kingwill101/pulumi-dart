// ignore_for_file: unused_element, unnecessary_cast


class GetAclsAclRelatedListener {
  final String aclType;
  final int frontendPort;
  final String loadBalancerId;
  final String protocol;

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
      aclType: map['aclType'] as String,
      frontendPort: map['frontendPort'] as int,
      loadBalancerId: map['loadBalancerId'] as String,
      protocol: map['protocol'] as String,
    );
  }
}

