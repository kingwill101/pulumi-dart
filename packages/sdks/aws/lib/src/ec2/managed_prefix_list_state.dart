// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_prefix_list_entry.dart';

/// Input properties used for looking up and filtering ManagedPrefixList resources.
class ManagedPrefixListState {
  /// Address family (`IPv4` or `IPv6`) of this prefix list.
  final pulumi.Input<String>? addressFamily;
  /// ARN of the prefix list.
  final pulumi.Input<String>? arn;
  /// Configuration block for prefix list entry. Detailed below. Different entries may have overlapping CIDR blocks, but a particular CIDR should not be duplicated.
  final pulumi.Input<List<ManagedPrefixListEntry>>? entries;
  /// Maximum number of entries that this prefix list can contain.
  final pulumi.Input<int>? maxEntries;
  /// Name of this resource. The name must not start with `com.amazonaws`.
  final pulumi.Input<String>? name;
  /// ID of the AWS account that owns this prefix list.
  final pulumi.Input<String>? ownerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags to assign to this resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Latest version of this prefix list.
  final pulumi.Input<int>? version;

  /// Creates a new [ManagedPrefixListState].
  /// [addressFamily] Address family (`IPv4` or `IPv6`) of this prefix list.
  /// [arn] ARN of the prefix list.
  /// [entries] Configuration block for prefix list entry. Detailed below. Different entries may have overlapping CIDR blocks, but a particular CIDR should not be duplicated.
  /// [maxEntries] Maximum number of entries that this prefix list can contain.
  /// [name] Name of this resource. The name must not start with `com.amazonaws`.
  /// [ownerId] ID of the AWS account that owns this prefix list.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to this resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [version] Latest version of this prefix list.
  ManagedPrefixListState({
    this.addressFamily,
    this.arn,
    this.entries,
    this.maxEntries,
    this.name,
    this.ownerId,
    this.region,
    this.tags,
    this.tagsAll,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressFamily': ?addressFamily,
      'arn': ?arn,
      'entries': ?pulumi.Input.mapOptionalInputValue<List<ManagedPrefixListEntry>, List<Map<String, dynamic>>>(entries, (value) => pulumi.Input.encodeList<ManagedPrefixListEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maxEntries': ?maxEntries,
      'name': ?name,
      'ownerId': ?ownerId,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'version': ?version,
    };
  }

  factory ManagedPrefixListState.fromMap(Map<String, dynamic> map) {
    return ManagedPrefixListState(
      addressFamily: (() { final guardedValue = map['addressFamily']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entries: (() { final guardedValue = map['entries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedPrefixListEntry>(guardedValue, (value) => ManagedPrefixListEntry.fromMap((value as Map).cast<String, dynamic>()))); })(),
      maxEntries: (() { final guardedValue = map['maxEntries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

