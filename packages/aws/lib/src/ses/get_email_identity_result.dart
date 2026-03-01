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

  /// Creates a new [GetEmailIdentityResult].
  /// [arn] The ARN of the email identity.
  /// [email] Email identity.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  GetEmailIdentityResult({
    required this.arn,
    required this.email,
    required this.id,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'email': email,
      'id': id,
      'region': region,
    };
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
