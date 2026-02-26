// ignore_for_file: unused_element, unnecessary_cast

class DistributionTrustedSignerItem {
  /// AWS account ID or <span pulumi-lang-nodejs="`self`" pulumi-lang-dotnet="`Self`" pulumi-lang-go="`self`" pulumi-lang-python="`self`" pulumi-lang-yaml="`self`" pulumi-lang-java="`self`">`self`</span>
  final String? awsAccountNumber;

  /// Set of active CloudFront key pairs associated with the signer account
  final List<String>? keyPairIds;

  DistributionTrustedSignerItem({
    this.awsAccountNumber,
    this.keyPairIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final awsAccountNumberValue = awsAccountNumber;
    if (awsAccountNumberValue != null) {
      map['awsAccountNumber'] = awsAccountNumberValue;
    }
    final keyPairIdsValue = keyPairIds;
    if (keyPairIdsValue != null) {
      map['keyPairIds'] = keyPairIdsValue;
    }
    return map;
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
