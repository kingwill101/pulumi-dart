// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DistributionTrustedKeyGroupItem {
  /// ID of the key group that contains the public keys.
  final pulumi.Input<String>? keyGroupId;
  /// Set of active CloudFront key pairs associated with the signer account
  final pulumi.Input<List<String>>? keyPairIds;

  /// Creates a new [DistributionTrustedKeyGroupItem].
  /// [keyGroupId] ID of the key group that contains the public keys.
  /// [keyPairIds] Set of active CloudFront key pairs associated with the signer account
  DistributionTrustedKeyGroupItem({
    this.keyGroupId,
    this.keyPairIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyGroupId': ?keyGroupId,
      'keyPairIds': ?keyPairIds,
    };
  }

  factory DistributionTrustedKeyGroupItem.fromMap(Map<String, dynamic> map) {
    return DistributionTrustedKeyGroupItem(
      keyGroupId: (() { final guardedValue = map['keyGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyPairIds: (() { final guardedValue = map['keyPairIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

