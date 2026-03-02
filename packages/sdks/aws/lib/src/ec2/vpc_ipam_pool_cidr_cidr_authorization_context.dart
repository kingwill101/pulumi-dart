// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VpcIpamPoolCidrCidrAuthorizationContext {
  /// The plain-text authorization message for the prefix and account.
  final pulumi.Input<String>? message;
  /// The signed authorization message for the prefix and account.
  final pulumi.Input<String>? signature;

  /// Creates a new [VpcIpamPoolCidrCidrAuthorizationContext].
  /// [message] The plain-text authorization message for the prefix and account.
  /// [signature] The signed authorization message for the prefix and account.
  VpcIpamPoolCidrCidrAuthorizationContext({
    this.message,
    this.signature,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': ?message,
      'signature': ?signature,
    };
  }

  factory VpcIpamPoolCidrCidrAuthorizationContext.fromMap(Map<String, dynamic> map) {
    return VpcIpamPoolCidrCidrAuthorizationContext(
      message: map['message'] == null ? null : ((map['message'] as String).input()).input(),
      signature: map['signature'] == null ? null : ((map['signature'] as String).input()).input(),
    );
  }
}

