// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_api_keys_item.dart';

/// Result data returned by getApiKeys.
class GetApiKeysResult {
  /// Amazon Web Services Marketplace customer identifier, when integrating with the Amazon Web Services SaaS Marketplace.
  final String? customerId;
  /// ID of the API Key.
  final String? id;
  final bool? includeValues;
  /// List of objects containing API Key information. See below.
  final List<GetApiKeysItem>? items;
  final String? region;

  /// Creates a new [GetApiKeysResult].
  /// [customerId] Amazon Web Services Marketplace customer identifier, when integrating with the Amazon Web Services SaaS Marketplace.
  /// [id] ID of the API Key.
  /// [includeValues] Optional.
  /// [items] List of objects containing API Key information. See below.
  /// [region] Optional.
  const GetApiKeysResult({
    this.customerId,
    this.id,
    this.includeValues,
    this.items,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerId': ?customerId,
      'id': ?id,
      'includeValues': ?includeValues,
      'items': ?(() { final guardedValue = items; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetApiKeysItem, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'region': ?region,
    };
  }

  factory GetApiKeysResult.fromMap(Map<String, dynamic> map) {
    return GetApiKeysResult(
      customerId: (() { final guardedValue = map['customerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      includeValues: (() { final guardedValue = map['includeValues']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      items: (() { final guardedValue = map['items']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetApiKeysItem>(guardedValue, (value) => GetApiKeysItem.fromMap((value as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
