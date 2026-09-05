// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getEmailIdentity.
class GetEmailIdentityResult {
  /// ARN of the email identity.
  final String? arn;
  /// Email identity.
  final String? email;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? region;

  /// Creates a new [GetEmailIdentityResult].
  /// [arn] ARN of the email identity.
  /// [email] Email identity.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Optional.
  const GetEmailIdentityResult({
    this.arn,
    this.email,
    this.id,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'email': ?email,
      'id': ?id,
      'region': ?region,
    };
  }

  factory GetEmailIdentityResult.fromMap(Map<String, dynamic> map) {
    return GetEmailIdentityResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
