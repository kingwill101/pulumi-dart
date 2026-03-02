// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'graph_timeouts.dart';
import 'graph_vector_search_configuration.dart';

/// {@template pulumi_neptunegraph_graph_graph_args_doc}
/// The set of arguments for Graph.
/// {@endtemplate}
/// {@macro pulumi_neptunegraph_graph_graph_args_doc}
class GraphArgs {
  /// Value that indicates whether the Graph has deletion protection enabled. The graph can't be deleted when deletion protection is enabled.
  final pulumi.Input<bool>? deletionProtection;
  /// Contains a user-supplied name for the Graph. If omitted, Terraform will assign a random, unique identifier.
  final pulumi.Input<String>? graphName;
  /// Allows user to specify name prefix and have remainder of name automatically generated.
  final pulumi.Input<String>? graphNamePrefix;
  /// The ARN for the KMS encryption key. By Default, Neptune Analytics will use an AWS provided key ("AWS_OWNED_KEY"). This parameter is used if you want to encrypt the graph using a KMS Customer Managed Key (CMK).
  final pulumi.Input<String>? kmsKeyIdentifier;
  /// The provisioned memory-optimized Neptune Capacity Units (m-NCUs) to use for the graph.
  ///
  /// The following arguments are optional:
  final pulumi.Input<int> provisionedMemory;
  /// Specifies whether the Graph can be reached over the internet. Access to all graphs requires IAM authentication.  When the Graph is publicly reachable, its Domain Name System (DNS) endpoint resolves to the public IP address from the internet.  When the Graph isn't publicly reachable, you need to create a PrivateGraphEndpoint in a given VPC to ensure the DNS name resolves to a private IP address that is reachable from the VPC.
  final pulumi.Input<bool>? publicConnectivity;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Specifies the number of replicas you want when finished. All replicas will be provisioned in different availability zones.  Replica Count should always be less than or equal to 2.
  final pulumi.Input<int>? replicaCount;
  /// Key-value tags for the graph. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<GraphTimeouts>? timeouts;
  /// Vector Search Configuration (see below for nested schema of vector_search_configuration)
  final pulumi.Input<GraphVectorSearchConfiguration>? vectorSearchConfiguration;

  /// Creates a new [GraphArgs].
  /// [deletionProtection] Value that indicates whether the Graph has deletion protection enabled. The graph can't be deleted when deletion protection is enabled.
  /// [graphName] Contains a user-supplied name for the Graph. If omitted, Terraform will assign a random, unique identifier.
  /// [graphNamePrefix] Allows user to specify name prefix and have remainder of name automatically generated.
  /// [kmsKeyIdentifier] The ARN for the KMS encryption key. By Default, Neptune Analytics will use an AWS provided key ("AWS_OWNED_KEY"). This parameter is used if you want to encrypt the graph using a KMS Customer Managed Key (CMK).
  /// [provisionedMemory] The provisioned memory-optimized Neptune Capacity Units (m-NCUs) to use for the graph.
  /// [publicConnectivity] Specifies whether the Graph can be reached over the internet. Access to all graphs requires IAM authentication.  When the Graph is publicly reachable, its Domain Name System (DNS) endpoint resolves to the public IP address from the internet.  When the Graph isn't publicly reachable, you need to create a PrivateGraphEndpoint in a given VPC to ensure the DNS name resolves to a private IP address that is reachable from the VPC.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [replicaCount] Specifies the number of replicas you want when finished. All replicas will be provisioned in different availability zones.  Replica Count should always be less than or equal to 2.
  /// [tags] Key-value tags for the graph. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  /// [vectorSearchConfiguration] Vector Search Configuration (see below for nested schema of vector_search_configuration)
  GraphArgs({
    this.deletionProtection,
    this.graphName,
    this.graphNamePrefix,
    this.kmsKeyIdentifier,
    required this.provisionedMemory,
    this.publicConnectivity,
    this.region,
    this.replicaCount,
    this.tags,
    this.timeouts,
    this.vectorSearchConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionProtection': ?deletionProtection,
      'graphName': ?graphName,
      'graphNamePrefix': ?graphNamePrefix,
      'kmsKeyIdentifier': ?kmsKeyIdentifier,
      'provisionedMemory': provisionedMemory,
      'publicConnectivity': ?publicConnectivity,
      'region': ?region,
      'replicaCount': ?replicaCount,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<GraphTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'vectorSearchConfiguration': ?pulumi.Input.mapOptionalInputValue<GraphVectorSearchConfiguration, Map<String, dynamic>>(vectorSearchConfiguration, (value) => value.toMap()),
    };
  }

  factory GraphArgs.fromMap(Map<String, dynamic> map) {
    return GraphArgs(
      deletionProtection: map['deletionProtection'] == null ? null : (map['deletionProtection'] as bool).input(),
      graphName: map['graphName'] == null ? null : (map['graphName'] as String).input(),
      graphNamePrefix: map['graphNamePrefix'] == null ? null : (map['graphNamePrefix'] as String).input(),
      kmsKeyIdentifier: map['kmsKeyIdentifier'] == null ? null : (map['kmsKeyIdentifier'] as String).input(),
      provisionedMemory: (map['provisionedMemory'] as int).input(),
      publicConnectivity: map['publicConnectivity'] == null ? null : (map['publicConnectivity'] as bool).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      replicaCount: map['replicaCount'] == null ? null : (map['replicaCount'] as int).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      timeouts: map['timeouts'] == null ? null : (GraphTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())).input(),
      vectorSearchConfiguration: map['vectorSearchConfiguration'] == null ? null : (GraphVectorSearchConfiguration.fromMap((map['vectorSearchConfiguration'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

