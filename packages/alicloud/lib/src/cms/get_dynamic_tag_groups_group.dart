// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dynamic_tag_groups_group_match_express.dart';

class GetDynamicTagGroupsGroup {
  /// The ID of the tag rule.
  final String dynamicTagRuleId;
  /// The ID of the Dynamic Tag Group.
  final String id;
  /// The relationship between conditional expressions. Valid values: `and`, `or`.
  final String matchExpressFilterRelation;
  /// The label generates a matching expression that applies the grouping. See the following `Block match_express`.
  final List<GetDynamicTagGroupsGroupMatchExpress> matchExpresses;
  /// The status of the resource. Valid values: `RUNNING`, `FINISH`.
  final String status;
  /// The tag key of the tag.
  final String tagKey;

  /// Creates a new [GetDynamicTagGroupsGroup].
  /// [dynamicTagRuleId] The ID of the tag rule.
  /// [id] The ID of the Dynamic Tag Group.
  /// [matchExpressFilterRelation] The relationship between conditional expressions. Valid values: `and`, `or`.
  /// [matchExpresses] The label generates a matching expression that applies the grouping. See the following `Block match_express`.
  /// [status] The status of the resource. Valid values: `RUNNING`, `FINISH`.
  /// [tagKey] The tag key of the tag.
  GetDynamicTagGroupsGroup({
    required this.dynamicTagRuleId,
    required this.id,
    required this.matchExpressFilterRelation,
    required this.matchExpresses,
    required this.status,
    required this.tagKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dynamicTagRuleId': dynamicTagRuleId,
      'id': id,
      'matchExpressFilterRelation': matchExpressFilterRelation,
      'matchExpresses': pulumi.Input.encodeList<GetDynamicTagGroupsGroupMatchExpress, Map<String, dynamic>>(matchExpresses, (value) => value.toMap()),
      'status': status,
      'tagKey': tagKey,
    };
  }

  factory GetDynamicTagGroupsGroup.fromMap(Map<String, dynamic> map) {
    return GetDynamicTagGroupsGroup(
      dynamicTagRuleId: map['dynamicTagRuleId'] as String,
      id: map['id'] as String,
      matchExpressFilterRelation: map['matchExpressFilterRelation'] as String,
      matchExpresses: pulumi.Input.decodeList<GetDynamicTagGroupsGroupMatchExpress>(map['matchExpresses'], (value) => GetDynamicTagGroupsGroupMatchExpress.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] as String,
      tagKey: map['tagKey'] as String,
    );
  }
}

