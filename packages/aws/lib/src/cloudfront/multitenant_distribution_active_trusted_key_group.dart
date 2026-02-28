// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multitenant_distribution_active_trusted_key_group_item.dart';

class MultitenantDistributionActiveTrustedKeyGroup {
  /// Whether any of the key groups have public keys that CloudFront can use to verify the signatures of signed URLs and signed cookies.
  final bool? enabled;
  /// List of key groups. See Key Group Items below.
  final List<MultitenantDistributionActiveTrustedKeyGroupItem>? items;

  /// Creates a new [MultitenantDistributionActiveTrustedKeyGroup].
  /// [enabled] Whether any of the key groups have public keys that CloudFront can use to verify the signatures of signed URLs and signed cookies.
  /// [items] List of key groups. See Key Group Items below.
  MultitenantDistributionActiveTrustedKeyGroup({
    this.enabled,
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'items': ?items == null ? null : pulumi.Input.encodeList<MultitenantDistributionActiveTrustedKeyGroupItem, Map<String, dynamic>>(items!, (value) => value.toMap()),
    };
  }

  factory MultitenantDistributionActiveTrustedKeyGroup.fromMap(Map<String, dynamic> map) {
    return MultitenantDistributionActiveTrustedKeyGroup(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      items: map['items'] == null ? null : pulumi.Input.decodeList<MultitenantDistributionActiveTrustedKeyGroupItem>(map['items'], (value) => MultitenantDistributionActiveTrustedKeyGroupItem.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

