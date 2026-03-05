// ignore_for_file: unused_element, unnecessary_cast

import 'enterprise_knowledge_graph_properties_response.dart';
import 'sku_response.dart';

/// Result data returned by getEnterpriseKnowledgeGraph.
class GetEnterpriseKnowledgeGraphResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Specifies the resource ID.
  final String id;
  /// Specifies the location of the resource.
  final String? location;
  /// Specifies the name of the resource.
  final String name;
  /// The set of properties specific to EnterpriseKnowledgeGraph resource
  final EnterpriseKnowledgeGraphPropertiesResponse properties;
  /// Gets or sets the SKU of the resource.
  final SkuResponse? sku;
  /// Contains resource tags defined as key/value pairs.
  final Map<String, String>? tags;
  /// Specifies the type of the resource.
  final String type;

  /// Creates a new [GetEnterpriseKnowledgeGraphResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Specifies the resource ID.
  /// [location] Specifies the location of the resource.
  /// [name] Specifies the name of the resource.
  /// [properties] The set of properties specific to EnterpriseKnowledgeGraph resource
  /// [sku] Gets or sets the SKU of the resource.
  /// [tags] Contains resource tags defined as key/value pairs.
  /// [type] Specifies the type of the resource.
  GetEnterpriseKnowledgeGraphResult({
    required this.azureApiVersion,
    required this.id,
    this.location,
    required this.name,
    required this.properties,
    this.sku,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'location': ?location,
      'name': name,
      'properties': properties.toMap(),
      'sku': ?sku?.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetEnterpriseKnowledgeGraphResult.fromMap(Map<String, dynamic> map) {
    return GetEnterpriseKnowledgeGraphResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      properties: EnterpriseKnowledgeGraphPropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

