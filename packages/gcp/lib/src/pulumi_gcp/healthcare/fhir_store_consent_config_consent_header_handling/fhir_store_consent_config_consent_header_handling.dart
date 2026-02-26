// ignore_for_file: unused_element, unnecessary_cast

class FhirStoreConsentConfigConsentHeaderHandling {
  /// Specifies the default server behavior when the header is empty. If not specified, the ScopeProfile.PERMIT_EMPTY_SCOPE option is used.
  /// Default value is `PERMIT_EMPTY_SCOPE`.
  /// Possible values are: `SCOPE_PROFILE_UNSPECIFIED`, `PERMIT_EMPTY_SCOPE`, `REQUIRED_ON_READ`.
  final String? profile;

  FhirStoreConsentConfigConsentHeaderHandling({
    this.profile,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final profileValue = profile;
    if (profileValue != null) {
      map['profile'] = profileValue;
    }
    return map;
  }

  factory FhirStoreConsentConfigConsentHeaderHandling.fromMap(
      Map<String, dynamic> map) {
    return FhirStoreConsentConfigConsentHeaderHandling(
      profile: map['profile'] == null ? null : map['profile'] as String,
    );
  }
}
