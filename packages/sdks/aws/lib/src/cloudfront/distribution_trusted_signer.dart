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
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      items: (() { final guardedValue = map['items']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DistributionTrustedSignerItem>(guardedValue, (value) => DistributionTrustedSignerItem.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

