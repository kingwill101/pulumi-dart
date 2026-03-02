// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prefix_list_entry.dart';

/// {@template pulumi_vpc_prefix_list_prefix_list_args_doc}
/// The set of arguments for PrefixList.
/// {@endtemplate}
/// {@macro pulumi_vpc_prefix_list_prefix_list_args_doc}
class PrefixListArgs {
  /// The CIDR address block list of the prefix list.See the following `Block Entrys`.
  final pulumi.Input<List<PrefixListEntry>>? entrys;
  /// The IP version of the prefix list. Value:-**IPV4**:IPv4 version.-**IPV6**:IPv6 version.
  final pulumi.Input<String>? ipVersion;
  /// The maximum number of entries for CIDR address blocks in the prefix list.
  final pulumi.Input<int>? maxEntries;
  /// The description of the prefix list.It must be 2 to 256 characters in length and must start with a letter or Chinese, but cannot start with `http://` or `https://`.
  final pulumi.Input<String>? prefixListDescription;
  /// The name of the prefix list. The name must be 2 to 128 characters in length, and must start with a letter. It can contain digits, periods (.), underscores (_), and hyphens (-).
  final pulumi.Input<String>? prefixListName;
  /// The ID of the resource group to which the PrefixList belongs.
  final pulumi.Input<String>? resourceGroupId;
  /// The tags of PrefixList.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [PrefixListArgs].
  /// [entrys] The CIDR address block list of the prefix list.See the following `Block Entrys`.
  /// [ipVersion] The IP version of the prefix list. Value:-**IPV4**:IPv4 version.-**IPV6**:IPv6 version.
  /// [maxEntries] The maximum number of entries for CIDR address blocks in the prefix list.
  /// [prefixListDescription] The description of the prefix list.It must be 2 to 256 characters in length and must start with a letter or Chinese, but cannot start with `http://` or `https://`.
  /// [prefixListName] The name of the prefix list. The name must be 2 to 128 characters in length, and must start with a letter. It can contain digits, periods (.), underscores (_), and hyphens (-).
  /// [resourceGroupId] The ID of the resource group to which the PrefixList belongs.
  /// [tags] The tags of PrefixList.
  PrefixListArgs({
    this.entrys,
    this.ipVersion,
    this.maxEntries,
    this.prefixListDescription,
    this.prefixListName,
    this.resourceGroupId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entrys': ?pulumi.Input.mapOptionalInputValue<List<PrefixListEntry>, List<Map<String, dynamic>>>(entrys, (value) => pulumi.Input.encodeList<PrefixListEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipVersion': ?ipVersion,
      'maxEntries': ?maxEntries,
      'prefixListDescription': ?prefixListDescription,
      'prefixListName': ?prefixListName,
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
    };
  }

  factory PrefixListArgs.fromMap(Map<String, dynamic> map) {
    return PrefixListArgs(
      entrys: map['entrys'] == null ? null : (pulumi.Input.decodeList<PrefixListEntry>(map['entrys'], (value) => PrefixListEntry.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ipVersion: map['ipVersion'] == null ? null : (map['ipVersion'] as String).input(),
      maxEntries: map['maxEntries'] == null ? null : (map['maxEntries'] as int).input(),
      prefixListDescription: map['prefixListDescription'] == null ? null : (map['prefixListDescription'] as String).input(),
      prefixListName: map['prefixListName'] == null ? null : (map['prefixListName'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

