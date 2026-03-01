// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'distribution_trusted_key_group_item.dart';

class DistributionTrustedKeyGroup {
  /// Whether the distribution is enabled to accept end user requests for content.
  final bool? enabled;
  /// List of nested attributes for each trusted signer
  final List<DistributionTrustedKeyGroupItem>? items;

  /// Creates a new [DistributionTrustedKeyGroup].
  /// [enabled] Whether the distribution is enabled to accept end user requests for content.
  /// [items] List of nested attributes for each trusted signer
  DistributionTrustedKeyGroup({
    this.enabled,
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'items': ?items == null ? null : pulumi.Input.encodeList<DistributionTrustedKeyGroupItem, Map<String, dynamic>>(items!, (value) => value.toMap()),
    };
  }

  factory DistributionTrustedKeyGroup.fromMap(Map<String, dynamic> map) {
    return DistributionTrustedKeyGroup(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      items: map['items'] == null ? null : pulumi.Input.decodeList<DistributionTrustedKeyGroupItem>(map['items'], (value) => DistributionTrustedKeyGroupItem.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

