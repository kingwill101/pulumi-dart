// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../opt_in_condition/opt_in_condition.dart';
import '../opt_in_principal/opt_in_principal.dart';
import '../opt_in_resource_data/opt_in_resource_data.dart';

/// The set of arguments for OptIn.
class OptInArgs {
  /// Lake Formation condition, which applies to permissions and opt-ins that contain an expression.
  final pulumi.Input<List<OptInCondition>>? conditions;

  /// Lake Formation principal. Supported principals are IAM users or IAM roles. See Principal for more details.
  final pulumi.Input<List<OptInPrincipal>>? principals;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Structure for the resource. See Resource for more details.
  final pulumi.Input<List<OptInResourceData>>? resourceDatas;

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
      map['conditions'] = pulumi.Input.mapOptionalInputValue<
              List<OptInCondition>, List<Map<String, dynamic>>>(
          conditionsValue,
          (value) =>
              pulumi.Input.encodeList<OptInCondition, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final principalsValue = principals;
    if (principalsValue != null) {
      map['principals'] = pulumi.Input.mapOptionalInputValue<
              List<OptInPrincipal>, List<Map<String, dynamic>>>(
          principalsValue,
          (value) =>
              pulumi.Input.encodeList<OptInPrincipal, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final resourceDatasValue = resourceDatas;
    if (resourceDatasValue != null) {
      map['resourceDatas'] = pulumi.Input.mapOptionalInputValue<
              List<OptInResourceData>, List<Map<String, dynamic>>>(
          resourceDatasValue,
          (value) =>
              pulumi.Input.encodeList<OptInResourceData, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    return map;
  }

  factory OptInArgs.fromMap(Map<String, dynamic> map) {
    return OptInArgs(
      conditions:
          pulumi.Input.asOptionalInput<List<OptInCondition>>(map['conditions']),
      principals:
          pulumi.Input.asOptionalInput<List<OptInPrincipal>>(map['principals']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      resourceDatas: pulumi.Input.asOptionalInput<List<OptInResourceData>>(
          map['resourceDatas']),
    );
  }
}
