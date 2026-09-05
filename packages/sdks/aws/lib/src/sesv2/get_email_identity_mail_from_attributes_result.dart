// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getEmailIdentityMailFromAttributes.
class GetEmailIdentityMailFromAttributesResult {
  /// Action to take if the required MX record isn't found when you send an email. Valid values: `USE_DEFAULT_VALUE`, `REJECT_MESSAGE`.
  final String? behaviorOnMxFailure;
  final String? emailIdentity;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Custom MAIL FROM domain that you want the verified identity to use.
  final String? mailFromDomain;
  final String? region;

  /// Creates a new [GetEmailIdentityMailFromAttributesResult].
  /// [behaviorOnMxFailure] Action to take if the required MX record isn't found when you send an email. Valid values: `USE_DEFAULT_VALUE`, `REJECT_MESSAGE`.
  /// [emailIdentity] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [mailFromDomain] Custom MAIL FROM domain that you want the verified identity to use.
  /// [region] Optional.
  const GetEmailIdentityMailFromAttributesResult({
    this.behaviorOnMxFailure,
    this.emailIdentity,
    this.id,
    this.mailFromDomain,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'behaviorOnMxFailure': ?behaviorOnMxFailure,
      'emailIdentity': ?emailIdentity,
      'id': ?id,
      'mailFromDomain': ?mailFromDomain,
      'region': ?region,
    };
  }

  factory GetEmailIdentityMailFromAttributesResult.fromMap(Map<String, dynamic> map) {
    return GetEmailIdentityMailFromAttributesResult(
      behaviorOnMxFailure: (() { final guardedValue = map['behaviorOnMxFailure']; if (guardedValue == null) return null; return guardedValue as String; })(),
      emailIdentity: (() { final guardedValue = map['emailIdentity']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mailFromDomain: (() { final guardedValue = map['mailFromDomain']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
