// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_prefix_lists_list_entry.dart';

class GetPrefixListsList {
  /// The time when the prefix list was created.
  final String createTime;
  /// The CIDR address block list of the prefix list.
  final List<GetPrefixListsListEntry> entrys;
  /// The ID of the Prefix List.
  final String id;
  /// The IP version of the prefix list.
  final String ipVersion;
  /// The maximum number of entries for CIDR address blocks in the prefix list.
  final int maxEntries;
  /// The description of the prefix list.
  final String prefixListDescription;
  /// The ID of the query Prefix List.
  final String prefixListId;
  /// The name of the prefix list.
  final String prefixListName;
  /// The share type of the prefix list.
  final String shareType;

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
      'entrys': pulumi.Input.encodeList<GetPrefixListsListEntry, Map<String, dynamic>>(entrys, (value) => value.toMap()),
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
      createTime: map['createTime'] as String,
      entrys: pulumi.Input.decodeList<GetPrefixListsListEntry>(map['entrys'], (value) => GetPrefixListsListEntry.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ipVersion: map['ipVersion'] as String,
      maxEntries: map['maxEntries'] as int,
      prefixListDescription: map['prefixListDescription'] as String,
      prefixListId: map['prefixListId'] as String,
      prefixListName: map['prefixListName'] as String,
      shareType: map['shareType'] as String,
    );
  }
}

