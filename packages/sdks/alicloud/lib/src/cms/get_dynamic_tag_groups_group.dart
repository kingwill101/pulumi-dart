// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dynamic_tag_groups_group_match_express.dart';

class GetDynamicTagGroupsGroup {
  /// The ID of the tag rule.
  final pulumi.Input<String> dynamicTagRuleId;

  /// The ID of the Dynamic Tag Group.
  final pulumi.Input<String> id;

  /// The relationship between conditional expressions. Valid values: `and`, `or`.
  final pulumi.Input<String> matchExpressFilterRelation;

  /// The label generates a matching expression that applies the grouping. See the following `Block match_express`.
  final pulumi.Input<List<GetDynamicTagGroupsGroupMatchExpress>> matchExpresses;

  /// The status of the resource. Valid values: `RUNNING`, `FINISH`.
  final pulumi.Input<String> status;

  /// The tag key of the tag.
  final pulumi.Input<String> tagKey;

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
      'matchExpresses':
          pulumi.Input.mapInputValue<
            List<GetDynamicTagGroupsGroupMatchExpress>,
            List<Map<String, dynamic>>
          >(
            matchExpresses,
            (value) =>
                pulumi.Input.encodeList<
                  GetDynamicTagGroupsGroupMatchExpress,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'status': status,
      'tagKey': tagKey,
    };
  }

  factory GetDynamicTagGroupsGroup.fromMap(Map<String, dynamic> map) {
    return GetDynamicTagGroupsGroup(
      dynamicTagRuleId: pulumi.Input.fromValue(
        map['dynamicTagRuleId'] as String,
      ),
      id: pulumi.Input.fromValue(map['id'] as String),
      matchExpressFilterRelation: pulumi.Input.fromValue(
        map['matchExpressFilterRelation'] as String,
      ),
      matchExpresses: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetDynamicTagGroupsGroupMatchExpress>(
          map['matchExpresses']!,
          (value) => GetDynamicTagGroupsGroupMatchExpress.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      status: pulumi.Input.fromValue(map['status'] as String),
      tagKey: pulumi.Input.fromValue(map['tagKey'] as String),
    );
  }
}
