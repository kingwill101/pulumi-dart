// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../managed_prefix_list_entry/managed_prefix_list_entry.dart';

/// The set of arguments for ManagedPrefixList.
class ManagedPrefixListArgs {
  /// Address family (`IPv4` or `IPv6`) of this prefix list.
  final Input<String> addressFamily;

  /// Configuration block for prefix list entry. Detailed below. Different entries may have overlapping CIDR blocks, but a particular CIDR should not be duplicated.
  final Input<List<ManagedPrefixListEntry>>? entries;

  /// Maximum number of entries that this prefix list can contain.
  final Input<int> maxEntries;

  /// Name of this resource. The name must not start with `com.amazonaws`.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Map of tags to assign to this resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  ManagedPrefixListArgs({
    required this.addressFamily,
    this.entries,
    required this.maxEntries,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['addressFamily'] = addressFamily;
    final entriesValue = entries;
    if (entriesValue != null) {
      map['entries'] = Input.mapOptionalInputValue<List<ManagedPrefixListEntry>,
              List<Map<String, dynamic>>>(
          entriesValue,
          (value) =>
              Input.encodeList<ManagedPrefixListEntry, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    map['maxEntries'] = maxEntries;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ManagedPrefixListArgs.fromMap(Map<String, dynamic> map) {
    return ManagedPrefixListArgs(
      addressFamily: Input.asInput<String>(map['addressFamily']),
      entries:
          Input.asOptionalInput<List<ManagedPrefixListEntry>>(map['entries']),
      maxEntries: Input.asInput<int>(map['maxEntries']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
