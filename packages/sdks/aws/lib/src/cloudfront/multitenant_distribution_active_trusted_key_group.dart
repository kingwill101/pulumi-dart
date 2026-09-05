// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multitenant_distribution_active_trusted_key_group_item.dart';

class MultitenantDistributionActiveTrustedKeyGroup {
  /// Whether any of the key groups have public keys that CloudFront can use to verify the signatures of signed URLs and signed cookies.
  final pulumi.Input<bool?>? enabled;
  /// List of key groups. See Key Group Items below.
  final pulumi.Input<List<MultitenantDistributionActiveTrustedKeyGroupItem>?>? items;

  /// Creates a new [MultitenantDistributionActiveTrustedKeyGroup].
  /// [enabled] Whether any of the key groups have public keys that CloudFront can use to verify the signatures of signed URLs and signed cookies.
  /// [items] List of key groups. See Key Group Items below.
  const MultitenantDistributionActiveTrustedKeyGroup({
    this.enabled,
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'items': ?pulumi.Input.mapOptionalInputValue<List<MultitenantDistributionActiveTrustedKeyGroupItem>, List<Map<String, dynamic>>>(items, (value) => pulumi.Input.encodeList<MultitenantDistributionActiveTrustedKeyGroupItem, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MultitenantDistributionActiveTrustedKeyGroup.fromMap(Map<String, dynamic> map) {
    return MultitenantDistributionActiveTrustedKeyGroup(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      items: (() { final guardedValue = map['items']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MultitenantDistributionActiveTrustedKeyGroupItem>(guardedValue, (value) => MultitenantDistributionActiveTrustedKeyGroupItem.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
