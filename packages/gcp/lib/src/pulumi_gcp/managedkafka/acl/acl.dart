import 'package:pulumi/pulumi.dart' as pulumi;
import '../acl_acl_entry/acl_acl_entry.dart';
import 'acl_args.dart';

/// A Managed Service for Apache Kafka ACL. Apache Kafka is a trademark owned by the Apache Software Foundation.
///
///
///
/// ## Example Usage
///
/// ### Managedkafka Acl Basic
///
///
///
///
/// ## Import
///
/// Acl can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/clusters/{{cluster}}/acls/{{acl_id}}`
///
/// When using the `pulumi import` command, Acl can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:managedkafka/acl:Acl default projects/{{project}}/locations/{{location}}/clusters/{{cluster}}/acls/{{acl_id}}
/// ```
class Acl extends pulumi.CustomResource {
  /// The acl entries that apply to the resource pattern. The maximum number of allowed entries is 100.
  /// Structure is documented below.
  late final pulumi.Output<List<AclAclEntry>> aclEntries;

  /// The ID to use for the acl, which will become the final component of the acl's name. The structure of `aclId` defines the Resource Pattern (resource_type, resource_name, pattern_type) of the acl. `aclId` is structured like one of the following:
  /// For acls on the cluster: `cluster`
  /// For acls on a single resource within the cluster: `topic/{resource_name}` `consumerGroup/{resource_name}` `transactionalId/{resource_name}`
  /// For acls on all resources that match a prefix: `topicPrefixed/{resource_name}` `consumerGroupPrefixed/{resource_name}` `transactionalIdPrefixed/{resource_name}`
  /// For acls on all resources of a given type (i.e. the wildcard literal '*''): `allTopics` (represents `topic/*`) `allConsumerGroups` (represents `consumerGroup/*`) `allTransactionalIds` (represents `transactionalId/*`).
  late final pulumi.Output<String> aclId;

  /// The cluster name.
  late final pulumi.Output<String> cluster;

  /// `etag` is used for concurrency control. An `etag` is returned in the
  /// response to `GetAcl` and `CreateAcl`. Callers are required to put that etag
  /// in the request to `UpdateAcl` to ensure that their change will be applied
  /// to the same version of the acl that exists in the Kafka Cluster.
  /// A terminal 'T' character in the etag indicates that the AclEntries were
  /// truncated due to repeated field limits.
  late final pulumi.Output<String> etag;

  /// ID of the location of the Kafka resource. See https://cloud.google.com/managed-kafka/docs/locations for a list of supported locations.
  late final pulumi.Output<String> location;

  /// The name of the acl. The `ACL_ID` segment is used when connecting directly to the cluster. Must be in the format `projects/PROJECT_ID/locations/LOCATION/clusters/CLUSTER_ID/acls/ACL_ID`.
  late final pulumi.Output<String> name;

  /// The acl pattern type derived from the name. One of: LITERAL, PREFIXED.
  late final pulumi.Output<String> patternType;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The acl resource name derived from the name. For cluster resource_type, this is always "kafka-cluster". Can be the wildcard literal "*".
  late final pulumi.Output<String> resourceName;

  /// The acl resource type derived from the name. One of: CLUSTER, TOPIC, GROUP, TRANSACTIONAL_ID.
  late final pulumi.Output<String> resourceType;

  Acl(
    String name, {
    AclArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:managedkafka/acl:Acl',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.aclEntries = registerOutput<List<AclAclEntry>>('aclEntries');
    this.aclId = registerOutput<String>('aclId');
    this.cluster = registerOutput<String>('cluster');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.patternType = registerOutput<String>('patternType');
    this.project = registerOutput<String>('project');
    this.resourceName = registerOutput<String>('resourceName');
    this.resourceType = registerOutput<String>('resourceType');
  }
}
