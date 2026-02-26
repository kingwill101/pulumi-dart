// ignore_for_file: unused_element, unnecessary_cast

/// Describes authentication configuration when Web-Security-Scanner service account is added in Identity-Aware-Proxy (IAP) access policies.
class IapTestServiceAccountInfo2 {
  /// Describes OAuth2 Client ID of resources protected by Identity-Aware-Proxy(IAP).
  final String targetAudienceClientId;

  IapTestServiceAccountInfo2({
    required this.targetAudienceClientId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['targetAudienceClientId'] = targetAudienceClientId;
    return map;
  }

  factory IapTestServiceAccountInfo2.fromMap(Map<String, dynamic> map) {
    return IapTestServiceAccountInfo2(
      targetAudienceClientId: map['targetAudienceClientId'] as String,
    );
  }
}
