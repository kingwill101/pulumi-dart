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
      addressFamily: map['addressFamily'] == null ? null : ((map['addressFamily'] as String).input()).input(),
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      entries: map['entries'] == null ? null : ((pulumi.Input.decodeList<ManagedPrefixListEntry>(map['entries']!, (value) => ManagedPrefixListEntry.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      maxEntries: map['maxEntries'] == null ? null : ((map['maxEntries'] as int).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      ownerId: map['ownerId'] == null ? null : ((map['ownerId'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      version: map['version'] == null ? null : ((map['version'] as int).input()).input(),
    );
  }
}

