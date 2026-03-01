// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resourcegraph_graph_query_args_doc}
/// The set of arguments for GraphQuery.
/// {@endtemplate}
/// {@macro pulumi_resourcegraph_graph_query_args_doc}
class GraphQueryArgs {
  /// The description of a graph query.
  final pulumi.Input<String>? description;
  /// The location of the resource
  final pulumi.Input<String>? location;
  /// KQL query that will be graph.
  final pulumi.Input<String> query;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Graph Query resource.
  final pulumi.Input<String>? resourceName;
  /// Resource tags
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GraphQueryArgs].
  /// [description] The description of a graph query.
  /// [location] The location of the resource
  /// [query] KQL query that will be graph.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the Graph Query resource.
  /// [tags] Resource tags
  GraphQueryArgs({
    String? description,
    String? location,
    required String query,
    required String resourceGroupName,
    String? resourceName,
    Map<String, String>? tags,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      location = pulumi.Input.asOptionalInput<String>(location),
      query = pulumi.Input.asInput<String>(query),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asOptionalInput<String>(resourceName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'location': ?location,
      'query': query,
      'resourceGroupName': resourceGroupName,
      'resourceName': ?resourceName,
      'tags': ?tags,
    };
  }

  factory GraphQueryArgs.fromMap(Map<String, dynamic> map) {
    return GraphQueryArgs(
      description: map['description'] == null ? null : map['description'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      query: map['query'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      resourceName: map['resourceName'] == null ? null : map['resourceName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

