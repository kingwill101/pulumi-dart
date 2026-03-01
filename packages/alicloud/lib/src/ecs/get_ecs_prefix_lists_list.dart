// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ecs_prefix_lists_list_entry.dart';

class GetEcsPrefixListsList {
  /// The address family of the prefix list. Valid values:`IPv4`,`IPv6`.
  final String addressFamily;
  /// The amount of associated resources.
  final int associationCount;
  /// The time when the prefix list was created.
  final String createTime;
  /// The description of the prefix list.
  final String description;
  final List<GetEcsPrefixListsListEntry> entries;
  /// The ID of the prefix list.
  final String id;
  /// The maximum number of entries that the prefix list supports.
  final int maxEntries;
  /// The ID of the prefix list.
  final String prefixListId;
  /// The name of the prefix list.
  final String prefixListName;

  /// Creates a new [GetEcsPrefixListsList].
  /// [addressFamily] The address family of the prefix list. Valid values:`IPv4`,`IPv6`.
  /// [associationCount] The amount of associated resources.
  /// [createTime] The time when the prefix list was created.
  /// [description] The description of the prefix list.
  /// [entries] Required.
  /// [id] The ID of the prefix list.
  /// [maxEntries] The maximum number of entries that the prefix list supports.
  /// [prefixListId] The ID of the prefix list.
  /// [prefixListName] The name of the prefix list.
  GetEcsPrefixListsList({
    required this.addressFamily,
    required this.associationCount,
    required this.createTime,
    required this.description,
    required this.entries,
    required this.id,
    required this.maxEntries,
    required this.prefixListId,
    required this.prefixListName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressFamily': addressFamily,
      'associationCount': associationCount,
      'createTime': createTime,
      'description': description,
      'entries': pulumi.Input.encodeList<GetEcsPrefixListsListEntry, Map<String, dynamic>>(entries, (value) => value.toMap()),
      'id': id,
      'maxEntries': maxEntries,
      'prefixListId': prefixListId,
      'prefixListName': prefixListName,
    };
  }

  factory GetEcsPrefixListsList.fromMap(Map<String, dynamic> map) {
    return GetEcsPrefixListsList(
      addressFamily: map['addressFamily'] as String,
      associationCount: map['associationCount'] as int,
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      entries: pulumi.Input.decodeList<GetEcsPrefixListsListEntry>(map['entries'], (value) => GetEcsPrefixListsListEntry.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      maxEntries: map['maxEntries'] as int,
      prefixListId: map['prefixListId'] as String,
      prefixListName: map['prefixListName'] as String,
    );
  }
}

