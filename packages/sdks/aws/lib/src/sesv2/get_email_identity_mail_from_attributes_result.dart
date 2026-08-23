// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getEmailIdentityMailFromAttributes.
class GetEmailIdentityMailFromAttributesResult {
  /// The action to take if the required MX record isn't found when you send an email. Valid values: `USE_DEFAULT_VALUE`, `REJECT_MESSAGE`.
  final String behaviorOnMxFailure;
  final String emailIdentity;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The custom MAIL FROM domain that you want the verified identity to use.
  final String mailFromDomain;
  final String region;

  /// Creates a new [GetEmailIdentityMailFromAttributesResult].
  /// [behaviorOnMxFailure] The action to take if the required MX record isn't found when you send an email. Valid values: `USE_DEFAULT_VALUE`, `REJECT_MESSAGE`.
  /// [emailIdentity] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [mailFromDomain] The custom MAIL FROM domain that you want the verified identity to use.
  /// [region] Required.
  const GetEmailIdentityMailFromAttributesResult({
    required this.behaviorOnMxFailure,
    required this.emailIdentity,
    required this.id,
    required this.mailFromDomain,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'behaviorOnMxFailure': behaviorOnMxFailure,
      'emailIdentity': emailIdentity,
      'id': id,
      'mailFromDomain': mailFromDomain,
      'region': region,
    };
  }

  factory GetEmailIdentityMailFromAttributesResult.fromMap(Map<String, dynamic> map) {
    return GetEmailIdentityMailFromAttributesResult(
      behaviorOnMxFailure: map['behaviorOnMxFailure'] as String,
      emailIdentity: map['emailIdentity'] as String,
      id: map['id'] as String,
      mailFromDomain: map['mailFromDomain'] as String,
      region: map['region'] as String,
    );
  }
}
