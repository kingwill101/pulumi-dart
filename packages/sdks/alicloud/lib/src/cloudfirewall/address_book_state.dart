// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_book_ecs_tag.dart';

/// Input properties used for looking up and filtering AddressBook resources.
class AddressBookState {
  /// The list of addresses.
  final pulumi.Input<List<String>>? addressLists;
  /// Whether you want to automatically add new matching tags of the ECS IP address to the Address Book. Valid values: `0`, `1`.
  final pulumi.Input<int>? autoAddTagEcs;
  /// The description of the Address Book.
  final pulumi.Input<String>? description;
  /// A list of ECS tags. See `ecs_tags` below.
  final pulumi.Input<List<AddressBookEcsTag>>? ecsTags;
  /// The name of the Address Book.
  final pulumi.Input<String>? groupName;
  /// The type of the Address Book. Valid values: `ip`, `ipv6`, `domain`, `port`, `tag`.
  /// **NOTE:** From version 1.213.1, `group_type` can be set to `ipv6`, `domain`, `port`.
  final pulumi.Input<String>? groupType;
  /// The language of the content within the request and response. Valid values: `zh`, `en`.
  final pulumi.Input<String>? lang;
  /// The logical relation among the ECS tags that to be matched. Default value: `and`. Valid values:
  final pulumi.Input<String>? tagRelation;

  /// Creates a new [AddressBookState].
  /// [addressLists] The list of addresses.
  /// [autoAddTagEcs] Whether you want to automatically add new matching tags of the ECS IP address to the Address Book. Valid values: `0`, `1`.
  /// [description] The description of the Address Book.
  /// [ecsTags] A list of ECS tags. See `ecs_tags` below.
  /// [groupName] The name of the Address Book.
  /// [groupType] The type of the Address Book. Valid values: `ip`, `ipv6`, `domain`, `port`, `tag`.
  /// [lang] The language of the content within the request and response. Valid values: `zh`, `en`.
  /// [tagRelation] The logical relation among the ECS tags that to be matched. Default value: `and`. Valid values:
  AddressBookState({
    pulumi.Output<List<String>>? addressLists,
    pulumi.Output<int>? autoAddTagEcs,
    pulumi.Output<String>? description,
    pulumi.Output<List<AddressBookEcsTag>>? ecsTags,
    pulumi.Output<String>? groupName,
    pulumi.Output<String>? groupType,
    pulumi.Output<String>? lang,
    pulumi.Output<String>? tagRelation,
  }) :
      addressLists = pulumi.Input.asOptionalInput<List<String>>(addressLists),
      autoAddTagEcs = pulumi.Input.asOptionalInput<int>(autoAddTagEcs),
      description = pulumi.Input.asOptionalInput<String>(description),
      ecsTags = pulumi.Input.asOptionalInput<List<AddressBookEcsTag>>(ecsTags),
      groupName = pulumi.Input.asOptionalInput<String>(groupName),
      groupType = pulumi.Input.asOptionalInput<String>(groupType),
      lang = pulumi.Input.asOptionalInput<String>(lang),
      tagRelation = pulumi.Input.asOptionalInput<String>(tagRelation);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressLists': ?addressLists,
      'autoAddTagEcs': ?autoAddTagEcs,
      'description': ?description,
      'ecsTags': ?pulumi.Input.mapOptionalInputValue<List<AddressBookEcsTag>, List<Map<String, dynamic>>>(ecsTags, (value) => pulumi.Input.encodeList<AddressBookEcsTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'groupName': ?groupName,
      'groupType': ?groupType,
      'lang': ?lang,
      'tagRelation': ?tagRelation,
    };
  }

  factory AddressBookState.fromMap(Map<String, dynamic> map) {
    return AddressBookState(
      addressLists: map['addressLists'] == null ? null : pulumi.Output.create<List<String>>((map['addressLists'] as List).cast<String>()),
      autoAddTagEcs: map['autoAddTagEcs'] == null ? null : pulumi.Output.create<int>(map['autoAddTagEcs'] as int),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      ecsTags: map['ecsTags'] == null ? null : pulumi.Output.create<List<AddressBookEcsTag>>(pulumi.Input.decodeList<AddressBookEcsTag>(map['ecsTags'], (value) => AddressBookEcsTag.fromMap((value as Map).cast<String, dynamic>()))),
      groupName: map['groupName'] == null ? null : pulumi.Output.create<String>(map['groupName'] as String),
      groupType: map['groupType'] == null ? null : pulumi.Output.create<String>(map['groupType'] as String),
      lang: map['lang'] == null ? null : pulumi.Output.create<String>(map['lang'] as String),
      tagRelation: map['tagRelation'] == null ? null : pulumi.Output.create<String>(map['tagRelation'] as String),
    );
  }
}

