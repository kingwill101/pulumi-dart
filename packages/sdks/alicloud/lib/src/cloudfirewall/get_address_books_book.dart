// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_address_books_book_ecs_tag.dart';

class GetAddressBooksBook {
  /// The addresses in the Address Book.
  final List<String> addressLists;
  /// Whether you want to automatically add new matching tags of the ECS IP address to the Address Book.
  final int autoAddTagEcs;
  /// The description of the Address Book.
  final String description;
  /// The logical relation among the ECS tags that to be matchedh.
  final List<GetAddressBooksBookEcsTag> ecsTags;
  /// The name of the Address Book.
  final String groupName;
  /// The type of the Address Book. Valid values: `ip`, `ipv6`, `domain`, `port`, `tag`.
  /// **NOTE:** From version 1.213.1, `group_type` can be set to `ipv6`, `domain`, `port`.
  final String groupType;
  /// The ID of the Address Book.
  final String groupUuid;
  /// The ID of the Address Book.
  final String id;
  /// One or more tags for the relationship between.
  final String tagRelation;

  /// Creates a new [GetAddressBooksBook].
  /// [addressLists] The addresses in the Address Book.
  /// [autoAddTagEcs] Whether you want to automatically add new matching tags of the ECS IP address to the Address Book.
  /// [description] The description of the Address Book.
  /// [ecsTags] The logical relation among the ECS tags that to be matchedh.
  /// [groupName] The name of the Address Book.
  /// [groupType] The type of the Address Book. Valid values: `ip`, `ipv6`, `domain`, `port`, `tag`.
  /// [groupUuid] The ID of the Address Book.
  /// [id] The ID of the Address Book.
  /// [tagRelation] One or more tags for the relationship between.
  GetAddressBooksBook({
    required this.addressLists,
    required this.autoAddTagEcs,
    required this.description,
    required this.ecsTags,
    required this.groupName,
    required this.groupType,
    required this.groupUuid,
    required this.id,
    required this.tagRelation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressLists': addressLists,
      'autoAddTagEcs': autoAddTagEcs,
      'description': description,
      'ecsTags': pulumi.Input.encodeList<GetAddressBooksBookEcsTag, Map<String, dynamic>>(ecsTags, (value) => value.toMap()),
      'groupName': groupName,
      'groupType': groupType,
      'groupUuid': groupUuid,
      'id': id,
      'tagRelation': tagRelation,
    };
  }

  factory GetAddressBooksBook.fromMap(Map<String, dynamic> map) {
    return GetAddressBooksBook(
      addressLists: (map['addressLists'] as List).cast<String>(),
      autoAddTagEcs: map['autoAddTagEcs'] as int,
      description: map['description'] as String,
      ecsTags: pulumi.Input.decodeList<GetAddressBooksBookEcsTag>(map['ecsTags'], (value) => GetAddressBooksBookEcsTag.fromMap((value as Map).cast<String, dynamic>())),
      groupName: map['groupName'] as String,
      groupType: map['groupType'] as String,
      groupUuid: map['groupUuid'] as String,
      id: map['id'] as String,
      tagRelation: map['tagRelation'] as String,
    );
  }
}

