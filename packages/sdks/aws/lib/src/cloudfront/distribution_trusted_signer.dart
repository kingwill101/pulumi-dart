// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'distribution_trusted_signer_item.dart';

class DistributionTrustedSigner {
  /// Whether the distribution is enabled to accept end user requests for content.
  final pulumi.Input<bool>? enabled;
  /// List of nested attributes for each trusted signer
  final pulumi.Input<List<DistributionTrustedSignerItem>>? items;

  /// Creates a new [DistributionTrustedSigner].
  /// [enabled] Whether the distribution is enabled to accept end user requests for content.
  /// [items] List of nested attributes for each trusted signer
  DistributionTrustedSigner({
    this.enabled,
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'items': ?pulumi.Input.mapOptionalInputValue<List<DistributionTrustedSignerItem>, List<Map<String, dynamic>>>(items, (value) => pulumi.Input.encodeList<DistributionTrustedSignerItem, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DistributionTrustedSigner.fromMap(Map<String, dynamic> map) {
    return DistributionTrustedSigner(
      enabled: map['enabled'] == null ? null : ((map['enabled'] as bool).input()).input(),
      items: map['items'] == null ? null : ((pulumi.Input.decodeList<DistributionTrustedSignerItem>(map['items']!, (value) => DistributionTrustedSignerItem.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
    );
  }
}

