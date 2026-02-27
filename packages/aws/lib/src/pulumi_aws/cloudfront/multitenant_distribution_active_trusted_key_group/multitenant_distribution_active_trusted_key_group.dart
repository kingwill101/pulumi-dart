// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../multitenant_distribution_active_trusted_key_group_item/multitenant_distribution_active_trusted_key_group_item.dart';

class MultitenantDistributionActiveTrustedKeyGroup {
  /// Whether any of the key groups have public keys that CloudFront can use to verify the signatures of signed URLs and signed cookies.
  final bool? enabled;

  /// List of key groups. See Key Group Items below.
  final List<MultitenantDistributionActiveTrustedKeyGroupItem>? items;

  MultitenantDistributionActiveTrustedKeyGroup({
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
      map['items'] = pulumi.Input.encodeList<
          MultitenantDistributionActiveTrustedKeyGroupItem,
          Map<String, dynamic>>(itemsValue, (value) => value.toMap());
    }
    return map;
  }

  factory MultitenantDistributionActiveTrustedKeyGroup.fromMap(
      Map<String, dynamic> map) {
    return MultitenantDistributionActiveTrustedKeyGroup(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      items: map['items'] == null
          ? null
          : pulumi.Input.decodeList<
                  MultitenantDistributionActiveTrustedKeyGroupItem>(
              map['items'],
              (value) =>
                  MultitenantDistributionActiveTrustedKeyGroupItem.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
