// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'opt_in_condition.dart';
import 'opt_in_principal.dart';
import 'opt_in_resource_data.dart';

/// Input properties used for looking up and filtering OptIn resources.
class OptInState {
  /// Lake Formation condition, which applies to permissions and opt-ins that contain an expression.
  final pulumi.Input<List<OptInCondition>>? conditions;
  /// Last modified date and time of the record.
  final pulumi.Input<String>? lastModified;
  final pulumi.Input<String>? lastUpdatedBy;
  /// Lake Formation principal. Supported principals are IAM users or IAM roles. See Principal for more details.
  final pulumi.Input<List<OptInPrincipal>>? principals;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Structure for the resource. See Resource for more details.
  final pulumi.Input<List<OptInResourceData>>? resourceDatas;

  /// Creates a new [OptInState].
  /// [conditions] Lake Formation condition, which applies to permissions and opt-ins that contain an expression.
  /// [lastModified] Last modified date and time of the record.
  /// [lastUpdatedBy] Optional.
  /// [principals] Lake Formation principal. Supported principals are IAM users or IAM roles. See Principal for more details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceDatas] Structure for the resource. See Resource for more details.
  OptInState({
    pulumi.Output<List<OptInCondition>>? conditions,
    pulumi.Output<String>? lastModified,
    pulumi.Output<String>? lastUpdatedBy,
    pulumi.Output<List<OptInPrincipal>>? principals,
    pulumi.Output<String>? region,
    pulumi.Output<List<OptInResourceData>>? resourceDatas,
  }) :
      conditions = pulumi.Input.asOptionalInput<List<OptInCondition>>(conditions),
      lastModified = pulumi.Input.asOptionalInput<String>(lastModified),
      lastUpdatedBy = pulumi.Input.asOptionalInput<String>(lastUpdatedBy),
      principals = pulumi.Input.asOptionalInput<List<OptInPrincipal>>(principals),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceDatas = pulumi.Input.asOptionalInput<List<OptInResourceData>>(resourceDatas);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<OptInCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<OptInCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lastModified': ?lastModified,
      'lastUpdatedBy': ?lastUpdatedBy,
      'principals': ?pulumi.Input.mapOptionalInputValue<List<OptInPrincipal>, List<Map<String, dynamic>>>(principals, (value) => pulumi.Input.encodeList<OptInPrincipal, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'resourceDatas': ?pulumi.Input.mapOptionalInputValue<List<OptInResourceData>, List<Map<String, dynamic>>>(resourceDatas, (value) => pulumi.Input.encodeList<OptInResourceData, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory OptInState.fromMap(Map<String, dynamic> map) {
    return OptInState(
      conditions: map['conditions'] == null ? null : pulumi.Output.create<List<OptInCondition>>(pulumi.Input.decodeList<OptInCondition>(map['conditions'], (value) => OptInCondition.fromMap((value as Map).cast<String, dynamic>()))),
      lastModified: map['lastModified'] == null ? null : pulumi.Output.create<String>(map['lastModified'] as String),
      lastUpdatedBy: map['lastUpdatedBy'] == null ? null : pulumi.Output.create<String>(map['lastUpdatedBy'] as String),
      principals: map['principals'] == null ? null : pulumi.Output.create<List<OptInPrincipal>>(pulumi.Input.decodeList<OptInPrincipal>(map['principals'], (value) => OptInPrincipal.fromMap((value as Map).cast<String, dynamic>()))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceDatas: map['resourceDatas'] == null ? null : pulumi.Output.create<List<OptInResourceData>>(pulumi.Input.decodeList<OptInResourceData>(map['resourceDatas'], (value) => OptInResourceData.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

