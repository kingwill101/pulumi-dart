// ignore_for_file: unused_element, unnecessary_cast

import 'skuresponse.dart';

/// Result data returned by getAccount.
class GetAccountResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The ID of the resource
  final String? id;
  /// The location of the resource
  final String? location;
  /// The name of the resource
  final String? name;
  /// The SKU of the resource
  final SKUResponse? sku;
  /// The tags of the resource
  final Map<String, String>? tags;
  /// The fully qualified type of the resource
  final String? type;

  /// Creates a new [GetAccountResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The ID of the resource
  /// [location] The location of the resource
  /// [name] The name of the resource
  /// [sku] The SKU of the resource
  /// [tags] The tags of the resource
  /// [type] The fully qualified type of the resource
  const GetAccountResult({
    this.azureApiVersion,
    this.id,
    this.location,
    this.name,
    this.sku,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'sku': ?sku?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetAccountResult.fromMap(Map<String, dynamic> map) {
    return GetAccountResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return SKUResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
