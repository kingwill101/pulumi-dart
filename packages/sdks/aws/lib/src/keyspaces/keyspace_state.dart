// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'keyspace_replication_specification.dart';

/// Input properties used for looking up and filtering Keyspace resources.
class KeyspaceState {
  /// The ARN of the keyspace.
  final pulumi.Input<String>? arn;
  /// The name of the keyspace to be created.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The replication specification of the keyspace.
  final pulumi.Input<KeyspaceReplicationSpecification>? replicationSpecification;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [KeyspaceState].
  /// [arn] The ARN of the keyspace.
  /// [name] The name of the keyspace to be created.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [replicationSpecification] The replication specification of the keyspace.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  KeyspaceState({
    this.arn,
    this.name,
    this.region,
    this.replicationSpecification,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'name': ?name,
      'region': ?region,
      'replicationSpecification': ?pulumi.Input.mapOptionalInputValue<KeyspaceReplicationSpecification, Map<String, dynamic>>(replicationSpecification, (value) => value.toMap()),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory KeyspaceState.fromMap(Map<String, dynamic> map) {
    return KeyspaceState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      replicationSpecification: map['replicationSpecification'] == null ? null : ((KeyspaceReplicationSpecification.fromMap((map['replicationSpecification']! as Map).cast<String, dynamic>())).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

