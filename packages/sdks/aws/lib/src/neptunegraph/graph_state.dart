// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'graph_timeouts.dart';
import 'graph_vector_search_configuration.dart';

/// Input properties used for looking up and filtering Graph resources.
class GraphState {
  /// (String) Graph resource ARN
  final pulumi.Input<String?>? arn;
  /// Value that indicates whether the Graph has deletion protection enabled. The graph can't be deleted when deletion protection is enabled.
  final pulumi.Input<bool?>? deletionProtection;
  /// (String) The connection endpoint for the graph. For example: `g-12a3bcdef4.us-east-1.neptune-graph.amazonaws.com`
  final pulumi.Input<String?>? endpoint;
  /// Contains a user-supplied name for the Graph. If omitted, Terraform will assign a random, unique identifier.
  final pulumi.Input<String?>? graphName;
  /// Allows user to specify name prefix and have remainder of name automatically generated.
  final pulumi.Input<String?>? graphNamePrefix;
  /// The ARN for the KMS encryption key. By Default, Neptune Analytics will use an AWS provided key ("AWS_OWNED_KEY"). This parameter is used if you want to encrypt the graph using a KMS Customer Managed Key (CMK).
  final pulumi.Input<String?>? kmsKeyIdentifier;
  /// The provisioned memory-optimized Neptune Capacity Units (m-NCUs) to use for the graph.
  ///
  /// The following arguments are optional:
  final pulumi.Input<int?>? provisionedMemory;
  /// Specifies whether the Graph can be reached over the internet. Access to all graphs requires IAM authentication.  When the Graph is publicly reachable, its DNS endpoint resolves to the public IP address from the internet.  When the Graph isn't publicly reachable, you need to create a PrivateGraphEndpoint in a given VPC to ensure the DNS name resolves to a private IP address that is reachable from the VPC.
  final pulumi.Input<bool?>? publicConnectivity;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Specifies the number of replicas you want when finished. All replicas will be provisioned in different availability zones.  Replica Count should always be less than or equal to 2.
  final pulumi.Input<int?>? replicaCount;
  /// Key-value tags for the graph. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  final pulumi.Input<GraphTimeouts?>? timeouts;
  /// Vector Search Configuration (see below for nested schema of vector_search_configuration)
  final pulumi.Input<GraphVectorSearchConfiguration?>? vectorSearchConfiguration;

  /// Creates a new [GraphState].
  /// [arn] (String) Graph resource ARN
  /// [deletionProtection] Value that indicates whether the Graph has deletion protection enabled. The graph can't be deleted when deletion protection is enabled.
  /// [endpoint] (String) The connection endpoint for the graph. For example: `g-12a3bcdef4.us-east-1.neptune-graph.amazonaws.com`
  /// [graphName] Contains a user-supplied name for the Graph. If omitted, Terraform will assign a random, unique identifier.
  /// [graphNamePrefix] Allows user to specify name prefix and have remainder of name automatically generated.
  /// [kmsKeyIdentifier] The ARN for the KMS encryption key. By Default, Neptune Analytics will use an AWS provided key ("AWS_OWNED_KEY"). This parameter is used if you want to encrypt the graph using a KMS Customer Managed Key (CMK).
  /// [provisionedMemory] The provisioned memory-optimized Neptune Capacity Units (m-NCUs) to use for the graph.
  /// [publicConnectivity] Specifies whether the Graph can be reached over the internet. Access to all graphs requires IAM authentication.  When the Graph is publicly reachable, its DNS endpoint resolves to the public IP address from the internet.  When the Graph isn't publicly reachable, you need to create a PrivateGraphEndpoint in a given VPC to ensure the DNS name resolves to a private IP address that is reachable from the VPC.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [replicaCount] Specifies the number of replicas you want when finished. All replicas will be provisioned in different availability zones.  Replica Count should always be less than or equal to 2.
  /// [tags] Key-value tags for the graph. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [timeouts] Optional.
  /// [vectorSearchConfiguration] Vector Search Configuration (see below for nested schema of vector_search_configuration)
  const GraphState({
    this.arn,
    this.deletionProtection,
    this.endpoint,
    this.graphName,
    this.graphNamePrefix,
    this.kmsKeyIdentifier,
    this.provisionedMemory,
    this.publicConnectivity,
    this.region,
    this.replicaCount,
    this.tags,
    this.tagsAll,
    this.timeouts,
    this.vectorSearchConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'deletionProtection': ?deletionProtection,
      'endpoint': ?endpoint,
      'graphName': ?graphName,
      'graphNamePrefix': ?graphNamePrefix,
      'kmsKeyIdentifier': ?kmsKeyIdentifier,
      'provisionedMemory': ?provisionedMemory,
      'publicConnectivity': ?publicConnectivity,
      'region': ?region,
      'replicaCount': ?replicaCount,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<GraphTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'vectorSearchConfiguration': ?pulumi.Input.mapOptionalInputValue<GraphVectorSearchConfiguration, Map<String, dynamic>>(vectorSearchConfiguration, (value) => value.toMap()),
    };
  }

  factory GraphState.fromMap(Map<String, dynamic> map) {
    return GraphState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      graphName: (() { final guardedValue = map['graphName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      graphNamePrefix: (() { final guardedValue = map['graphNamePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyIdentifier: (() { final guardedValue = map['kmsKeyIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisionedMemory: (() { final guardedValue = map['provisionedMemory']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      publicConnectivity: (() { final guardedValue = map['publicConnectivity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicaCount: (() { final guardedValue = map['replicaCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GraphTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vectorSearchConfiguration: (() { final guardedValue = map['vectorSearchConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GraphVectorSearchConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
