// ignore_for_file: unused_element, unnecessary_cast

/// Describes authentication configuration when Web-Security-Scanner service account is added in Identity-Aware-Proxy (IAP) access policies.
class IapTestServiceAccountInfo {
  /// Describes OAuth2 client id of resources protected by Identity-Aware-Proxy (IAP).
  final String targetAudienceClientId;

  IapTestServiceAccountInfo({
    required this.targetAudienceClientId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['targetAudienceClientId'] = targetAudienceClientId;
    return map;
  }

  factory IapTestServiceAccountInfo.fromMap(Map<String, dynamic> map) {
    return IapTestServiceAccountInfo(
      targetAudienceClientId: map['targetAudienceClientId'] as String,
    );
  }
}
