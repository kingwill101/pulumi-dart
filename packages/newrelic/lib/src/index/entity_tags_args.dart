// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entity_tags_tag.dart';

/// {@template pulumi_index_entity_tags_entity_tags_args_doc}
/// The set of arguments for EntityTags.
/// {@endtemplate}
/// {@macro pulumi_index_entity_tags_entity_tags_args_doc}
class EntityTagsArgs {
  /// The guid of the entity to tag.
  final pulumi.Input<String> guid;
  /// A nested block that describes an entity tag. See Nested tag blocks below for details.
  final pulumi.Input<List<EntityTagsTag>> tags;

  /// Creates a new [EntityTagsArgs].
  /// [guid] The guid of the entity to tag.
  /// [tags] A nested block that describes an entity tag. See Nested tag blocks below for details.
  EntityTagsArgs({
    required String guid,
    required List<EntityTagsTag> tags,
  }) :
      guid = pulumi.Input.asInput<String>(guid),
      tags = pulumi.Input.asInput<List<EntityTagsTag>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'guid': guid,
      'tags': pulumi.Input.mapInputValue<List<EntityTagsTag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<EntityTagsTag, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EntityTagsArgs.fromMap(Map<String, dynamic> map) {
    return EntityTagsArgs(
      guid: map['guid'] as String,
      tags: pulumi.Input.decodeList<EntityTagsTag>(map['tags'], (value) => EntityTagsTag.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

