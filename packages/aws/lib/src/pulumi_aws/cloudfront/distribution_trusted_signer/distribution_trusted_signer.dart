// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../distribution_trusted_signer_item/distribution_trusted_signer_item.dart';

class DistributionTrustedSigner {
  /// Whether the distribution is enabled to accept end user requests for content.
  final bool? enabled;

  /// List of nested attributes for each trusted signer
  final List<DistributionTrustedSignerItem>? items;

  DistributionTrustedSigner({
    this.enabled,
    this.items,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final itemsValue = items;
    if (itemsValue != null) {
      map['items'] = pulumi.Input.encodeList<DistributionTrustedSignerItem,
          Map<String, dynamic>>(itemsValue, (value) => value.toMap());
    }
    return map;
  }

  factory DistributionTrustedSigner.fromMap(Map<String, dynamic> map) {
    return DistributionTrustedSigner(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      items: map['items'] == null
          ? null
          : pulumi.Input.decodeList<DistributionTrustedSignerItem>(
              map['items'],
              (value) => DistributionTrustedSignerItem.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
