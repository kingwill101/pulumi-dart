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
    pulumi.Output<String>? addressFamily,
    pulumi.Output<String>? arn,
    pulumi.Output<List<ManagedPrefixListEntry>>? entries,
    pulumi.Output<int>? maxEntries,
    pulumi.Output<String>? name,
    pulumi.Output<String>? ownerId,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<int>? version,
  }) :
      addressFamily = pulumi.Input.asOptionalInput<String>(addressFamily),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      entries = pulumi.Input.asOptionalInput<List<ManagedPrefixListEntry>>(entries),
      maxEntries = pulumi.Input.asOptionalInput<int>(maxEntries),
      name = pulumi.Input.asOptionalInput<String>(name),
      ownerId = pulumi.Input.asOptionalInput<String>(ownerId),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      version = pulumi.Input.asOptionalInput<int>(version);

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
      addressFamily: map['addressFamily'] == null ? null : pulumi.Output.create<String>(map['addressFamily'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      entries: map['entries'] == null ? null : pulumi.Output.create<List<ManagedPrefixListEntry>>(pulumi.Input.decodeList<ManagedPrefixListEntry>(map['entries'], (value) => ManagedPrefixListEntry.fromMap((value as Map).cast<String, dynamic>()))),
      maxEntries: map['maxEntries'] == null ? null : pulumi.Output.create<int>(map['maxEntries'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      ownerId: map['ownerId'] == null ? null : pulumi.Output.create<String>(map['ownerId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      version: map['version'] == null ? null : pulumi.Output.create<int>(map['version'] as int),
    );
  }
}

