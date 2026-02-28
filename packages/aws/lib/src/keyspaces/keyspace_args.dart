// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'keyspace_replication_specification.dart';

/// {@template pulumi_keyspaces_keyspace_keyspace_args_doc}
/// The set of arguments for Keyspace.
/// {@endtemplate}
/// {@macro pulumi_keyspaces_keyspace_keyspace_args_doc}
class KeyspaceArgs {
  /// The name of the keyspace to be created.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The replication specification of the keyspace.
  final pulumi.Input<KeyspaceReplicationSpecification>?
      replicationSpecification;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [KeyspaceArgs].
  /// [name] The name of the keyspace to be created.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [replicationSpecification] The replication specification of the keyspace.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  KeyspaceArgs({
    String? name,
    String? region,
    KeyspaceReplicationSpecification? replicationSpecification,
    Map<String, String>? tags,
  })  : name = pulumi.Input.asOptionalInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region),
        replicationSpecification =
            pulumi.Input.asOptionalInput<KeyspaceReplicationSpecification>(
                replicationSpecification),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      map['replicationSpecification'] = pulumi.Input.mapOptionalInputValue<
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
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      replicationSpecification: map['replicationSpecification'] == null
          ? null
          : KeyspaceReplicationSpecification.fromMap(
              (map['replicationSpecification'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
