// ignore_for_file: unused_element, unnecessary_cast


/// When you use an AWS account identifier as the principal in a policy, the permissions in the policy statement can be granted to all identities contained in that account. This includes IAM users and roles in that account.
class AWSPrincipal {
  /// AWS account identifier or ARN.
  final String aWS;

  /// Creates a new [AWSPrincipal].
  /// [aWS] AWS account identifier or ARN.
  AWSPrincipal({
    required this.aWS,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'AWS': aWS,
    };
  }

  factory AWSPrincipal.fromMap(Map<String, dynamic> map) {
    return AWSPrincipal(
      aWS: map['AWS'] as String,
    );
  }
}

