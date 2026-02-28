// ignore_for_file: unused_element, unnecessary_cast

/// Describes authentication configuration when Web-Security-Scanner service account is added in Identity-Aware-Proxy (IAP) access policies.
class IapTestServiceAccountInfoResponseWebsecurityscannerV1beta {
  /// Describes OAuth2 Client ID of resources protected by Identity-Aware-Proxy(IAP).
  final String targetAudienceClientId;

  /// Creates a new [IapTestServiceAccountInfoResponseWebsecurityscannerV1beta].
  /// [targetAudienceClientId] Describes OAuth2 Client ID of resources protected by Identity-Aware-Proxy(IAP).
  IapTestServiceAccountInfoResponseWebsecurityscannerV1beta({
    required this.targetAudienceClientId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['targetAudienceClientId'] = targetAudienceClientId;
    return map;
  }

  factory IapTestServiceAccountInfoResponseWebsecurityscannerV1beta.fromMap(
      Map<String, dynamic> map) {
    return IapTestServiceAccountInfoResponseWebsecurityscannerV1beta(
      targetAudienceClientId: map['targetAudienceClientId'] as String,
    );
  }
}
