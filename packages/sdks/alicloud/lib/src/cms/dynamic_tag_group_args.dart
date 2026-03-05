// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dynamic_tag_group_match_express.dart';

/// {@template pulumi_cms_dynamic_tag_group_dynamic_tag_group_args_doc}
/// The set of arguments for DynamicTagGroup.
/// {@endtemplate}
/// {@macro pulumi_cms_dynamic_tag_group_dynamic_tag_group_args_doc}
class DynamicTagGroupArgs {
  /// The alert contact groups. The alert notifications of the application group are sent to the alert contacts that belong to the specified alert contact groups.
  final pulumi.Input<List<String>> contactGroupLists;
  /// The relationship between the conditional expressions for the tag values of the cloud resources. Valid values: `and`, `or`.
  final pulumi.Input<String>? matchExpressFilterRelation;
  /// The conditional expressions used to create an application group based on the tag. See `match_express` below.
  final pulumi.Input<List<DynamicTagGroupMatchExpress>> matchExpresses;
  /// The tag keys of the cloud resources.
  final pulumi.Input<String> tagKey;
  /// The IDs of the alert templates.
  final pulumi.Input<List<String>>? templateIdLists;

  /// Creates a new [DynamicTagGroupArgs].
  /// [contactGroupLists] The alert contact groups. The alert notifications of the application group are sent to the alert contacts that belong to the specified alert contact groups.
  /// [matchExpressFilterRelation] The relationship between the conditional expressions for the tag values of the cloud resources. Valid values: `and`, `or`.
  /// [matchExpresses] The conditional expressions used to create an application group based on the tag. See `match_express` below.
  /// [tagKey] The tag keys of the cloud resources.
  /// [templateIdLists] The IDs of the alert templates.
  DynamicTagGroupArgs({
    required this.contactGroupLists,
    this.matchExpressFilterRelation,
    required this.matchExpresses,
    required this.tagKey,
    this.templateIdLists,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactGroupLists': contactGroupLists,
      'matchExpressFilterRelation': ?matchExpressFilterRelation,
      'matchExpresses': pulumi.Input.mapInputValue<List<DynamicTagGroupMatchExpress>, List<Map<String, dynamic>>>(matchExpresses, (value) => pulumi.Input.encodeList<DynamicTagGroupMatchExpress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tagKey': tagKey,
      'templateIdLists': ?templateIdLists,
    };
  }

  factory DynamicTagGroupArgs.fromMap(Map<String, dynamic> map) {
    return DynamicTagGroupArgs(
      contactGroupLists: pulumi.Input.fromValue((map['contactGroupLists'] as List).cast<String>()),
      matchExpressFilterRelation: (() { final guardedValue = map['matchExpressFilterRelation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      matchExpresses: pulumi.Input.fromValue(pulumi.Input.decodeList<DynamicTagGroupMatchExpress>(map['matchExpresses']!, (value) => DynamicTagGroupMatchExpress.fromMap((value as Map).cast<String, dynamic>()))),
      tagKey: pulumi.Input.fromValue(map['tagKey'] as String),
      templateIdLists: (() { final guardedValue = map['templateIdLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

