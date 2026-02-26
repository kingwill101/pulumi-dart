// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../opt_in_condition/opt_in_condition.dart';
import '../opt_in_principal/opt_in_principal.dart';
import '../opt_in_resource_data/opt_in_resource_data.dart';

/// The set of arguments for OptIn.
class OptInArgs {
  /// Lake Formation condition, which applies to permissions and opt-ins that contain an expression.
  final Input<List<OptInCondition>>? conditions;

  /// Lake Formation principal. Supported principals are IAM users or IAM roles. See Principal for more details.
  final Input<List<OptInPrincipal>>? principals;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Structure for the resource. See Resource for more details.
  final Input<List<OptInResourceData>>? resourceDatas;

  OptInArgs({
    this.conditions,
    this.principals,
    this.region,
    this.resourceDatas,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionsValue = conditions;
    if (conditionsValue != null) {
      map['conditions'] = Input.mapOptionalInputValue<List<OptInCondition>,
              List<Map<String, dynamic>>>(
          conditionsValue,
          (value) => Input.encodeList<OptInCondition, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final principalsValue = principals;
    if (principalsValue != null) {
      map['principals'] = Input.mapOptionalInputValue<List<OptInPrincipal>,
              List<Map<String, dynamic>>>(
          principalsValue,
          (value) => Input.encodeList<OptInPrincipal, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final resourceDatasValue = resourceDatas;
    if (resourceDatasValue != null) {
      map['resourceDatas'] = Input.mapOptionalInputValue<
              List<OptInResourceData>, List<Map<String, dynamic>>>(
          resourceDatasValue,
          (value) => Input.encodeList<OptInResourceData, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    return map;
  }

  factory OptInArgs.fromMap(Map<String, dynamic> map) {
    return OptInArgs(
      conditions:
          Input.asOptionalInput<List<OptInCondition>>(map['conditions']),
      principals:
          Input.asOptionalInput<List<OptInPrincipal>>(map['principals']),
      region: Input.asOptionalInput<String>(map['region']),
      resourceDatas:
          Input.asOptionalInput<List<OptInResourceData>>(map['resourceDatas']),
    );
  }
}
