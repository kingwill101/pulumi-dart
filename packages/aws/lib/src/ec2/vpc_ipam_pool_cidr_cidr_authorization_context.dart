// ignore_for_file: unused_element, unnecessary_cast

class VpcIpamPoolCidrCidrAuthorizationContext {
  /// The plain-text authorization message for the prefix and account.
  final String? message;

  /// The signed authorization message for the prefix and account.
  final String? signature;

  /// Creates a new [VpcIpamPoolCidrCidrAuthorizationContext].
  /// [message] The plain-text authorization message for the prefix and account.
  /// [signature] The signed authorization message for the prefix and account.
  VpcIpamPoolCidrCidrAuthorizationContext({
    this.message,
    this.signature,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final messageValue = message;
    if (messageValue != null) {
      map['message'] = messageValue;
    }
    final signatureValue = signature;
    if (signatureValue != null) {
      map['signature'] = signatureValue;
    }
    return map;
  }

  factory VpcIpamPoolCidrCidrAuthorizationContext.fromMap(
      Map<String, dynamic> map) {
    return VpcIpamPoolCidrCidrAuthorizationContext(
      message: map['message'] == null ? null : map['message'] as String,
      signature: map['signature'] == null ? null : map['signature'] as String,
    );
  }
}
