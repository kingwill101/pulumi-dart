// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../distribution_trusted_key_group_item/distribution_trusted_key_group_item.dart';

class DistributionTrustedKeyGroup {
  /// Whether the distribution is enabled to accept end user requests for content.
  final bool? enabled;

  /// List of nested attributes for each trusted signer
  final List<DistributionTrustedKeyGroupItem>? items;

  DistributionTrustedKeyGroup({
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
      map['items'] = Input.encodeList<DistributionTrustedKeyGroupItem,
          Map<String, dynamic>>(itemsValue, (value) => value.toMap());
    }
    return map;
  }

  factory DistributionTrustedKeyGroup.fromMap(Map<String, dynamic> map) {
    return DistributionTrustedKeyGroup(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      items: map['items'] == null
          ? null
          : Input.decodeList<DistributionTrustedKeyGroupItem>(
              map['items'],
              (value) => DistributionTrustedKeyGroupItem.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
