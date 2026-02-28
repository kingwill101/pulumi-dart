// ignore_for_file: unused_element, unnecessary_cast

class DistributionTrustedKeyGroupItem {
  /// ID of the key group that contains the public keys.
  final String? keyGroupId;

  /// Set of active CloudFront key pairs associated with the signer account
  final List<String>? keyPairIds;

  /// Creates a new [DistributionTrustedKeyGroupItem].
  /// [keyGroupId] ID of the key group that contains the public keys.
  /// [keyPairIds] Set of active CloudFront key pairs associated with the signer account
  DistributionTrustedKeyGroupItem({
    this.keyGroupId,
    this.keyPairIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final keyGroupIdValue = keyGroupId;
    if (keyGroupIdValue != null) {
      map['keyGroupId'] = keyGroupIdValue;
    }
    final keyPairIdsValue = keyPairIds;
    if (keyPairIdsValue != null) {
      map['keyPairIds'] = keyPairIdsValue;
    }
    return map;
  }

  factory DistributionTrustedKeyGroupItem.fromMap(Map<String, dynamic> map) {
    return DistributionTrustedKeyGroupItem(
      keyGroupId:
          map['keyGroupId'] == null ? null : map['keyGroupId'] as String,
      keyPairIds: map['keyPairIds'] == null
          ? null
          : (map['keyPairIds'] as List).cast<String>(),
    );
  }
}
