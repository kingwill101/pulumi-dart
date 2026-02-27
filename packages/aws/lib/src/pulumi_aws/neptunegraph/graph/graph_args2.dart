// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../graph_timeouts/graph_timeouts.dart';
import '../graph_vector_search_configuration/graph_vector_search_configuration.dart';

/// The set of arguments for Graph.
class GraphArgs2 {
  /// Value that indicates whether the Graph has deletion protection enabled. The graph can't be deleted when deletion protection is enabled.
  final Input<bool>? deletionProtection;

  /// Contains a user-supplied name for the Graph. If omitted, Terraform will assign a random, unique identifier.
  final Input<String>? graphName;

  /// Allows user to specify name prefix and have remainder of name automatically generated.
  final Input<String>? graphNamePrefix;

  /// The ARN for the KMS encryption key. By Default, Neptune Analytics will use an AWS provided key ("AWS_OWNED_KEY"). This parameter is used if you want to encrypt the graph using a KMS Customer Managed Key (CMK).
  final Input<String>? kmsKeyIdentifier;

  /// The provisioned memory-optimized Neptune Capacity Units (m-NCUs) to use for the graph.
  ///
  /// The following arguments are optional:
  final Input<int> provisionedMemory;

  /// Specifies whether the Graph can be reached over the internet. Access to all graphs requires IAM authentication.  When the Graph is publicly reachable, its Domain Name System (DNS) endpoint resolves to the public IP address from the internet.  When the Graph isn't publicly reachable, you need to create a PrivateGraphEndpoint in a given VPC to ensure the DNS name resolves to a private IP address that is reachable from the VPC.
  final Input<bool>? publicConnectivity;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Specifies the number of replicas you want when finished. All replicas will be provisioned in different availability zones.  Replica Count should always be less than or equal to 2.
  final Input<int>? replicaCount;

  /// Key-value tags for the graph. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;
  final Input<GraphTimeouts>? timeouts;

  /// Vector Search Configuration (see below for nested schema of vector_search_configuration)
  final Input<GraphVectorSearchConfiguration>? vectorSearchConfiguration;

  GraphArgs2({
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
    final map = <String, dynamic>{};
    final deletionProtectionValue = deletionProtection;
    if (deletionProtectionValue != null) {
      map['deletionProtection'] = deletionProtectionValue;
    }
    final graphNameValue = graphName;
    if (graphNameValue != null) {
      map['graphName'] = graphNameValue;
    }
    final graphNamePrefixValue = graphNamePrefix;
    if (graphNamePrefixValue != null) {
      map['graphNamePrefix'] = graphNamePrefixValue;
    }
    final kmsKeyIdentifierValue = kmsKeyIdentifier;
    if (kmsKeyIdentifierValue != null) {
      map['kmsKeyIdentifier'] = kmsKeyIdentifierValue;
    }
    map['provisionedMemory'] = provisionedMemory;
    final publicConnectivityValue = publicConnectivity;
    if (publicConnectivityValue != null) {
      map['publicConnectivity'] = publicConnectivityValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final replicaCountValue = replicaCount;
    if (replicaCountValue != null) {
      map['replicaCount'] = replicaCountValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] =
          Input.mapOptionalInputValue<GraphTimeouts, Map<String, dynamic>>(
              timeoutsValue, (value) => value.toMap());
    }
    final vectorSearchConfigurationValue = vectorSearchConfiguration;
    if (vectorSearchConfigurationValue != null) {
      map['vectorSearchConfiguration'] = Input.mapOptionalInputValue<
              GraphVectorSearchConfiguration, Map<String, dynamic>>(
          vectorSearchConfigurationValue, (value) => value.toMap());
    }
    return map;
  }

  factory GraphArgs2.fromMap(Map<String, dynamic> map) {
    return GraphArgs2(
      deletionProtection:
          Input.asOptionalInput<bool>(map['deletionProtection']),
      graphName: Input.asOptionalInput<String>(map['graphName']),
      graphNamePrefix: Input.asOptionalInput<String>(map['graphNamePrefix']),
      kmsKeyIdentifier: Input.asOptionalInput<String>(map['kmsKeyIdentifier']),
      provisionedMemory: Input.asInput<int>(map['provisionedMemory']),
      publicConnectivity:
          Input.asOptionalInput<bool>(map['publicConnectivity']),
      region: Input.asOptionalInput<String>(map['region']),
      replicaCount: Input.asOptionalInput<int>(map['replicaCount']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: Input.asOptionalInput<GraphTimeouts>(map['timeouts']),
      vectorSearchConfiguration:
          Input.asOptionalInput<GraphVectorSearchConfiguration>(
              map['vectorSearchConfiguration']),
    );
  }
}
