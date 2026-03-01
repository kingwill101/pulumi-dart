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
    pulumi.Output<List<String>>? contactGroupLists,
    pulumi.Output<String>? matchExpressFilterRelation,
    pulumi.Output<List<DynamicTagGroupMatchExpress>>? matchExpresses,
    pulumi.Output<String>? status,
    pulumi.Output<String>? tagKey,
    pulumi.Output<List<String>>? templateIdLists,
  }) :
      contactGroupLists = pulumi.Input.asOptionalInput<List<String>>(contactGroupLists),
      matchExpressFilterRelation = pulumi.Input.asOptionalInput<String>(matchExpressFilterRelation),
      matchExpresses = pulumi.Input.asOptionalInput<List<DynamicTagGroupMatchExpress>>(matchExpresses),
      status = pulumi.Input.asOptionalInput<String>(status),
      tagKey = pulumi.Input.asOptionalInput<String>(tagKey),
      templateIdLists = pulumi.Input.asOptionalInput<List<String>>(templateIdLists);

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
      contactGroupLists: map['contactGroupLists'] == null ? null : pulumi.Output.create<List<String>>((map['contactGroupLists'] as List).cast<String>()),
      matchExpressFilterRelation: map['matchExpressFilterRelation'] == null ? null : pulumi.Output.create<String>(map['matchExpressFilterRelation'] as String),
      matchExpresses: map['matchExpresses'] == null ? null : pulumi.Output.create<List<DynamicTagGroupMatchExpress>>(pulumi.Input.decodeList<DynamicTagGroupMatchExpress>(map['matchExpresses'], (value) => DynamicTagGroupMatchExpress.fromMap((value as Map).cast<String, dynamic>()))),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tagKey: map['tagKey'] == null ? null : pulumi.Output.create<String>(map['tagKey'] as String),
      templateIdLists: map['templateIdLists'] == null ? null : pulumi.Output.create<List<String>>((map['templateIdLists'] as List).cast<String>()),
    );
  }
}

