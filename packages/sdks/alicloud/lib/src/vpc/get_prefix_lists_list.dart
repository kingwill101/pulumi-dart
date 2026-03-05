// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_prefix_lists_list_entry.dart';

class GetPrefixListsList {
  /// The time when the prefix list was created.
  final pulumi.Input<String> createTime;
  /// The CIDR address block list of the prefix list.
  final pulumi.Input<List<GetPrefixListsListEntry>> entrys;
  /// The ID of the Prefix List.
  final pulumi.Input<String> id;
  /// The IP version of the prefix list.
  final pulumi.Input<String> ipVersion;
  /// The maximum number of entries for CIDR address blocks in the prefix list.
  final pulumi.Input<int> maxEntries;
  /// The description of the prefix list.
  final pulumi.Input<String> prefixListDescription;
  /// The ID of the query Prefix List.
  final pulumi.Input<String> prefixListId;
  /// The name of the prefix list.
  final pulumi.Input<String> prefixListName;
  /// The share type of the prefix list.
  final pulumi.Input<String> shareType;

  /// Creates a new [GetPrefixListsList].
  /// [createTime] The time when the prefix list was created.
  /// [entrys] The CIDR address block list of the prefix list.
  /// [id] The ID of the Prefix List.
  /// [ipVersion] The IP version of the prefix list.
  /// [maxEntries] The maximum number of entries for CIDR address blocks in the prefix list.
  /// [prefixListDescription] The description of the prefix list.
  /// [prefixListId] The ID of the query Prefix List.
  /// [prefixListName] The name of the prefix list.
  /// [shareType] The share type of the prefix list.
  GetPrefixListsList({
    required this.createTime,
    required this.entrys,
    required this.id,
    required this.ipVersion,
    required this.maxEntries,
    required this.prefixListDescription,
    required this.prefixListId,
    required this.prefixListName,
    required this.shareType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'entrys': pulumi.Input.mapInputValue<List<GetPrefixListsListEntry>, List<Map<String, dynamic>>>(entrys, (value) => pulumi.Input.encodeList<GetPrefixListsListEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': id,
      'ipVersion': ipVersion,
      'maxEntries': maxEntries,
      'prefixListDescription': prefixListDescription,
      'prefixListId': prefixListId,
      'prefixListName': prefixListName,
      'shareType': shareType,
    };
  }

  factory GetPrefixListsList.fromMap(Map<String, dynamic> map) {
    return GetPrefixListsList(
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      entrys: pulumi.Input.fromValue(pulumi.Input.decodeList<GetPrefixListsListEntry>(map['entrys']!, (value) => GetPrefixListsListEntry.fromMap((value as Map).cast<String, dynamic>()))),
      id: pulumi.Input.fromValue(map['id'] as String),
      ipVersion: pulumi.Input.fromValue(map['ipVersion'] as String),
      maxEntries: pulumi.Input.fromValue(map['maxEntries'] as int),
      prefixListDescription: pulumi.Input.fromValue(map['prefixListDescription'] as String),
      prefixListId: pulumi.Input.fromValue(map['prefixListId'] as String),
      prefixListName: pulumi.Input.fromValue(map['prefixListName'] as String),
      shareType: pulumi.Input.fromValue(map['shareType'] as String),
    );
  }
}

