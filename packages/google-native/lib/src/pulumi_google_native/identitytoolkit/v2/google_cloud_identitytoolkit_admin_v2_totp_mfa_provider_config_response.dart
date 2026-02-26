// ignore_for_file: unused_element, unnecessary_cast

/// TotpMFAProviderConfig represents the TOTP based MFA provider.
class GoogleCloudIdentitytoolkitAdminV2TotpMfaProviderConfigResponse {
  /// The allowed number of adjacent intervals that will be used for verification to avoid clock skew.
  final int adjacentIntervals;

  GoogleCloudIdentitytoolkitAdminV2TotpMfaProviderConfigResponse({
    required this.adjacentIntervals,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['adjacentIntervals'] = adjacentIntervals;
    return map;
  }

  factory GoogleCloudIdentitytoolkitAdminV2TotpMfaProviderConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2TotpMfaProviderConfigResponse(
      adjacentIntervals: map['adjacentIntervals'] as int,
    );
  }
}
