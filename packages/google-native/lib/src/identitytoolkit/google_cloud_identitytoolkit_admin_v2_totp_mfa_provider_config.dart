// ignore_for_file: unused_element, unnecessary_cast

/// TotpMFAProviderConfig represents the TOTP based MFA provider.
class GoogleCloudIdentitytoolkitAdminV2TotpMfaProviderConfig {
  /// The allowed number of adjacent intervals that will be used for verification to avoid clock skew.
  final int? adjacentIntervals;

  /// Creates a new [GoogleCloudIdentitytoolkitAdminV2TotpMfaProviderConfig].
  /// [adjacentIntervals] The allowed number of adjacent intervals that will be used for verification to avoid clock skew.
  GoogleCloudIdentitytoolkitAdminV2TotpMfaProviderConfig({
    this.adjacentIntervals,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'adjacentIntervals': ?adjacentIntervals};
  }

  factory GoogleCloudIdentitytoolkitAdminV2TotpMfaProviderConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudIdentitytoolkitAdminV2TotpMfaProviderConfig(
      adjacentIntervals: map['adjacentIntervals'] == null
          ? null
          : map['adjacentIntervals'] as int,
    );
  }
}
