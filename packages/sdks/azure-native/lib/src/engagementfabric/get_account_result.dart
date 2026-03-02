// ignore_for_file: unused_element, unnecessary_cast

import 'skuresponse.dart';

/// Result data returned by getAccount.
class GetAccountResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The ID of the resource
  final String id;
  /// The location of the resource
  final String location;
  /// The name of the resource
  final String name;
  /// The SKU of the resource
  final SKUResponse sku;
  /// The tags of the resource
  final Map<String, String>? tags;
  /// The fully qualified type of the resource
  final String type;

  /// Creates a new [GetAccountResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The ID of the resource
  /// [location] The location of the resource
  /// [name] The name of the resource
  /// [sku] The SKU of the resource
  /// [tags] The tags of the resource
  /// [type] The fully qualified type of the resource
  GetAccountResult({
    required this.azureApiVersion,
    required this.id,
    required this.location,
    required this.name,
    required this.sku,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'location': location,
      'name': name,
      'sku': sku.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetAccountResult.fromMap(Map<String, dynamic> map) {
    return GetAccountResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      sku: SKUResponse.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

