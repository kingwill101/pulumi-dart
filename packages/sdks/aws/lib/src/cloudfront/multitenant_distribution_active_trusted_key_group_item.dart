// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MultitenantDistributionActiveTrustedKeyGroupItem {
  /// ID of the key group that contains the public keys.
  final pulumi.Input<String>? keyGroupId;
  /// Set of active CloudFront key pairs associated with the signer that can be used to verify the signatures of signed URLs and signed cookies.
  final pulumi.Input<List<String>>? keyPairIds;

  /// Creates a new [MultitenantDistributionActiveTrustedKeyGroupItem].
  /// [keyGroupId] ID of the key group that contains the public keys.
  /// [keyPairIds] Set of active CloudFront key pairs associated with the signer that can be used to verify the signatures of signed URLs and signed cookies.
  const MultitenantDistributionActiveTrustedKeyGroupItem({
    this.keyGroupId,
    this.keyPairIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyGroupId': ?keyGroupId,
      'keyPairIds': ?keyPairIds,
    };
  }

  factory MultitenantDistributionActiveTrustedKeyGroupItem.fromMap(Map<String, dynamic> map) {
    return MultitenantDistributionActiveTrustedKeyGroupItem(
      keyGroupId: (() { final guardedValue = map['keyGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyPairIds: (() { final guardedValue = map['keyPairIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

