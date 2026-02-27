// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_api_keys_item/get_api_keys_item.dart';

/// Result data returned by getApiKeys.
class GetApiKeysResult {
  /// Amazon Web Services Marketplace customer identifier, when integrating with the Amazon Web Services SaaS Marketplace.
  final String? customerId;

  /// ID of the API Key.
  final String id;
  final bool? includeValues;

  /// List of objects containing API Key information. See below.
  final List<GetApiKeysItem> items;
  final String region;

  GetApiKeysResult({
    this.customerId,
    required this.id,
    this.includeValues,
    required this.items,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customerIdValue = customerId;
    if (customerIdValue != null) {
      map['customerId'] = customerIdValue;
    }
    map['id'] = id;
    final includeValuesValue = includeValues;
    if (includeValuesValue != null) {
      map['includeValues'] = includeValuesValue;
    }
    map['items'] =
        pulumi.Input.encodeList<GetApiKeysItem, Map<String, dynamic>>(
            items, (value) => value.toMap());
    map['region'] = region;
    return map;
  }

  factory GetApiKeysResult.fromMap(Map<String, dynamic> map) {
    return GetApiKeysResult(
      customerId:
          map['customerId'] == null ? null : map['customerId'] as String,
      id: map['id'] as String,
      includeValues:
          map['includeValues'] == null ? null : map['includeValues'] as bool,
      items: pulumi.Input.decodeList<GetApiKeysItem>(
          map['items'],
          (value) =>
              GetApiKeysItem.fromMap((value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
    );
  }
}
