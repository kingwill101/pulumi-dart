// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getEmailIdentity.
class GetEmailIdentityResult {
  /// The ARN of the email identity.
  final String arn;

  /// Email identity.
  final String email;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;

  GetEmailIdentityResult({
    required this.arn,
    required this.email,
    required this.id,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['email'] = email;
    map['id'] = id;
    map['region'] = region;
    return map;
  }

  factory GetEmailIdentityResult.fromMap(Map<String, dynamic> map) {
    return GetEmailIdentityResult(
      arn: map['arn'] as String,
      email: map['email'] as String,
      id: map['id'] as String,
      region: map['region'] as String,
    );
  }
}
