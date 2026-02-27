// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../acl_acl_entry/acl_acl_entry.dart';

/// The set of arguments for Acl.
class AclArgs {
  /// The acl entries that apply to the resource pattern. The maximum number of allowed entries is 100.
  /// Structure is documented below.
  final pulumi.Input<List<AclAclEntry>> aclEntries;

  /// The ID to use for the acl, which will become the final component of the acl's name. The structure of `aclId` defines the Resource Pattern (resource_type, resource_name, pattern_type) of the acl. `aclId` is structured like one of the following:
  /// For acls on the cluster: `cluster`
  /// For acls on a single resource within the cluster: `topic/{resource_name}` `consumerGroup/{resource_name}` `transactionalId/{resource_name}`
  /// For acls on all resources that match a prefix: `topicPrefixed/{resource_name}` `consumerGroupPrefixed/{resource_name}` `transactionalIdPrefixed/{resource_name}`
  /// For acls on all resources of a given type (i.e. the wildcard literal '*''): `allTopics` (represents `topic/*`) `allConsumerGroups` (represents `consumerGroup/*`) `allTransactionalIds` (represents `transactionalId/*`).
  final pulumi.Input<String> aclId;

  /// The cluster name.
  final pulumi.Input<String> cluster;

  /// ID of the location of the Kafka resource. See https://cloud.google.com/managed-kafka/docs/locations for a list of supported locations.
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  AclArgs({
    required this.aclEntries,
    required this.aclId,
    required this.cluster,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['aclEntries'] = pulumi.Input.mapInputValue<List<AclAclEntry>,
            List<Map<String, dynamic>>>(
        aclEntries,
        (value) => pulumi.Input.encodeList<AclAclEntry, Map<String, dynamic>>(
            value, (value) => value.toMap()));
    map['aclId'] = aclId;
    map['cluster'] = cluster;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory AclArgs.fromMap(Map<String, dynamic> map) {
    return AclArgs(
      aclEntries: pulumi.Input.asInput<List<AclAclEntry>>(map['aclEntries']),
      aclId: pulumi.Input.asInput<String>(map['aclId']),
      cluster: pulumi.Input.asInput<String>(map['cluster']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
