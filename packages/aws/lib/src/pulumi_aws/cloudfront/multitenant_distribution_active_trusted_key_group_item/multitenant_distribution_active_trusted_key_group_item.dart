// ignore_for_file: unused_element, unnecessary_cast

class MultitenantDistributionActiveTrustedKeyGroupItem {
  /// ID of the key group that contains the public keys.
  final String? keyGroupId;

  /// Set of active CloudFront key pairs associated with the signer that can be used to verify the signatures of signed URLs and signed cookies.
  final List<String>? keyPairIds;

  MultitenantDistributionActiveTrustedKeyGroupItem({
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

  factory MultitenantDistributionActiveTrustedKeyGroupItem.fromMap(
      Map<String, dynamic> map) {
    return MultitenantDistributionActiveTrustedKeyGroupItem(
      keyGroupId:
          map['keyGroupId'] == null ? null : map['keyGroupId'] as String,
      keyPairIds: map['keyPairIds'] == null
          ? null
          : (map['keyPairIds'] as List).cast<String>(),
    );
  }
}
