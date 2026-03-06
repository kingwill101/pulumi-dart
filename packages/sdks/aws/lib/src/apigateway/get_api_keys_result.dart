// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_api_keys_item.dart';

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

  /// Creates a new [GetApiKeysResult].
  /// [customerId] Amazon Web Services Marketplace customer identifier, when integrating with the Amazon Web Services SaaS Marketplace.
  /// [id] ID of the API Key.
  /// [includeValues] Optional.
  /// [items] List of objects containing API Key information. See below.
  /// [region] Required.
  const GetApiKeysResult({
    this.customerId,
    required this.id,
    this.includeValues,
    required this.items,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerId': ?customerId,
      'id': id,
      'includeValues': ?includeValues,
      'items': pulumi.Input.encodeList<GetApiKeysItem, Map<String, dynamic>>(items, (value) => value.toMap()),
      'region': region,
    };
  }

  factory GetApiKeysResult.fromMap(Map<String, dynamic> map) {
    return GetApiKeysResult(
      customerId: (() { final guardedValue = map['customerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      includeValues: (() { final guardedValue = map['includeValues']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      items: pulumi.Input.decodeList<GetApiKeysItem>(map['items']!, (value) => GetApiKeysItem.fromMap((value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
    );
  }
}

