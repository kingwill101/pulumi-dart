// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DistributionTrustedSignerItem {
  /// AWS account ID or `self`
  final pulumi.Input<String>? awsAccountNumber;
  /// Set of active CloudFront key pairs associated with the signer account
  final pulumi.Input<List<String>>? keyPairIds;

  /// Creates a new [DistributionTrustedSignerItem].
  /// [awsAccountNumber] AWS account ID or `self`
  /// [keyPairIds] Set of active CloudFront key pairs associated with the signer account
  const DistributionTrustedSignerItem({
    this.awsAccountNumber,
    this.keyPairIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsAccountNumber': ?awsAccountNumber,
      'keyPairIds': ?keyPairIds,
    };
  }

  factory DistributionTrustedSignerItem.fromMap(Map<String, dynamic> map) {
    return DistributionTrustedSignerItem(
      awsAccountNumber: (() { final guardedValue = map['awsAccountNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyPairIds: (() { final guardedValue = map['keyPairIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
