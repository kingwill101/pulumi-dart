// ignore_for_file: unused_element, unnecessary_cast

/// TotpMFAProviderConfig represents the TOTP based MFA provider.
class GoogleCloudIdentitytoolkitAdminV2TotpMfaProviderConfig {
  /// The allowed number of adjacent intervals that will be used for verification to avoid clock skew.
  final int? adjacentIntervals;

  GoogleCloudIdentitytoolkitAdminV2TotpMfaProviderConfig({
    this.adjacentIntervals,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final adjacentIntervalsValue = adjacentIntervals;
    if (adjacentIntervalsValue != null) {
      map['adjacentIntervals'] = adjacentIntervalsValue;
    }
    return map;
  }

  factory GoogleCloudIdentitytoolkitAdminV2TotpMfaProviderConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2TotpMfaProviderConfig(
      adjacentIntervals: map['adjacentIntervals'] == null
          ? null
          : map['adjacentIntervals'] as int,
    );
  }
}
