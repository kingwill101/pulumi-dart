// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dynamic_tag_group_match_express.dart';

/// Input properties used for looking up and filtering DynamicTagGroup resources.
class DynamicTagGroupState {
  /// The alert contact groups. The alert notifications of the application group are sent to the alert contacts that belong to the specified alert contact groups.
  final pulumi.Input<List<String>>? contactGroupLists;
  /// The relationship between the conditional expressions for the tag values of the cloud resources. Valid values: `and`, `or`.
  final pulumi.Input<String>? matchExpressFilterRelation;
  /// The conditional expressions used to create an application group based on the tag. See `match_express` below.
  final pulumi.Input<List<DynamicTagGroupMatchExpress>>? matchExpresses;
  /// The status of the Dynamic Tag Group.
  final pulumi.Input<String>? status;
  /// The tag keys of the cloud resources.
  final pulumi.Input<String>? tagKey;
  /// The IDs of the alert templates.
  final pulumi.Input<List<String>>? templateIdLists;

  /// Creates a new [DynamicTagGroupState].
  /// [contactGroupLists] The alert contact groups. The alert notifications of the application group are sent to the alert contacts that belong to the specified alert contact groups.
  /// [matchExpressFilterRelation] The relationship between the conditional expressions for the tag values of the cloud resources. Valid values: `and`, `or`.
  /// [matchExpresses] The conditional expressions used to create an application group based on the tag. See `match_express` below.
  /// [status] The status of the Dynamic Tag Group.
  /// [tagKey] The tag keys of the cloud resources.
  /// [templateIdLists] The IDs of the alert templates.
  DynamicTagGroupState({
    this.contactGroupLists,
    this.matchExpressFilterRelation,
    this.matchExpresses,
    this.status,
    this.tagKey,
    this.templateIdLists,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactGroupLists': ?contactGroupLists,
      'matchExpressFilterRelation': ?matchExpressFilterRelation,
      'matchExpresses': ?pulumi.Input.mapOptionalInputValue<List<DynamicTagGroupMatchExpress>, List<Map<String, dynamic>>>(matchExpresses, (value) => pulumi.Input.encodeList<DynamicTagGroupMatchExpress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': ?status,
      'tagKey': ?tagKey,
      'templateIdLists': ?templateIdLists,
    };
  }

  factory DynamicTagGroupState.fromMap(Map<String, dynamic> map) {
    return DynamicTagGroupState(
      contactGroupLists: map['contactGroupLists'] == null ? null : ((map['contactGroupLists'] as List).cast<String>()).input(),
      matchExpressFilterRelation: map['matchExpressFilterRelation'] == null ? null : (map['matchExpressFilterRelation'] as String).input(),
      matchExpresses: map['matchExpresses'] == null ? null : (pulumi.Input.decodeList<DynamicTagGroupMatchExpress>(map['matchExpresses'], (value) => DynamicTagGroupMatchExpress.fromMap((value as Map).cast<String, dynamic>()))).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tagKey: map['tagKey'] == null ? null : (map['tagKey'] as String).input(),
      templateIdLists: map['templateIdLists'] == null ? null : ((map['templateIdLists'] as List).cast<String>()).input(),
    );
  }
}

