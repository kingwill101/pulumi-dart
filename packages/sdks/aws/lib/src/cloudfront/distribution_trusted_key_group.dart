// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'distribution_trusted_key_group_item.dart';

class DistributionTrustedKeyGroup {
  /// Whether the distribution is enabled to accept end user requests for content.
  final pulumi.Input<bool?>? enabled;
  /// List of nested attributes for each trusted signer
  final pulumi.Input<List<DistributionTrustedKeyGroupItem>?>? items;

  /// Creates a new [DistributionTrustedKeyGroup].
  /// [enabled] Whether the distribution is enabled to accept end user requests for content.
  /// [items] List of nested attributes for each trusted signer
  const DistributionTrustedKeyGroup({
    this.enabled,
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'items': ?pulumi.Input.mapOptionalInputValue<List<DistributionTrustedKeyGroupItem>, List<Map<String, dynamic>>>(items, (value) => pulumi.Input.encodeList<DistributionTrustedKeyGroupItem, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DistributionTrustedKeyGroup.fromMap(Map<String, dynamic> map) {
    return DistributionTrustedKeyGroup(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      items: (() { final guardedValue = map['items']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DistributionTrustedKeyGroupItem>(guardedValue, (value) => DistributionTrustedKeyGroupItem.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
