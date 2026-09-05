// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_prefix_list_entry.dart';

/// {@template pulumi_ec2_managed_prefix_list_managed_prefix_list_args_doc}
/// The set of arguments for ManagedPrefixList.
/// {@endtemplate}
/// {@macro pulumi_ec2_managed_prefix_list_managed_prefix_list_args_doc}
class ManagedPrefixListArgs {
  /// Address family (`IPv4` or `IPv6`) of this prefix list.
  final pulumi.Input<String> addressFamily;
  /// Configuration block for prefix list entry. Detailed below. Different entries may have overlapping CIDR blocks, but a particular CIDR should not be duplicated.
  final pulumi.Input<List<ManagedPrefixListEntry>?>? entries;
  /// Maximum number of entries that this prefix list can contain.
  final pulumi.Input<int> maxEntries;
  /// Name of this resource. The name must not start with `com.amazonaws`.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Map of tags to assign to this resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [ManagedPrefixListArgs].
  /// [addressFamily] Address family (`IPv4` or `IPv6`) of this prefix list.
  /// [entries] Configuration block for prefix list entry. Detailed below. Different entries may have overlapping CIDR blocks, but a particular CIDR should not be duplicated.
  /// [maxEntries] Maximum number of entries that this prefix list can contain.
  /// [name] Name of this resource. The name must not start with `com.amazonaws`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to this resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const ManagedPrefixListArgs({
    required this.addressFamily,
    this.entries,
    required this.maxEntries,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressFamily': addressFamily,
      'entries': ?pulumi.Input.mapOptionalInputValue<List<ManagedPrefixListEntry>, List<Map<String, dynamic>>>(entries, (value) => pulumi.Input.encodeList<ManagedPrefixListEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maxEntries': maxEntries,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory ManagedPrefixListArgs.fromMap(Map<String, dynamic> map) {
    return ManagedPrefixListArgs(
      addressFamily: pulumi.Input.fromValue(map['addressFamily'] as String),
      entries: (() { final guardedValue = map['entries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedPrefixListEntry>(guardedValue, (value) => ManagedPrefixListEntry.fromMap((value as Map).cast<String, dynamic>()))); })(),
      maxEntries: pulumi.Input.fromValue((map['maxEntries'] as num).toInt()),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
