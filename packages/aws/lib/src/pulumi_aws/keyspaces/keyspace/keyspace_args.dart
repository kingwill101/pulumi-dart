// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../keyspace_replication_specification/keyspace_replication_specification.dart';

/// The set of arguments for Keyspace.
class KeyspaceArgs {
  /// The name of the keyspace to be created.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The replication specification of the keyspace.
  final Input<KeyspaceReplicationSpecification>? replicationSpecification;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  KeyspaceArgs({
    this.name,
    this.region,
    this.replicationSpecification,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final replicationSpecificationValue = replicationSpecification;
    if (replicationSpecificationValue != null) {
      map['replicationSpecification'] = Input.mapOptionalInputValue<
              KeyspaceReplicationSpecification, Map<String, dynamic>>(
          replicationSpecificationValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory KeyspaceArgs.fromMap(Map<String, dynamic> map) {
    return KeyspaceArgs(
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      replicationSpecification:
          Input.asOptionalInput<KeyspaceReplicationSpecification>(
              map['replicationSpecification']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
