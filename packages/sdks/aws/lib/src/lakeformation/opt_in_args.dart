// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'opt_in_condition.dart';
import 'opt_in_principal.dart';
import 'opt_in_resource_data.dart';

/// {@template pulumi_lakeformation_opt_in_opt_in_args_doc}
/// The set of arguments for OptIn.
/// {@endtemplate}
/// {@macro pulumi_lakeformation_opt_in_opt_in_args_doc}
class OptInArgs {
  /// Lake Formation condition, which applies to permissions and opt-ins that contain an expression.
  final pulumi.Input<List<OptInCondition>>? conditions;
  /// Lake Formation principal. Supported principals are IAM users or IAM roles. See Principal for more details.
  final pulumi.Input<List<OptInPrincipal>>? principals;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Structure for the resource. See Resource for more details.
  final pulumi.Input<List<OptInResourceData>>? resourceDatas;

  /// Creates a new [OptInArgs].
  /// [conditions] Lake Formation condition, which applies to permissions and opt-ins that contain an expression.
  /// [principals] Lake Formation principal. Supported principals are IAM users or IAM roles. See Principal for more details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceDatas] Structure for the resource. See Resource for more details.
  OptInArgs({
    this.conditions,
    this.principals,
    this.region,
    this.resourceDatas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<OptInCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<OptInCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'principals': ?pulumi.Input.mapOptionalInputValue<List<OptInPrincipal>, List<Map<String, dynamic>>>(principals, (value) => pulumi.Input.encodeList<OptInPrincipal, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'resourceDatas': ?pulumi.Input.mapOptionalInputValue<List<OptInResourceData>, List<Map<String, dynamic>>>(resourceDatas, (value) => pulumi.Input.encodeList<OptInResourceData, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory OptInArgs.fromMap(Map<String, dynamic> map) {
    return OptInArgs(
      conditions: map['conditions'] == null ? null : (pulumi.Input.decodeList<OptInCondition>(map['conditions'], (value) => OptInCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      principals: map['principals'] == null ? null : (pulumi.Input.decodeList<OptInPrincipal>(map['principals'], (value) => OptInPrincipal.fromMap((value as Map).cast<String, dynamic>()))).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      resourceDatas: map['resourceDatas'] == null ? null : (pulumi.Input.decodeList<OptInResourceData>(map['resourceDatas'], (value) => OptInResourceData.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

