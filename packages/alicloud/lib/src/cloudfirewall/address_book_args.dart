// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_book_ecs_tag.dart';

/// {@template pulumi_cloudfirewall_address_book_address_book_args_doc}
/// The set of arguments for AddressBook.
/// {@endtemplate}
/// {@macro pulumi_cloudfirewall_address_book_address_book_args_doc}
class AddressBookArgs {
  /// The list of addresses.
  final pulumi.Input<List<String>>? addressLists;
  /// Whether you want to automatically add new matching tags of the ECS IP address to the Address Book. Valid values: `0`, `1`.
  final pulumi.Input<int>? autoAddTagEcs;
  /// The description of the Address Book.
  final pulumi.Input<String> description;
  /// A list of ECS tags. See `ecs_tags` below.
  final pulumi.Input<List<AddressBookEcsTag>>? ecsTags;
  /// The name of the Address Book.
  final pulumi.Input<String> groupName;
  /// The type of the Address Book. Valid values: `ip`, `ipv6`, `domain`, `port`, `tag`.
  /// **NOTE:** From version 1.213.1, `group_type` can be set to `ipv6`, `domain`, `port`.
  final pulumi.Input<String> groupType;
  /// The language of the content within the request and response. Valid values: `zh`, `en`.
  final pulumi.Input<String>? lang;
  /// The logical relation among the ECS tags that to be matched. Default value: `and`. Valid values:
  final pulumi.Input<String>? tagRelation;

  /// Creates a new [AddressBookArgs].
  /// [addressLists] The list of addresses.
  /// [autoAddTagEcs] Whether you want to automatically add new matching tags of the ECS IP address to the Address Book. Valid values: `0`, `1`.
  /// [description] The description of the Address Book.
  /// [ecsTags] A list of ECS tags. See `ecs_tags` below.
  /// [groupName] The name of the Address Book.
  /// [groupType] The type of the Address Book. Valid values: `ip`, `ipv6`, `domain`, `port`, `tag`.
  /// [lang] The language of the content within the request and response. Valid values: `zh`, `en`.
  /// [tagRelation] The logical relation among the ECS tags that to be matched. Default value: `and`. Valid values:
  AddressBookArgs({
    List<String>? addressLists,
    int? autoAddTagEcs,
    required String description,
    List<AddressBookEcsTag>? ecsTags,
    required String groupName,
    required String groupType,
    String? lang,
    String? tagRelation,
  }) :
      addressLists = pulumi.Input.asOptionalInput<List<String>>(addressLists),
      autoAddTagEcs = pulumi.Input.asOptionalInput<int>(autoAddTagEcs),
      description = pulumi.Input.asInput<String>(description),
      ecsTags = pulumi.Input.asOptionalInput<List<AddressBookEcsTag>>(ecsTags),
      groupName = pulumi.Input.asInput<String>(groupName),
      groupType = pulumi.Input.asInput<String>(groupType),
      lang = pulumi.Input.asOptionalInput<String>(lang),
      tagRelation = pulumi.Input.asOptionalInput<String>(tagRelation);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressLists': ?addressLists,
      'autoAddTagEcs': ?autoAddTagEcs,
      'description': description,
      'ecsTags': ?pulumi.Input.mapOptionalInputValue<List<AddressBookEcsTag>, List<Map<String, dynamic>>>(ecsTags, (value) => pulumi.Input.encodeList<AddressBookEcsTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'groupName': groupName,
      'groupType': groupType,
      'lang': ?lang,
      'tagRelation': ?tagRelation,
    };
  }

  factory AddressBookArgs.fromMap(Map<String, dynamic> map) {
    return AddressBookArgs(
      addressLists: map['addressLists'] == null ? null : (map['addressLists'] as List).cast<String>(),
      autoAddTagEcs: map['autoAddTagEcs'] == null ? null : map['autoAddTagEcs'] as int,
      description: map['description'] as String,
      ecsTags: map['ecsTags'] == null ? null : pulumi.Input.decodeList<AddressBookEcsTag>(map['ecsTags'], (value) => AddressBookEcsTag.fromMap((value as Map).cast<String, dynamic>())),
      groupName: map['groupName'] as String,
      groupType: map['groupType'] as String,
      lang: map['lang'] == null ? null : map['lang'] as String,
      tagRelation: map['tagRelation'] == null ? null : map['tagRelation'] as String,
    );
  }
}

