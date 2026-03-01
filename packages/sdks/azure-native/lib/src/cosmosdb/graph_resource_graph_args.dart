// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'create_update_options.dart';
import 'graph_resource.dart';
import 'managed_service_identity.dart';

/// {@template pulumi_cosmosdb_graph_resource_graph_args_doc}
/// The set of arguments for GraphResourceGraph.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_graph_resource_graph_args_doc}
class GraphResourceGraphArgs {
  /// Cosmos DB database account name.
  final pulumi.Input<String> accountName;
  /// Cosmos DB graph resource name.
  final pulumi.Input<String>? graphName;
  /// Identity for the resource.
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// The location of the resource group to which the resource belongs.
  final pulumi.Input<String>? location;
  /// A key-value pair of options to be applied for the request. This corresponds to the headers sent with the request.
  final pulumi.Input<CreateUpdateOptions>? options;
  /// The standard JSON format of a Graph resource
  final pulumi.Input<GraphResource> resource;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Tags are a list of key-value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater than 128 characters and value no greater than 256 characters. For example, the default experience for a template type is set with "defaultExperience": "Cassandra". Current "defaultExperience" values also include "Table", "Graph", "DocumentDB", and "MongoDB".
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GraphResourceGraphArgs].
  /// [accountName] Cosmos DB database account name.
  /// [graphName] Cosmos DB graph resource name.
  /// [identity] Identity for the resource.
  /// [location] The location of the resource group to which the resource belongs.
  /// [options] A key-value pair of options to be applied for the request. This corresponds to the headers sent with the request.
  /// [resource] The standard JSON format of a Graph resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Tags are a list of key-value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater than 128 characters and value no greater than 256 characters. For example, the default experience for a template type is set with "defaultExperience": "Cassandra". Current "defaultExperience" values also include "Table", "Graph", "DocumentDB", and "MongoDB".
  GraphResourceGraphArgs({
    required pulumi.Output<String> accountName,
    pulumi.Output<String>? graphName,
    pulumi.Output<ManagedServiceIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<CreateUpdateOptions>? options,
    required pulumi.Output<GraphResource> resource,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      graphName = pulumi.Input.asOptionalInput<String>(graphName),
      identity = pulumi.Input.asOptionalInput<ManagedServiceIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      options = pulumi.Input.asOptionalInput<CreateUpdateOptions>(options),
      resource = pulumi.Input.asInput<GraphResource>(resource),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'graphName': ?graphName,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'options': ?pulumi.Input.mapOptionalInputValue<CreateUpdateOptions, Map<String, dynamic>>(options, (value) => value.toMap()),
      'resource': pulumi.Input.mapInputValue<GraphResource, Map<String, dynamic>>(resource, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GraphResourceGraphArgs.fromMap(Map<String, dynamic> map) {
    return GraphResourceGraphArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      graphName: map['graphName'] == null ? null : pulumi.Output.create<String>(map['graphName'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<ManagedServiceIdentity>(ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      options: map['options'] == null ? null : pulumi.Output.create<CreateUpdateOptions>(CreateUpdateOptions.fromMap((map['options'] as Map).cast<String, dynamic>())),
      resource: pulumi.Output.create<GraphResource>(GraphResource.fromMap((map['resource'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

