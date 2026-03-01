// ignore_for_file: unused_element, unnecessary_cast

class DistributionTrustedSignerItem {
  /// AWS account ID or `self`
  final String? awsAccountNumber;

  /// Set of active CloudFront key pairs associated with the signer account
  final List<String>? keyPairIds;

  /// Creates a new [DistributionTrustedSignerItem].
  /// [awsAccountNumber] AWS account ID or `self`
  /// [keyPairIds] Set of active CloudFront key pairs associated with the signer account
  DistributionTrustedSignerItem({this.awsAccountNumber, this.keyPairIds});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsAccountNumber': ?awsAccountNumber,
      'keyPairIds': ?keyPairIds,
    };
  }

  factory DistributionTrustedSignerItem.fromMap(Map<String, dynamic> map) {
    return DistributionTrustedSignerItem(
      awsAccountNumber: map['awsAccountNumber'] == null
          ? null
          : map['awsAccountNumber'] as String,
      keyPairIds: map['keyPairIds'] == null
          ? null
          : (map['keyPairIds'] as List).cast<String>(),
    );
  }
}
