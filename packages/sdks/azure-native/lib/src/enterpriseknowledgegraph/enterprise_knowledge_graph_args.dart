// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_knowledge_graph_properties.dart';
import 'sku.dart';

/// {@template pulumi_enterpriseknowledgegraph_enterprise_knowledge_graph_args_doc}
/// The set of arguments for EnterpriseKnowledgeGraph.
/// {@endtemplate}
/// {@macro pulumi_enterpriseknowledgegraph_enterprise_knowledge_graph_args_doc}
class EnterpriseKnowledgeGraphArgs {
  /// Specifies the location of the resource.
  final pulumi.Input<String>? location;
  /// The set of properties specific to EnterpriseKnowledgeGraph resource
  final pulumi.Input<EnterpriseKnowledgeGraphProperties>? properties;
  /// The name of the EnterpriseKnowledgeGraph resource group in the user subscription.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the EnterpriseKnowledgeGraph resource.
  final pulumi.Input<String>? resourceName;
  /// Gets or sets the SKU of the resource.
  final pulumi.Input<Sku>? sku;
  /// Contains resource tags defined as key/value pairs.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [EnterpriseKnowledgeGraphArgs].
  /// [location] Specifies the location of the resource.
  /// [properties] The set of properties specific to EnterpriseKnowledgeGraph resource
  /// [resourceGroupName] The name of the EnterpriseKnowledgeGraph resource group in the user subscription.
  /// [resourceName] The name of the EnterpriseKnowledgeGraph resource.
  /// [sku] Gets or sets the SKU of the resource.
  /// [tags] Contains resource tags defined as key/value pairs.
  EnterpriseKnowledgeGraphArgs({
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.resourceName,
    this.sku,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<EnterpriseKnowledgeGraphProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'resourceName': ?resourceName,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory EnterpriseKnowledgeGraphArgs.fromMap(Map<String, dynamic> map) {
    return EnterpriseKnowledgeGraphArgs(
      location: map['location'] == null ? null : (map['location']! as String).input(),
      properties: map['properties'] == null ? null : (EnterpriseKnowledgeGraphProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resourceName: map['resourceName'] == null ? null : (map['resourceName']! as String).input(),
      sku: map['sku'] == null ? null : (Sku.fromMap((map['sku']! as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

